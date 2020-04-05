
#!/usr/bin/env python3

import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple

from io import StringIO


forbidden_arg_types = ["void*"]

ignored_arg_types = ["RNG*"]

pass_by_val_types = ["Point*", "Point2f*", "Rect*", "String*", "double*", "float*", "int*"]

def normalize_class_name(name):
    return re.sub(r"^cv\.", "", name).replace(".", "_")


def handle_cpp_arg(inp):
    def handle_vector(match):
        return handle_cpp_arg("%svector<%s>" % (match.group(1), match.group(2)))
    def handle_ptr(match):
        return handle_cpp_arg("%sPtr<%s>" % (match.group(1), match.group(2)))
    inp = re.sub("(.*)vector_(.*)", handle_vector, inp)
    inp = re.sub("(.*)Ptr_(.*)", handle_ptr, inp)
    return inp


namespaces = {}
enums = {}
classes = {}
functions = {}


class ClassProp(object):
    """
    Helper class to store field information(type, name and flags) of classes and structs
    """
    def __init__(self, decl):
        self.tp = decl[0].replace("*", "_ptr")
        self.ctp = decl[0]
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
        self.issimple = False   #CV_EXPORTS_W_SIMPLE #Probably not needed
        self.isalgorithm = False    #if class inherits from cv::Algorithm
        self.methods = {}   #Dictionary of methods
        self.props = []     #Collection of ClassProp associated with this class
        self.mappables = [] 
        self.consts = {}    #Dictionary of constants
        self.base = None    #name of base class if current class inherits another class
        self.constructors = []  #Array of constructors for this class
        self.customname = False
        self.add_decl(decl)
        classes[name] = self
        # print(name)
        # input()

    def add_decl(self, decl):
        if decl:
            # print(decl)
            bases = decl[1].split(',')
            if len(bases[0].split()) > 1:    
                bases[0] = bases[0].split()[1]
                
                bases = [x.replace(' ','') for x in bases]
                # print(bases)
                if len(bases) > 1:
                    print("More than one base", bases)
                    bases = list(set(bases))
                    bases.remove('cv::class')
                    bases.remove('cv::Feature2D')
                    # print(bases)
                    # input()
                    # assert(0)
                    #return sys.exit(-1)
                if len(bases) >= 1:
                    # assert(0)

                    self.base = bases[0]
                    # print(self.base)
                    # input()
                    if self.base == "cv::Algorithm":
                        self.isalgorithm = True
                    self.base = self.base.replace("::", ".")

            for m in decl[2]:
                if m.startswith("="):
                    self.wname = m[1:]
                    self.customname = True
                elif m == "/Map":
                    self.ismap = True
                elif m == "/Simple":
                    self.issimple = True
            self.props = [ClassProp(p) for p in decl[3]]

        if not self.customname and self.wname.startswith("Cv"):
            self.wname = self.wname[2:]

    def get_cpp_code(self):
        if self.ismap:
            return 'mod.map_type<%s>("%s");'%(self.cname, self.wname)
        cpp_code = StringIO()
        if not self.base:
            cpp_code.write('mod.add_type<%s>("%s")' % (self.cname, self.wname))
        else:
            cpp_code.write('mod.add_type<%s>("%s", jlcxx::julia_base_type<%s>())' % (self.cname, self.wname, self.base.replace('.', '::')))

        for constuctor in self.constructors:
            cpp_code.write('\n.constructor<%s>()' %constuctor.get_argument_cons())
        
        #add get/set
        cpp_code.write('\n')
        cpp_code.write(self.get_setters())
        cpp_code.write('\n')
        cpp_code.write(self.get_getters())
        cpp_code.write(';')
        return cpp_code.getvalue()

        # return code for functions and setters and getters if simple class or functions and map type

    def get_jl_code(self):
        return self.overload_get()+self.overload_set()

    def get_prop_func_cpp(self, mode, propname):
        return "jlopencv_" + self.wname + "_"+mode+"_"+propname

    def get_getters(self):
        stra = ""
        for prop in self.props:
            if not self.isalgorithm:
                stra = stra + '\n.method("%s", [](const %s &cobj) {return cobj.%s;})' % (self.get_prop_func_cpp("get", prop.name), self.cname, prop.name)
            else:
                stra = stra + '\n.method("%s", [](const cv::Ptr<%s> &cobj) {return cobj->%s;})' % (self.get_prop_func_cpp("get", prop.name), self.cname, prop.name)    
        return stra
    def get_setters(self):
        stra = ""
        for prop in self.props:
            if prop.readonly:
                continue
            if not self.isalgorithm:
                stra = stra + '\n.method("%s", [](%s &cobj,const %s &v) {cobj.%s=v;})' % (self.get_prop_func_cpp("set", prop.name), self.cname, prop.ctp, prop.name)
            else:
                stra = stra + '\n.method("%s", [](%s cv::Ptr<cobj>, const %s &v) {cobj->%s=v;})' % (self.get_prop_func_cpp("set", prop.name), self.cname, prop.ctp, prop.name)
        return stra

    def overload_get(self):
        stra = "function Base.getproperty(m::%s, s::Symbol)\n" %(self.wname)
        for prop in self.props:
            stra = stra + "    if s==:" + prop.name+"\n"
            stra = stra + "        return jlopencv_argconvert_jl(%s(m))\n"%self.get_prop_func_cpp("get", prop.name)
            stra = stra + "    end\n" 
        stra = stra + "    return Base.getfield(m, s)\nend\n"
        return stra

    def overload_set(self):
        stra = "function Base.setproperty!(m::%s, s::Symbol, v)\n" %(self.wname)
        for prop in self.props:
            stra = stra + "    if s==:" + prop.name+"\n"
            stra = stra + "        %s(m, jlopencv_argconvert_cpp(v))\n"%self.get_prop_func_cpp("set", prop.name)
            stra = stra + "    end\n" 
        stra = stra + "    return Base.setfield(m, s, v)\nend\n"
        return stra

