#!/usr/bin/env python

from __future__ import print_function
import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple

if sys.version_info[0] >= 3:
    from io import StringIO
else:
    from cStringIO import StringIO


forbidden_arg_types = ["void*"]

ignored_arg_types = ["RNG*"]

pass_by_val_types = ["Point*", "Point2f*", "Rect*", "String*", "double*", "float*", "int*"]

gen_template_check_self = Template("""
    ${cname} * self1 = 0;
    if (!jlopencv_${name}_getp(self, self1))
        return failmsgp("Incorrect type of self (must be '${name}' or its derivative)");
    ${pname} _self_ = ${cvt}(self1);
""")
gen_template_call_constructor_prelude = Template("""new (&(self->v)) Ptr<$cname>(); // init Ptr with placement new
        if(self) """)

gen_template_call_constructor = Template("""self->v.reset(new ${cname}${args})""")

gen_template_simple_call_constructor_prelude = Template("""if(self) """)

gen_template_simple_call_constructor = Template("""new (&(self->v)) ${cname}${args}""")

gen_template_parse_args = Template("""const char* keywords[] = { $kw_list, NULL };
    if( jlArg_ParseTupleAndKeywords(args, kw, "$fmtspec", (char**)keywords, $parse_arglist)$code_cvt )""")

gen_template_func_body = Template("""$code_decl
    $code_parse
    {
        ${code_prelude}ERRWRAP2($code_fcall);
        $code_ret;
    }
""")

gen_template_mappable = Template("""
    {
        ${mappable} _src;
        if (jlopencv_to(src, _src, info))
        {
            return cv_mappable_to(_src, dst);
        }
    }
""")

gen_template_type_decl = Template("""
// Converter (${name})

template<>
struct jlOpenCV_Converter< ${cname} >
{
    static jlObject* from(const ${cname}& r)
    {
        return jlopencv_${name}_Instance(r);
    }
    static bool to(jlObject* src, ${cname}& dst, const ArgInfo& info)
    {
        if(!src || src == jl_None)
            return true;
        ${cname} * dst_;
        if (jlopencv_${name}_getp(src, dst_))
        {
            dst = *dst_;
            return true;
        }
        ${mappable_code}
        failmsg("Expected ${cname} for argument '%s'", info.name);
        return false;
    }
};

""")

gen_template_map_type_cvt = Template("""
template <> struct IsMirroredType<$cname> : std::true_type {
};
""")

"""
    Template to add code for mapping fields in CV_EXPORTS_W_MAP classes
"""
gen_template_set_prop_from_map = Template("""
    if( jlMapping_HasKeyString(src, (char*)"$propname") )
    {
        tmp = jlMapping_GetItemString(src, (char*)"$propname");
        ok = tmp && jlopencv_to(tmp, dst.$propname, ArgInfo("$propname", false));
        jl_DECREF(tmp);
        if(!ok) return false;
    }""")

"""
    Template wrapping all classes
"""
gen_template_type_impl = Template("""
// GetSet (${name})

${getset_code}

// Methods (${name})

${methods_code}

// Tables (${name})

static jlGetSetDef jlopencv_${name}_getseters[] =
{${getset_inits}
    {NULL}  /* Sentinel */
};

static jlMethodDef jlopencv_${name}_methods[] =
{
${methods_inits}
    {NULL,          NULL}
};
""")


gen_template_get_prop = Template("""
static jlObject* jlopencv_${name}_get_${member}(jlopencv_${name}_t* p, void *closure)
{
    return jlopencv_from(p->v${access}${member});
}
""")


gen_template_get_prop_algo = Template("""
static jlObject* jlopencv_${name}_get_${member}(jlopencv_${name}_t* p, void *closure)
{
    $cname* _self_ = dynamic_cast<$cname*>(p->v.get());
    if (!_self_)
        return failmsgp("Incorrect type of object (must be '${name}' or its derivative)");
    return jlopencv_from(_self_${access}${member});
}
""")

gen_template_set_prop = Template("""
static int jlopencv_${name}_set_${member}(jlopencv_${name}_t* p, jlObject *value, void *closure)
{
    if (!value)
    {
        jlErr_SetString(jlExc_TypeError, "Cannot delete the ${member} attribute");
        return -1;
    }
    return jlopencv_to(value, p->v${access}${member}, ArgInfo("value", false)) ? 0 : -1;
}
""")

gen_template_set_prop_algo = Template("""
static int jlopencv_${name}_set_${member}(jlopencv_${name}_t* p, jlObject *value, void *closure)
{
    if (!value)
    {
        jlErr_SetString(jlExc_TypeError, "Cannot delete the ${member} attribute");
        return -1;
    }
    $cname* _self_ = dynamic_cast<$cname*>(p->v.get());
    if (!_self_)
    {
        failmsgp("Incorrect type of object (must be '${name}' or its derivative)");
        return -1;
    }
    return jlopencv_to(value, _self_${access}${member}, ArgInfo("value", false)) ? 0 : -1;
}
""")


gen_template_prop_init = Template("""
    {(char*)"${member}", (getter)jlopencv_${name}_get_${member}, NULL, (char*)"${member}", NULL},""")

gen_template_rw_prop_init = Template("""
    {(char*)"${member}", (getter)jlopencv_${name}_get_${member}, (setter)jlopencv_${name}_set_${member}, (char*)"${member}", NULL},""")