argumentst = []
class ArgInfo(object):
    """
    Helper class to parse and contain information about function arguments
    """

    def __init__(self, arg_tuple):
        # print(arg_)
        self.tp = handle_cpp_arg(arg_tuple[0]) #C++ Type of argument
        argumentst.append(self.tp)

        self.jtp = self.tp #Julia Type of Argument
        self.name = arg_tuple[1] #Name of argument
        self.defval = arg_tuple[2] #Default value
        self.isarray = False #Is the argument an array
        self.arraylen = 0
        self.arraycvt = None
        self.inputarg = True #Input argument
        self.outputarg = False #output argument
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
        self.isbig = self.tp in ["Mat", "vector_Mat", "cuda::GpuMat", "GpuMat", "vector_GpuMat", "UMat", "vector_UMat"]


class FuncVariant(object):
    """
    Helper class to parse and contain information about different overloaded versions of same function
    """
    def __init__(self, classname, name, cname, decl, isconstructor, namespace, istatic=False):
        self.classname = classname
        self.name = name
        self.cname = cname
        # print(name, cname)
        self.isconstructor = isconstructor
        self.isstatic = istatic
        self.namespace = namespace

        self.rettype = decl[4] or handle_cpp_arg(decl[1])
        if self.rettype == "void":
            self.rettype = ""
        self.rettype = handle_cpp_arg(self.rettype)
        self.args = []
        self.array_counters = {}
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

        if (name,cname) not in functions:
            functions[(name,cname)]= []
        functions[(name, cname)].append(self)

    
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
        return "jlopencv_" + self.namespace.replace('.','_') + '_' + classname + name


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
        c_arglist = []
        # the list of "heavy" output parameters. Heavy parameters are the parameters
        # that can be expensive to allocate each time, such as vectors and matrices (see isbig).
        outarr_list = []

        # the list of output parameters. Also includes input/output parameters.
        outlist = []

        optlist = []

        firstoptarg = 1000000
        for a in self.args:
            if a.name in self.array_counters:
                print(a.name)
                assert(0)
                continue
            assert not a.tp in forbidden_arg_types, 'Forbidden type "{}" for argument "{}" in "{}" ("{}")'.format(a.tp, a.name, self.name, self.classname)
            if a.tp in ignored_arg_types:
                continue
            if a.returnarg:
                outlist.append((a.name, a.jtp, a.tp))
            if (not a.inputarg) and a.isbig:
                outarr_list.append((a.name, a.jtp, a.tp))
                continue
            if not a.inputarg:
                continue
            if not a.defval:
                arglist.append((a.name, a.jtp, a.tp))
            else:
                # if there are some array output parameters before the first default parameter, they
                # are added as optional parameters before the first optional parameter
                if outarr_list:
                    arglist += outarr_list
                    outarr_list = []
                arglist.append((a.name, a.jtp, a.tp))
                optlist.append((a.name, a.jtp, a.tp, a.defval))

        if outarr_list:
            firstoptarg = min(firstoptarg, len(arglist))
            arglist += outarr_list
        firstoptarg = min(firstoptarg, len(arglist))

        noptargs = len(arglist) - firstoptarg
        argnamelist = [aname+"::"+jtp for aname, jtp, tp in arglist]
        argstr = ", ".join(argnamelist[:firstoptarg])
        if noptargs != 0:
            argstr = argstr + "; " +", ".join(argnamelist[firstoptarg:])
        if self.rettype:
            outlist = [("retval", self.rettype, self.rettype)] + outlist

        if self.isconstructor:
            # print(outlist)

            assert outlist == [] or outlist == [("retval", "explicit", "explicit")]
            classname = self.classname
            if classname.startswith("Cv"):
                classname=classname[2:]
            outstr = classname
            outlist = [("retval", classname, classname)]
        elif outlist:
            outstr = "( "+", ".join([o[0]+"::"+o[1] for o in outlist]) + " ) "
        else:
            outstr = "nothing"

        self.jl_arg_str = argstr #Argument string for function
        self.jl_return_str = outstr #Return values string
        self.jl_prototype = "%s(%s) -> %s" % (self.name, argstr, outstr)
        self.jl_noptargs = noptargs
        self.optlist = optlist
        self.jl_arglist = arglist
        self.jl_outlist = outlist

        self.defargs = []

    def get_return(self):
        if len(self.jl_outlist)==0:
            return ";"
        elif len(self.jl_outlist)==1:
            return "return %s;" % self.jl_outlist[0][0]
        return "return make_tuple<%s>(%s);" %(",".join([x[2] if x[2] not in pass_by_val_types else x[2][:-1] for x in self.jl_outlist]), ",".join([x[0] for x in self.jl_outlist]))
    def get_argument_cons(self):
        return ",".join(["const " + tp+ "&" for _,_,tp in self.jl_arglist])

    def get_argument(self, isalgo):
        arglist = self.jl_arglist
        if self.classname!="" and not self.isconstructor:
            if isalgo:
                arglist = [("cobj", ("cv::Ptr<%s>" % self.classname), ("cv::Ptr<%s>" % self.classname))] + arglist
            else:
                arglist = [("cobj", self.classname, self.classname)] + arglist


        argnamelist = [(tp if tp not in pass_by_val_types else tp[:-1]) +" "+aname for aname, jtp, tp in arglist]
        argstr = ", ".join(argnamelist)
        # argnamelist = [tp+" &"+aname+"="+defv for aname, jtp, tp,defv in self.optlist]
        # if len(argnamelist):
        #     if argstr:
        #         argstr = argstr+", "
        #     argstr = argstr +", ".join(argnamelist)

        for aname , _, _ in self.jl_arglist:
            self.defargs.append(aname)
        for aname , _, _,_ in self.optlist:
            self.defargs.append(aname)

        self.defargs.append("retval")
        self.c_arg_str = argstr

        return argstr

    def get_def_outtypes(self):
        outstr = ""
        for name, _, ctp in self.jl_outlist:
            if name not in self.defargs:
                outstr = outstr + "%s %s;"%(ctp if ctp not in pass_by_val_types else ctp[:-1], name)
        return outstr

    def get_retval(self, isalgo):
        if self.rettype:
            stra = "auto retval = "
        else:
            stra = ""
        if self.classname and not self.isstatic:

            stra = stra + "cobj%s%s(%s); " %("->" if isalgo else ".",self.name, ", ".join([(x.name if x.tp not in pass_by_val_types else "&" + x.name) for x in self.args]))
        else:
            stra = stra + "%s(%s);" % (self.cname, ", ".join([x.name for x in self.args]))
        return stra

    def get_complete_code(self, classname, isalgo=False):
        outstr = '.method("%s",  [](%s) {%s %s %s})' % (self.get_wrapper_name(), self.get_argument(isalgo),self.get_def_outtypes(), self.get_retval(isalgo), self.get_return())
        return outstr


class NameSpaceInfo(object):
    def __init__(self, name):
        self.funcs = {}
        self.classes = {} #Dictionary of classname : ClassInfo objects
        self.enums = {}
        self.consts = {}
        self.name = name

def split_decl_name(name):
    chunks = name.split('.')
    namespace = chunks[:-1]
    classes = []
    while namespace and '.'.join(namespace) not in namespaces:
        classes.insert(0, namespace.pop())
    
    ns = '.'.join(namespace)
    if ns not in namespaces:
        namespaces[ns] = NameSpaceInfo(ns)

    return namespace, classes, chunks[-1]


def add_func(decl):
    """
    Creates functions based on declaration and add to appropriate classes and/or namespaces
    """
    namespace, classes, barename = split_decl_name(decl[0])
    cname = "::".join(namespace+classes+[barename])
    name = barename
    classname = ''
    bareclassname = ''
    if classes:
        classname = ('.'.join(classes))
        bareclassname = classes[-1]
    namespace = '.'.join(namespace)

    isconstructor = name == bareclassname
    is_static = False
    isphantom = False
    for m in decl[2]:
        if m == "/S":
            is_static = True
        elif m == "/phantom":
            print("phantom not supported yet")
            return
        elif m.startswith("="):
            name = m[1:]
        elif m.startswith("/mappable="):
            print("Mappable not supported yet")
            return
        # if m == "/V":
        #     print("skipping ", name)
        #     return

    if isconstructor:
        name = "_".join(classes[:-1]+[name])

    if classname and classname not in namespaces[namespace].classes:
        # print("HH1")
        # print(namespace, classname)
        namespaces[namespace].classes[classname] = ClassInfo(classname)

    if is_static:
        # Add it as a method to the class
        func_map = namespaces[namespace].classes[classname].methods
        if name not in func_map:
            func_map[name] = []
        func_map[name].append(FuncVariant(classname, name, cname, decl, isconstructor, namespace, True))

        # Add it as global function
        g_name = "_".join(classes+[name])
        func_map = namespaces[namespace].funcs
        if name not in func_map:
            func_map[name] = []

        func_map[name].append(FuncVariant("", g_name, cname, decl, isconstructor, namespace, True))
    else:
        if classname:
            if isconstructor:
                namespaces[namespace].classes[classname].constructors.append(FuncVariant(classname, name, cname, decl, True, namespace, True))
            else:
                func_map = namespaces[namespace].classes[classname].methods
                if name not in func_map:
                    func_map[name] = []
                func_map[name].append(FuncVariant(classname, name, cname, decl, isconstructor, namespace, False))
        else:
            func_map = namespaces[namespace].funcs
            if name not in func_map:
                func_map[name] = []
            func_map[name].append(FuncVariant("", name, cname, decl, False, namespace, False))