class FormatStrings:
    string = 's'
    unsigned_char = 'b'
    short_int = 'h'
    int = 'i'
    unsigned_int = 'I'
    long = 'l'
    unsigned_long = 'k'
    long_long = 'L'
    unsigned_long_long = 'K'
    size_t = 'n'
    float = 'f'
    double = 'd'
    object = 'O'

ArgTypeInfo = namedtuple('ArgTypeInfo',
                        ['atype', 'format_str', 'default_value',
                         'strict_conversion'])
# strict_conversion is False by default
ArgTypeInfo.__new__.__defaults__ = (False,)

simple_argtype_mapping = {
    "bool": ArgTypeInfo("bool", FormatStrings.unsigned_char, "0", True),
    "size_t": ArgTypeInfo("size_t", FormatStrings.unsigned_long_long, "0", True),
    "int": ArgTypeInfo("int", FormatStrings.int, "0", True),
    "float": ArgTypeInfo("float", FormatStrings.float, "0.f", True),
    "double": ArgTypeInfo("double", FormatStrings.double, "0", True),
    "c_string": ArgTypeInfo("char*", FormatStrings.string, '(char*)""')
}


def normalize_class_name(name):
    return re.sub(r"^cv\.", "", name).replace(".", "_")


def get_type_format_string(arg_type_info):
    if arg_type_info.strict_conversion:
        return FormatStrings.object
    else:
        return arg_type_info.format_str

def convert_arg_type(arg_type):
    types = arg_type.split('_')
    if len(types)==1:
        return arg_type

class ClassProp(object):
    """
    Helper class to store field information(type, name and flags) of classes and structs
    """
    def __init__(self, decl):
        self.tp = decl[0].replace("*", "_ptr")
        self.name = decl[1]
        self.readonly = True
        if "/RW" in decl[3]:
            self.readonly = False

class ClassInfo(object):
    def __init__(self, name, decl=None):
        self.cname = name.replace(".", "::")
        self.name = self.wname = normalize_class_name(name)
        self.sname = name[name.rfind('.') + 1:]
        self.ismap = False  #CV_EXPORTS_W_MAP
        self.issimple = False   #CV_EXPORTS_W_SIMPLE
        self.isalgorithm = False    #if class inherits from cv::Algorithm
        self.methods = {}
        self.props = []     #Collection of ClassProp associated with this class
        self.mappables = []
        self.consts = {}
        self.base = None    #name of base class if current class inherits another class
        self.constructor = None
        customname = False

        if decl:
            # print(decl)
            bases = decl[1].split()[1:]
            if len(bases) > 1:
                print("Note: Class %s has more than 1 base class (not supported by jlthon C extensions)" % (self.name,))
                print("      Bases: ", " ".join(bases))
                print("      Only the first base class will be used")
                #return sys.exit(-1)
            elif len(bases) == 1:
                self.base = bases[0].strip(",")
                if self.base.startswith("cv::"):
                    self.base = self.base[4:]
                if self.base == "Algorithm":
                    self.isalgorithm = True
                self.base = self.base.replace("::", "_")

            for m in decl[2]:
                if m.startswith("="):
                    self.wname = m[1:]
                    customname = True
                elif m == "/Map":
                    self.ismap = True
                elif m == "/Simple":
                    self.issimple = True
            print(decl[3])
            self.props = [ClassProp(p) for p in decl[3]]

        if not customname and self.wname.startswith("Cv"):
            self.wname = self.wname[2:]


    def gen_map_code(self, codegen):
        """
        Generate and return code for classes of map type. No methods in this class, only fields. 
        """
        all_classes = codegen.classes
        code = "static bool jlopencv_to(jlObject* src, %s& dst, const ArgInfo& info)\n{\n    jlObject* tmp;\n    bool ok;\n" % (self.cname)
        code += "".join([gen_template_set_prop_from_map.substitute(propname=p.name,proptype=p.tp) for p in self.props])
        if self.base:
            code += "\n    return jlopencv_to(src, (%s&)dst, info);\n}\n" % all_classes[self.base].cname
        else:
            code += "\n    return true;\n}\n"
        return code

    def gen_code(self, codegen):
        """
        Generate and return code for all classes
        """
        all_classes = codegen.classes
        if self.ismap:
            return self.gen_map_code(codegen)

        getset_code = StringIO()
        getset_inits = StringIO()

        sorted_props = [(p.name, p) for p in self.props]
        sorted_props.sort()

        access_op = "->"
        if self.issimple:
            access_op = "."

        for pname, p in sorted_props:

            #create getter functions
            if self.isalgorithm:
                getset_code.write(gen_template_get_prop_algo.substitute(name=self.name, cname=self.cname, member=pname, membertype=p.tp, access=access_op))
            else:
                getset_code.write(gen_template_get_prop.substitute(name=self.name, member=pname, membertype=p.tp, access=access_op))


            #create setter and init functions
            if p.readonly:
                getset_inits.write(gen_template_prop_init.substitute(name=self.name, member=pname))
            else:
                if self.isalgorithm:
                    getset_code.write(gen_template_set_prop_algo.substitute(name=self.name, cname=self.cname, member=pname, membertype=p.tp, access=access_op))
                else:
                    getset_code.write(gen_template_set_prop.substitute(name=self.name, member=pname, membertype=p.tp, access=access_op))
                getset_inits.write(gen_template_rw_prop_init.substitute(name=self.name, member=pname))

        methods_code = StringIO()
        methods_inits = StringIO()

        sorted_methods = list(self.methods.items())
        sorted_methods.sort()

        #write code for functions contained in class
        if self.constructor is not None:
            methods_code.write(self.constructor.gen_code(codegen))

        for mname, m in sorted_methods:
            methods_code.write(m.gen_code(codegen))
            methods_inits.write(m.get_tab_entry())

        code = gen_template_type_impl.substitute(name=self.name, wname=self.wname, cname=self.cname,
            getset_code=getset_code.getvalue(), getset_inits=getset_inits.getvalue(),
            methods_code=methods_code.getvalue(), methods_inits=methods_inits.getvalue())

        return code

    def gen_def(self, codegen):
        """
            Returns class declaration containing information about name, type and base class
        """
        all_classes = codegen.classes
        baseptr = "NoBase"
        if self.base and self.base in all_classes:
            baseptr = all_classes[self.base].name

        constructor_name = "0"
        if self.constructor is not None:
            constructor_name = self.constructor.get_wrapper_name()

        return "CVjl_TYPE({}, {}, {}, {}, {});\n".format(
            self.name,
            self.cname if self.issimple else "Ptr<{}>".format(self.cname),
            self.sname if self.issimple else "Ptr",
            baseptr,
            constructor_name
        )