def add_class(stype, name, decl):
    """
    Creates class based on name and declaration. Add it to list of classes and to JSON file
    """
    # print("n", name)

    classinfo = ClassInfo(name, decl)
    namespace, classes, name = split_decl_name(name)
    namespace = '.'.join(namespace)
    name = '_'.join(classes+[name])
    if classinfo.name in classes:
        namespaces[namespace].classes[name].add_decl(decl)
    else:
        namespaces[namespace].classes[name] = classinfo
    
    # print(namespace, name)
    #print('class: ' + classinfo.cname + " => " + jl_name)



def add_const(name, decl):
    cname = name.replace('.','::')
    namespace, classes, name = split_decl_name(name)
    namespace = '.'.join(namespace)
    name = '_'.join(classes+[name])
    ns = namespaces[namespace]
    if name in ns.consts:
        print("Generator error: constant %s (cname=%s) already exists" \
            % (name, cname))
        sys.exit(-1)
    ns.consts[name] = cname

def add_enum(name, decl):
    wname = normalize_class_name(name)
    if wname.endswith("<unnamed>"):
        wname = None
    else:
        enums[name.replace(".", "::")] = name
    const_decls = decl[3]

    if wname:
        namespace, classes, name = split_decl_name(name)
        namespace = '.'.join(namespace)
        namespaces[namespace].enums[name] = (name.replace(".", "::"),name)
    for decl in const_decls:
        name = decl[0]
        add_const(name.replace("const ", "").strip(), decl)