def handle_ptr(tp):
    if tp.startswith('Ptr_'):
        tp = 'Ptr<' + "::".join(tp.split('_')[1:]) + '>'
    return tp


class ArgInfo(object):
    """
    Helper class to parse and contain information about function arguments
    """

    def __init__(self, arg_tuple):
        self.tp = handle_ptr(arg_tuple[0])
        self.name = arg_tuple[1]
        self.defval = arg_tuple[2]
        self.isarray = False
        self.arraylen = 0
        self.arraycvt = None
        self.inputarg = True
        self.outputarg = False
        self.returnarg = False
        for m in arg_tuple[3]:
            if m == "/O":
                self.inputarg = False
                self.outputarg = True
                self.returnarg = True
            elif m == "/IO":
                self.inputarg = True
                self.outputarg = True
                self.returnarg = True
            elif m.startswith("/A"):
                self.isarray = True
                self.arraylen = m[2:].strip()
            elif m.startswith("/CA"):
                self.isarray = True
                self.arraycvt = m[2:].strip()
        self.jl_inputarg = False
        self.jl_outputarg = False

    def isbig(self):
        return self.tp in ["Mat", "vector_Mat", "cuda::GpuMat", "GpuMat", "vector_GpuMat", "UMat", "vector_UMat"] # or self.tp.startswith("vector")

    def crepr(self):
        return "ArgInfo(\"%s\", %d)" % (self.name, self.outputarg)



class FuncVariant(object):
    """
    Helper class to parse and contain information about different overloaded versions of same function
    """
    def __init__(self, classname, name, decl, isconstructor, isphantom=False):
        self.classname = classname
        self.name = self.wname = name
        self.isconstructor = isconstructor
        self.isphantom = isphantom

        self.docstring = decl[5]

        self.rettype = decl[4] or handle_ptr(decl[1])
        if self.rettype == "void":
            self.rettype = ""
        self.args = []
        self.array_counters = {}
        # if name=="convert":
        #     print(decl[3])
        #     assert(0)
        for a in decl[3]:
            ainfo = ArgInfo(a)
            if ainfo.isarray and not ainfo.arraycvt:
                c = ainfo.arraylen
                c_arrlist = self.array_counters.get(c, [])
                if c_arrlist:
                    c_arrlist.append(ainfo.name)
                else:
                    self.array_counters[c] = [ainfo.name]
            self.args.append(ainfo)
        self.init_jlproto()

    def init_jlproto(self):
        # string representation of argument list, with '[', ']' symbols denoting optional arguments, e.g.
        # "src1, src2[, dst[, mask]]" for cv.add
        argstr = ""

        # list of all input arguments of the jlthon function, with the argument numbers:
        #    [("src1", 0), ("src2", 1), ("dst", 2), ("mask", 3)]
        # we keep an argument number to find the respective argument quickly, because
        # some of the arguments of C function may not present in the jlthon function (such as array counters)
        # or even go in a different order ("heavy" output parameters of the C function
        # become the first optional input parameters of the jlthon function, and thus they are placed right after
        # non-optional input parameters)
        arglist = []

        # the list of "heavy" output parameters. Heavy parameters are the parameters
        # that can be expensive to allocate each time, such as vectors and matrices (see isbig).
        outarr_list = []

        # the list of output parameters. Also includes input/output parameters.
        outlist = []

        firstoptarg = 1000000
        argno = -1
        for a in self.args:
            argno += 1
            if a.name in self.array_counters:
                continue
            assert not a.tp in forbidden_arg_types, 'Forbidden type "{}" for argument "{}" in "{}" ("{}")'.format(a.tp, a.name, self.name, self.classname)
            if a.tp in ignored_arg_types:
                continue
            if a.returnarg:
                outlist.append((a.name, argno))
            if (not a.inputarg) and a.isbig():
                outarr_list.append((a.name, argno))
                continue
            if not a.inputarg:
                continue
            if not a.defval:
                arglist.append((a.name, argno))
            else:
                firstoptarg = min(firstoptarg, len(arglist))
                # if there are some array output parameters before the first default parameter, they
                # are added as optional parameters before the first optional parameter
                if outarr_list:
                    arglist += outarr_list
                    outarr_list = []
                arglist.append((a.name, argno))

        if outarr_list:
            firstoptarg = min(firstoptarg, len(arglist))
            arglist += outarr_list
        firstoptarg = min(firstoptarg, len(arglist))

        noptargs = len(arglist) - firstoptarg
        argnamelist = [aname for aname, argno in arglist]
        argstr = ", ".join(argnamelist[:firstoptarg])
        if noptargs != 0:
            argstr = argstr + "; " +", ".join(argnamelist[firstoptarg:])
        if self.rettype:
            outlist = [("retval", -1)] + outlist
        elif self.isconstructor:
            assert outlist == []
            outlist = [("self", -1)]
        if self.isconstructor:
            classname = self.classname
            if classname.startswith("Cv"):
                classname=classname[2:]
            outstr = "<%s object>" % (classname,)
        elif outlist:
            outstr = ", ".join([o[0] for o in outlist])
        else:
            outstr = "None"

        self.jl_arg_str = argstr
        self.jl_return_str = outstr
        self.jl_prototype = "%s(%s) -> %s" % (self.wname, argstr, outstr)
        self.jl_noptargs = noptargs
        self.jl_arglist = arglist
        for aname, argno in arglist:
            self.args[argno].jl_inputarg = True
        for aname, argno in outlist:
            if argno >= 0:
                self.args[argno].jl_outputarg = True
        self.jl_outlist = outlist


class FuncInfo(object):
    def __init__(self, classname, name, cname, isconstructor, namespace, is_static):
        self.classname = classname
        self.name = name
        self.cname = cname
        self.isconstructor = isconstructor
        self.namespace = namespace
        self.is_static = is_static
        self.variants = []

    def add_variant(self, decl, isphantom=False):
        self.variants.append(FuncVariant(self.classname, self.name, decl, self.isconstructor, isphantom))

    def get_wrapper_name(self):
        """
        Return wrapping function name
        """
        name = self.name
        if self.classname:
            classname = self.classname + "_"
            if "[" in name:
                name = "getelem"
        else:
            classname = ""

        if self.is_static:
            name += "_static"

        return "jlopencv_" + self.namespace.replace('.','_') + '_' + classname + name

    def get_wrapper_prototype(self, codegen):
        """
        Return function prototype
        """
        full_fname = self.get_wrapper_name()
        if self.isconstructor:
            return "static int {fn_name}(jlopencv_{type_name}_t* self, jlObject* args, jlObject* kw)".format(
                    fn_name=full_fname, type_name=codegen.classes[self.classname].name)

        if self.classname: #Method belongs to class
            self_arg = "self"
        else:   #Global method
            self_arg = ""
        return "static jlObject* %s(jlObject* %s, jlObject* args, jlObject* kw)" % (full_fname, self_arg)

    def get_tab_entry(self):
        """
        Returns JSON entry with function prototype and docstrings
        """
        prototype_list = []
        docstring_list = []

        have_empty_constructor = False
        for v in self.variants:
            s = v.jl_prototype
            if (not v.jl_arglist) and self.isconstructor:
                have_empty_constructor = True
            if s not in prototype_list:
                prototype_list.append(s)
                docstring_list.append(v.docstring)

        print(prototype_list)