def gen(srcfiles, output_path):
    parser = hdr_parser.CppHeaderParser(generate_umat_decls=True, generate_gpumat_decls=True)
    count = 0
    # step 1: scan the headers and build more descriptive maps of classes, consts, functions
    for hdr in srcfiles:
        decls = parser.parse(hdr)
        for ns in parser.namespaces:
            if ns not in namespaces:
                namespaces[ns] = NameSpaceInfo(ns)
        count += len(decls)
        if len(decls) == 0:
            continue
        if hdr.find('opencv2/') >= 0: #Avoid including the shadow files
            # code_include.write( '#include "{0}"\n'.format(hdr[hdr.rindex('opencv2/'):]) )
            pass
        for decl in decls:
            name = decl[0]
            if name.startswith("struct") or name.startswith("class"):
                # class/struct
                p = name.find(" ")
                stype = name[:p]
                name = name[p+1:].strip()
                add_class(stype, name, decl)
            elif name.startswith("const"):
                # constant
                add_const(name.replace("const ", "").strip(), decl)
            elif name.startswith("enum"):
                # enum
                add_enum(name.rsplit(" ", 1)[1], decl)
            else:
                # function
                add_func(decl)
    # step 1.5 check if all base classes exist
    # print(classes)
    for name, classinfo in classes.items():
        if classinfo.base:
            base = classinfo.base
            # print(base)
            if base not in classes:
                print("Generator error: unable to resolve base %s for %s"
                    % (classinfo.base, classinfo.name))
                sys.exit(-1)
            base_instance = classes[base]
            classinfo.base = base
            classinfo.isalgorithm |= base_instance.isalgorithm  # wrong processing of 'isalgorithm' flag:
                                                                # doesn't work for trees(graphs) with depth > 2
            classes[name] = classinfo

    # tree-based propagation of 'isalgorithm'
    processed = dict()
    def process_isalgorithm(classinfo):
        if classinfo.isalgorithm or classinfo in processed:
            return classinfo.isalgorithm
        res = False
        if classinfo.base:
            res = process_isalgorithm(classes[classinfo.base])
            #assert not (res == True or classinfo.isalgorithm is False), "Internal error: " + classinfo.name + " => " + classinfo.base
            classinfo.isalgorithm |= res
            res = classinfo.isalgorithm
        processed[classinfo] = True
        return res
    for name, classinfo in classes.items():
        process_isalgorithm(classinfo)


    cpp_code = StringIO()
    for name, ns in namespaces.items():
        cpp_code.write("JLCXX_MODULE %s(jlcxx::Module &mod) {\n" % name.split('.')[-1])
        for cname, cl in ns.classes.items():
            cpp_code.write(cl.get_cpp_code())
            for mname, fs in cl.methods.items():
                for f in fs:
                     cpp_code.write('\n    mod%s;'  % f.get_complete_code(cl.cname, cl.isalgorithm))
        for mname, fs in ns.funcs.items():
            for f in fs:
                cpp_code.write('\n    mod%s;' % f.get_complete_code("", False))

        for e1,e2 in ns.enums.items():
            cpp_code.write('\n    mod.add_bits<{1}>("{0}", jlcxx::julia_type("CppEnum"));\n'.format(e2[0], e2[1]))
        for name, cname in sorted(ns.consts.items()):
            cpp_code.write('    mod.set_const("%s", %s);\n'%(name, cname))
            compat_name = re.sub(r"([a-z])([A-Z])", r"\1_\2", name).upper()
            if name != compat_name:
                cpp_code.write('    mod.set_const("%s", %s);\n'%(compat_name, cname))

        cpp_code.write('}\n');

    
    print(cpp_code.getvalue())


    # step 2: generate code for the classes and their methods
    classlist = list(classes.items())
    classlist.sort()
    for name, classinfo in classlist:
        code_types.write("//{}\n".format(80*"="))
        code_types.write("// {} ({})\n".format(name, 'Map' if classinfo.ismap else 'Generic'))
        code_types.write("//{}\n".format(80*"="))
        code_types.write(classinfo.gen_code(self))
        if classinfo.ismap:
            code_types.write(gen_template_map_type_cvt.substitute(name=classinfo.name, cname=classinfo.cname))
        else:
            mappable_code = "\n".join([
                                    gen_template_mappable.substitute(cname=classinfo.cname, mappable=mappable)
                                        for mappable in classinfo.mappables])
            code = gen_template_type_decl.substitute(
                name=classinfo.name,
                cname=classinfo.cname if classinfo.issimple else "Ptr<{}>".format(classinfo.cname),
                mappable_code=mappable_code
            )
            code_types.write(code)

    # register classes in the same order as they have been declared.
    # this way, base classes will be registered in jlthon before their derivatives.
    classlist1 = [(classinfo.decl_idx, name, classinfo) for name, classinfo in classlist]
    classlist1.sort()

    for decl_idx, name, classinfo in classlist1:
        if classinfo.ismap:
            continue
        code_type_publish.write(classinfo.gen_def(self))


    # step 3: generate the code for all the global functions
    for ns_name, ns in sorted(namespaces.items()):
        if ns_name.split('.')[0] != 'cv':
            continue
        for name, c in sorted(ns.funcs.items()):

            if func.isconstructor:
                continue
            code = func.gen_code(self)
            code_funcs.write(code)
        gen_namespace(ns_name)
        code_ns_init.write('CVjl_MODULE("{}", {});\n'.format(ns_name[2:], normalize_class_name(ns_name)))

    # step 4: generate the code for enum types
    enumlist = list(enums.values())
    enumlist.sort()
    for name in enumlist:
        gen_enum_reg(name)

    # step 5: generate the code for constants
    # But empty actually and function doens't even exist
    constlist = list(consts.items())
    constlist.sort()
    for name, constinfo in constlist:
        gen_const_reg(constinfo)


srcfiles = hdr_parser.opencv_hdr_list
dstdir = "test/"
if len(sys.argv) > 1:
    dstdir = sys.argv[1]
if len(sys.argv) > 2:
    with open(sys.argv[2], 'r') as f:
        srcfiles = [l.strip() for l in f.readlines()]
gen(srcfiles, dstdir)