# No we don't
        # # if there are just 2 constructors: default one and some other,
        # # we simplify the notation.
        # # Instead of ClassName(args ...) -> object or ClassName() -> object
        # # we write ClassName([args ...]) -> object
        # if have_empty_constructor and len(self.variants) == 2:
        #     idx = self.variants[1].jl_arglist != []
        #     s = self.variants[idx].jl_prototype
        #     p1 = s.find("(")
        #     p2 = s.rfind(")")
        #     prototype_list = [s[:p1+1] + "[" + s[p1+1:p2] + "]" + s[p2:]]

        # The final docstring will be: Each prototype, followed by
        # their relevant doxygen comment
        full_docstring = ""
        for prototype, body in zip(prototype_list, docstring_list):
            full_docstring += Template("$prototype\n$docstring\n\n\n\n").substitute(
                prototype=prototype,
                docstring='\n'.join(
                    ['.   ' + line
                     for line in body.split('\n')]
                )
            )

        # Escape backslashes, newlines, and double quotes
        full_docstring = full_docstring.strip().replace("\\", "\\\\").replace('\n', '\\n').replace("\"", "\\\"")
        # Convert unicode chars to xml representation, but keep as string instead of bytes
        full_docstring = full_docstring.encode('ascii', errors='xmlcharrefreplace').decode()

        return Template('    {"$jl_funcname", CV_jl_FN_WITH_KW_($wrap_funcname, $flags), "$jl_docstring"},\n'
                        ).substitute(jl_funcname = self.variants[0].wname, wrap_funcname=self.get_wrapper_name(),
                                     flags = 'METH_STATIC' if self.is_static else '0', jl_docstring = full_docstring)

    def gen_code(self, codegen):
        """
        Returns wrapping code for wrapping functions along with all varients
        """
        all_classes = codegen.classes
        proto = self.get_wrapper_prototype(codegen)
        code = "%s\n{\n" % (proto,)
        code += "    using namespace %s;\n\n" % self.namespace.replace('.', '::')

        selfinfo = None
        ismethod = self.classname != "" and not self.isconstructor
        # full name is needed for error diagnostic in jlArg_ParseTupleAndKeywords
        fullname = self.name

        if self.classname:
            selfinfo = all_classes[self.classname]
            if not self.isconstructor:
                if not self.is_static:
                    code += gen_template_check_self.substitute(
                        name=selfinfo.name,
                        cname=selfinfo.cname if selfinfo.issimple else "Ptr<{}>".format(selfinfo.cname),
                        pname=(selfinfo.cname + '*') if selfinfo.issimple else "Ptr<{}>".format(selfinfo.cname),
                        cvt='' if selfinfo.issimple else '*'
                    )
                fullname = selfinfo.wname + "." + fullname

        all_code_variants = []

        for v in self.variants:
            code_decl = ""
            code_ret = ""
            code_cvt_list = []

            code_args = "("
            all_cargs = []

            if v.isphantom and ismethod and not self.is_static:
                code_args += "_self_"

            # declare all the C function arguments,
            # add necessary conversions from jlthon objects to code_cvt_list,
            # form the function/method call,
            # for the list of type mappings
            for a in v.args:
                if a.tp in ignored_arg_types:
                    defval = a.defval
                    if not defval and a.tp.endswith("*"):
                        defval = "0"
                    assert defval
                    if not code_args.endswith("("):
                        code_args += ", "
                    code_args += defval
                    all_cargs.append([[None, ""], ""])
                    continue
                tp1 = tp = a.tp
                amp = ""
                defval0 = ""
                if tp in pass_by_val_types:
                    tp = tp1 = tp[:-1]
                    amp = "&"
                    if tp.endswith("*"):
                        defval0 = "0"
                        tp1 = tp.replace("*", "_ptr")
                tp_candidates = [a.tp, normalize_class_name(self.namespace + "." + a.tp)]
                if any(tp in codegen.enums.keys() for tp in tp_candidates):
                    defval0 = "static_cast<%s>(%d)" % (a.tp, 0)

                arg_type_info = simple_argtype_mapping.get(tp, ArgTypeInfo(tp, FormatStrings.object, defval0, True))
                parse_name = a.name
                if a.jl_inputarg:
                    if arg_type_info.strict_conversion:
                        code_decl += "    jlObject* jlobj_%s = NULL;\n" % (a.name,)
                        parse_name = "jlobj_" + a.name
                        if a.tp == 'char':
                            code_cvt_list.append("convert_to_char(jlobj_%s, &%s, %s)" % (a.name, a.name, a.crepr()))
                        else:
                            code_cvt_list.append("jlopencv_to(jlobj_%s, %s, %s)" % (a.name, a.name, a.crepr()))

                all_cargs.append([arg_type_info, parse_name])

                defval = a.defval
                if not defval:
                    defval = arg_type_info.default_value
                else:
                    if "UMat" in tp:
                        if "Mat" in defval and "UMat" not in defval:
                            defval = defval.replace("Mat", "UMat")
                    if "cuda::GpuMat" in tp:
                        if "Mat" in defval and "GpuMat" not in defval:
                            defval = defval.replace("Mat", "cuda::GpuMat")
                # "tp arg = tp();" is equivalent to "tp arg;" in the case of complex types
                if defval == tp + "()" and arg_type_info.format_str == FormatStrings.object:
                    defval = ""
                if a.outputarg and not a.inputarg:
                    defval = ""
                if defval:
                    code_decl += "    %s %s=%s;\n" % (arg_type_info.atype, a.name, defval)
                else:
                    code_decl += "    %s %s;\n" % (arg_type_info.atype, a.name)

                if not code_args.endswith("("):
                    code_args += ", "
                code_args += amp + a.name

            code_args += ")"

            if self.isconstructor:
                if selfinfo.issimple:
                    templ_prelude = gen_template_simple_call_constructor_prelude
                    templ = gen_template_simple_call_constructor
                else:
                    templ_prelude = gen_template_call_constructor_prelude
                    templ = gen_template_call_constructor

                code_prelude = templ_prelude.substitute(name=selfinfo.name, cname=selfinfo.cname)
                code_fcall = templ.substitute(name=selfinfo.name, cname=selfinfo.cname, args=code_args)
                if v.isphantom:
                    code_fcall = code_fcall.replace("new " + selfinfo.cname, self.cname.replace("::", "_"))
            else:
                code_prelude = ""
                code_fcall = ""
                if v.rettype:
                    code_decl += "    " + v.rettype + " retval;\n"
                    code_fcall += "retval = "
                if not v.isphantom and ismethod and not self.is_static:
                    code_fcall += "_self_->" + self.cname
                else:
                    code_fcall += self.cname
                code_fcall += code_args

            if code_cvt_list:
                code_cvt_list = [""] + code_cvt_list

            # add info about return value, if any, to all_cargs. if there non-void return value,
            # it is encoded in v.jl_outlist as ("retval", -1) pair.
            # As [-1] in jlthon accesses the last element of a list, we automatically handle the return value by
            # adding the necessary info to the end of all_cargs list.
            if v.rettype:
                tp = v.rettype
                tp1 = tp.replace("*", "_ptr")
                default_info = ArgTypeInfo(tp, FormatStrings.object, "0")
                arg_type_info = simple_argtype_mapping.get(tp, default_info)
                all_cargs.append(arg_type_info)

            if v.args and v.jl_arglist:
                # form the format spec for jlArg_ParseTupleAndKeywords
                fmtspec = "".join([
                    get_type_format_string(all_cargs[argno][0])
                    for aname, argno in v.jl_arglist
                ])
                if v.jl_noptargs > 0:
                    fmtspec = fmtspec[:-v.jl_noptargs] + "|" + fmtspec[-v.jl_noptargs:]
                fmtspec += ":" + fullname

                # form the argument parse code that:
                #   - declares the list of keyword parameters
                #   - calls jlArg_ParseTupleAndKeywords
                #   - converts complex arguments from jlObject's to native OpenCV types
                code_parse = gen_template_parse_args.substitute(
                    kw_list = ", ".join(['"' + aname + '"' for aname, argno in v.jl_arglist]),
                    fmtspec = fmtspec,
                    parse_arglist = ", ".join(["&" + all_cargs[argno][1] for aname, argno in v.jl_arglist]),
                    code_cvt = " &&\n        ".join(code_cvt_list))
            else:
                code_parse = "if(jlObject_Size(args) == 0 && (!kw || jlObject_Size(kw) == 0))"

            if len(v.jl_outlist) == 0:
                code_ret = "jl_RETURN_NONE"
            elif len(v.jl_outlist) == 1:
                if self.isconstructor:
                    code_ret = "return 0"
                else:
                    aname, argno = v.jl_outlist[0]
                    code_ret = "return jlopencv_from(%s)" % (aname,)
            else:
                # there is more than 1 return parameter; form the tuple out of them
                fmtspec = "N"*len(v.jl_outlist)
                code_ret = "return jl_BuildValue(\"(%s)\", %s)" % \
                    (fmtspec, ", ".join(["jlopencv_from(" + aname + ")" for aname, argno in v.jl_outlist]))

            all_code_variants.append(gen_template_func_body.substitute(code_decl=code_decl,
                code_parse=code_parse, code_prelude=code_prelude, code_fcall=code_fcall, code_ret=code_ret))

        if len(all_code_variants)==1:
            # if the function/method has only 1 signature, then just put it
            code += all_code_variants[0]
        else:
            # try to execute each signature
            code += "    jlErr_Clear();\n\n".join(["    {\n" + v + "    }\n" for v in all_code_variants])

        def_ret = "NULL"
        if self.isconstructor:
            def_ret = "-1"
        code += "\n    return %s;\n}\n\n" % def_ret

        cname = self.cname
        classinfo = None
        #dump = False
        #if dump: pprint(vars(self))
        #if dump: pprint(vars(self.variants[0]))
        if self.classname:
            classinfo = all_classes[self.classname]
            #if dump: pprint(vars(classinfo))
            if self.isconstructor:
                jl_name = 'cv.' + classinfo.wname
            elif self.is_static:
                jl_name = '.'.join([self.namespace, classinfo.sname + '_' + self.variants[0].wname])
            else:
                cname = classinfo.cname + '::' + cname
                jl_name = 'cv.' + classinfo.wname + '.' + self.variants[0].wname
        else:
            jl_name = '.'.join([self.namespace, self.variants[0].wname])
        #if dump: print(cname + " => " + jl_name)
        jl_signatures = codegen.jl_signatures.setdefault(cname, [])
        for v in self.variants:
            s = dict(name=jl_name, arg=v.jl_arg_str, ret=v.jl_return_str)
            for old in jl_signatures:
                if s == old:
                    break
            else:
                jl_signatures.append(s)

        return code


class Namespace(object):
    def __init__(self):
        self.funcs = {}
        self.consts = {}


class jlthonWrapperGenerator(object):
    def __init__(self):
        self.clear()

    def clear(self):
        self.classes = {}   #Dictionary of class names : ClassInfo objects
        self.namespaces = {}
        self.consts = {}
        self.enums = {}
        self.code_include = StringIO()
        self.code_enums = StringIO()
        self.code_types = StringIO()
        self.code_funcs = StringIO()
        self.code_ns_reg = StringIO()
        self.code_ns_init = StringIO()
        self.code_type_publish = StringIO()
        self.jl_signatures = dict()
        self.class_idx = 0  #Total number of classes

    def add_class(self, stype, name, decl):
        """
        Creates class based on name and declaration. Add it to list of classes and to JSON file
        """
        classinfo = ClassInfo(name, decl)
        classinfo.decl_idx = self.class_idx
        self.class_idx += 1

        if classinfo.name in self.classes:
            print("Generator error: class %s (cname=%s) already exists" \
                % (classinfo.name, classinfo.cname))
            sys.exit(-1)
        self.classes[classinfo.name] = classinfo

        # Add Class to json file.
        namespace, classes, name = self.split_decl_name(name)
        namespace = '.'.join(namespace)
        name = '_'.join(classes+[name])

        jl_name = 'cv.' + classinfo.wname  # use wrapper name
        jl_signatures = self.jl_signatures.setdefault(classinfo.cname, [])
        jl_signatures.append(dict(name=jl_name))
        #print('class: ' + classinfo.cname + " => " + jl_name)

    def split_decl_name(self, name):
        chunks = name.split('.')
        namespace = chunks[:-1]
        classes = []
        while namespace and '.'.join(namespace) not in self.parser.namespaces:
            classes.insert(0, namespace.pop())
        return namespace, classes, chunks[-1]


    def add_const(self, name, decl):
        cname = name.replace('.','::')
        namespace, classes, name = self.split_decl_name(name)
        namespace = '.'.join(namespace)
        name = '_'.join(classes+[name])
        ns = self.namespaces.setdefault(namespace, Namespace())
        if name in ns.consts:
            print("Generator error: constant %s (cname=%s) already exists" \
                % (name, cname))
            sys.exit(-1)
        ns.consts[name] = cname

        value = decl[1]
        jl_name = '.'.join([namespace, name])
        jl_signatures = self.jl_signatures.setdefault(cname, [])
        jl_signatures.append(dict(name=jl_name, value=value))
        #print(cname + ' => ' + str(jl_name) + ' (value=' + value + ')')

    def add_enum(self, name, decl):
        wname = normalize_class_name(name)
        if wname.endswith("<unnamed>"):
            wname = None
        else:
            self.enums[wname] = name
        const_decls = decl[3]

        for decl in const_decls:
            name = decl[0]
            self.add_const(name.replace("const ", "").strip(), decl)

    def add_func(self, decl):
        """
        Creates functions based on declaration and add to appropriate classes and/or namespaces
        """
        namespace, classes, barename = self.split_decl_name(decl[0])
        cname = "::".join(namespace+classes+[barename])
        name = barename
        classname = ''
        bareclassname = ''
        if classes:
            classname = normalize_class_name('.'.join(namespace+classes))
            bareclassname = classes[-1]
        namespace = '.'.join(namespace)

        isconstructor = name == bareclassname
        is_static = False
        isphantom = False
        mappable = None
        for m in decl[2]:
            if m == "/S":
                is_static = True
            elif m == "/phantom":
                isphantom = True
                cname = cname.replace("::", "_")
            elif m.startswith("="):
                name = m[1:]
            elif m.startswith("/mappable="):
                mappable = m[10:]
                self.classes[classname].mappables.append(mappable)
                return

        if isconstructor:
            name = "_".join(classes[:-1]+[name])

        if is_static:
            # Add it as a method to the class
            func_map = self.classes[classname].methods
            func = func_map.setdefault(name, FuncInfo(classname, name, cname, isconstructor, namespace, is_static))
            func.add_variant(decl, isphantom)

            # Add it as global function
            g_name = "_".join(classes+[name])
            func_map = self.namespaces.setdefault(namespace, Namespace()).funcs
            func = func_map.setdefault(g_name, FuncInfo("", g_name, cname, isconstructor, namespace, False))
            func.add_variant(decl, isphantom)
        else:
            if classname and not isconstructor:
                if not isphantom:
                    cname = barename
                func_map = self.classes[classname].methods
            else:
                func_map = self.namespaces.setdefault(namespace, Namespace()).funcs

            func = func_map.setdefault(name, FuncInfo(classname, name, cname, isconstructor, namespace, is_static))
            func.add_variant(decl, isphantom)

        if classname and isconstructor:
            self.classes[classname].constructor = func


    def gen_namespace(self, ns_name):
        """
        Adds code to code_ns_reg for namespace with given name
        """
        ns = self.namespaces[ns_name]
        wname = normalize_class_name(ns_name)

        self.code_ns_reg.write('static jlMethodDef methods_%s[] = {\n'%wname)
        for name, func in sorted(ns.funcs.items()):
            if func.isconstructor:
                continue
            self.code_ns_reg.write(func.get_tab_entry())
        self.code_ns_reg.write('    {NULL, NULL}\n};\n\n')

        self.code_ns_reg.write('JLCXX_MODULE %s(jlcxx::Module &mod) {\n'%wname)

        for name, cname in sorted(ns.consts.items()):
            self.code_ns_reg.write('    mod.set_const("%s", %s);\n'%(name, cname))
            compat_name = re.sub(r"([a-z])([A-Z])", r"\1_\2", name).upper()
            if name != compat_name:
                self.code_ns_reg.write('    mod.set_const("%s", %s);\n'%(compat_name, cname))

        for name, func in sorted(ns.funcs.items()):
                if func.isconstructor:
                    continue
                self.code_ns_reg.write('    mod.method("%s_", %s);\n'%(compat_name, cname))

        
        self.code_ns_reg.write('    }\n\n')

    def gen_enum_reg(self, enum_name):
        name_seg = enum_name.split(".")
        is_enum_class = False
        if len(name_seg) >= 2 and name_seg[-1] == name_seg[-2]:
            enum_name = ".".join(name_seg[:-1])
            is_enum_class = True

        wname = normalize_class_name(enum_name)
        cname = enum_name.replace(".", "::")

        code = ""
        if re.sub(r"^cv\.", "", enum_name) != wname:
            code += "typedef {0} {1};\n".format(cname, wname)

        code += 'types.add_bits<{1}>("{0}", jlcxx::julia_type("CppEnum"));;\n\n'.format(wname, cname)
        self.code_enums.write(code)

    def save(self, path, name, buf):
        """
        Helper function to save generated code
        """
        with open(path + "/" + name, "wt") as f:
            f.write(buf.getvalue())

    def save_json(self, path, name, value):
        import json
        with open(path + "/" + name, "wt") as f:
            json.dump(value, f)

    def gen(self, srcfiles, output_path):
        self.clear()
        self.parser = hdr_parser.CppHeaderParser(generate_umat_decls=True, generate_gpumat_decls=True)
        count = 0
        # step 1: scan the headers and build more descriptive maps of classes, consts, functions
        for hdr in srcfiles:
            decls = self.parser.parse(hdr)
            count += len(decls)
            if len(decls) == 0:
                continue
            if hdr.find('opencv2/') >= 0: #Avoid including the shadow files
                self.code_include.write( '#include "{0}"\n'.format(hdr[hdr.rindex('opencv2/'):]) )
            for decl in decls:
                name = decl[0]
                if name.startswith("struct") or name.startswith("class"):
                    # class/struct
                    p = name.find(" ")
                    stype = name[:p]
                    name = name[p+1:].strip()
                    self.add_class(stype, name, decl)
                elif name.startswith("const"):
                    # constant
                    self.add_const(name.replace("const ", "").strip(), decl)
                elif name.startswith("enum"):
                    # enum
                    self.add_enum(name.rsplit(" ", 1)[1], decl)
                else:
                    # function
                    self.add_func(decl)
        # step 1.5 check if all base classes exist
        for name, classinfo in self.classes.items():
            if classinfo.base:
                chunks = classinfo.base.split('_')
                base = '_'.join(chunks)
                while base not in self.classes and len(chunks)>1:
                    del chunks[-2]
                    base = '_'.join(chunks)
                if base not in self.classes:
                    print("Generator error: unable to resolve base %s for %s"
                        % (classinfo.base, classinfo.name))
                    sys.exit(-1)
                base_instance = self.classes[base]
                classinfo.base = base
                classinfo.isalgorithm |= base_instance.isalgorithm  # wrong processing of 'isalgorithm' flag:
                                                                    # doesn't work for trees(graphs) with depth > 2
                self.classes[name] = classinfo

        # tree-based propagation of 'isalgorithm'
        processed = dict()
        def process_isalgorithm(classinfo):
            if classinfo.isalgorithm or classinfo in processed:
                return classinfo.isalgorithm
            res = False
            if classinfo.base:
                res = process_isalgorithm(self.classes[classinfo.base])
                #assert not (res == True or classinfo.isalgorithm is False), "Internal error: " + classinfo.name + " => " + classinfo.base
                classinfo.isalgorithm |= res
                res = classinfo.isalgorithm
            processed[classinfo] = True
            return res
        for name, classinfo in self.classes.items():
            process_isalgorithm(classinfo)

        # step 2: generate code for the classes and their methods
        classlist = list(self.classes.items())
        classlist.sort()
        for name, classinfo in classlist:
            self.code_types.write("//{}\n".format(80*"="))
            self.code_types.write("// {} ({})\n".format(name, 'Map' if classinfo.ismap else 'Generic'))
            self.code_types.write("//{}\n".format(80*"="))
            self.code_types.write(classinfo.gen_code(self))
            if classinfo.ismap:
                self.code_types.write(gen_template_map_type_cvt.substitute(name=classinfo.name, cname=classinfo.cname))
            else:
                mappable_code = "\n".join([
                                      gen_template_mappable.substitute(cname=classinfo.cname, mappable=mappable)
                                          for mappable in classinfo.mappables])
                code = gen_template_type_decl.substitute(
                    name=classinfo.name,
                    cname=classinfo.cname if classinfo.issimple else "Ptr<{}>".format(classinfo.cname),
                    mappable_code=mappable_code
                )
                self.code_types.write(code)

        # register classes in the same order as they have been declared.
        # this way, base classes will be registered in jlthon before their derivatives.
        classlist1 = [(classinfo.decl_idx, name, classinfo) for name, classinfo in classlist]
        classlist1.sort()

        for decl_idx, name, classinfo in classlist1:
            if classinfo.ismap:
                continue
            self.code_type_publish.write(classinfo.gen_def(self))


        # step 3: generate the code for all the global functions
        for ns_name, ns in sorted(self.namespaces.items()):
            if ns_name.split('.')[0] != 'cv':
                continue
            for name, func in sorted(ns.funcs.items()):
                if func.isconstructor:
                    continue
                code = func.gen_code(self)
                self.code_funcs.write(code)
            self.gen_namespace(ns_name)
            self.code_ns_init.write('CVjl_MODULE("{}", {});\n'.format(ns_name[2:], normalize_class_name(ns_name)))

        # step 4: generate the code for enum types
        enumlist = list(self.enums.values())
        enumlist.sort()
        for name in enumlist:
            self.gen_enum_reg(name)

        # step 5: generate the code for constants
        # But empty actually and function doens't even exist
        constlist = list(self.consts.items())
        constlist.sort()
        for name, constinfo in constlist:
            self.gen_const_reg(constinfo)

        # That's it. Now save all the files
        self.save(output_path, "jlopencv_generated_include.h", self.code_include)
        self.save(output_path, "jlopencv_generated_funcs.h", self.code_funcs)
        self.save(output_path, "jlopencv_generated_enums.h", self.code_enums)
        self.save(output_path, "jlopencv_generated_types.h", self.code_type_publish)
        self.save(output_path, "jlopencv_generated_types_content.h", self.code_types)
        self.save(output_path, "jlopencv_generated_modules.h", self.code_ns_init)
        self.save(output_path, "jlopencv_generated_modules_content.h", self.code_ns_reg)
        self.save_json(output_path, "jlopencv_signatures.json", self.jl_signatures)

if __name__ == "__main__":
    srcfiles = hdr_parser.opencv_hdr_list
    dstdir = "test/"
    if len(sys.argv) > 1:
        dstdir = sys.argv[1]
    if len(sys.argv) > 2:
        with open(sys.argv[2], 'r') as f:
            srcfiles = [l.strip() for l in f.readlines()]
    generator = jlthonWrapperGenerator()
    generator.gen(srcfiles, dstdir)
