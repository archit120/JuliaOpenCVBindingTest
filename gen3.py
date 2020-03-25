
#!/usr/bin/env python3

import hdr_parser, sys, re, os
from string import Template
from pprint import pprint
from collections import namedtuple

from io import StringIO


forbidden_arg_types = ["void*"]

ignored_arg_types = ["RNG*"]

pass_by_val_types = ["Point*", "Point2f*", "Rect*", "String*", "double*", "float*", "int*"]

def handle_ptr(tp):
    if tp.startswith('Ptr_'):
        tp = 'Ptr<' + "::".join(tp.split('_')[1:]) + '>'
    return tp


def normalize_class_name(name):
    return re.sub(r"^cv\.", "", name).replace(".", "_")



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
        self.issimple = False   #CV_EXPORTS_W_SIMPLE
        self.isalgorithm = False    #if class inherits from cv::Algorithm
        self.methods = {}   #Dictionary of methods
        self.props = []     #Collection of ClassProp associated with this class
        self.mappables = [] 
        self.consts = {}    #Dictionary pf constants
        self.base = None    #name of base class if current class inherits another class
        self.constructor = None
        customname = False
        if decl:
            # print(decl)
            bases = decl[1].split()[1:]
            if len(bases) > 1:
                assert(0)
                #return sys.exit(-1)
            elif len(bases) == 1:
                assert(0)
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
            self.props = [ClassProp(p) for p in decl[3]]

        if not customname and self.wname.startswith("Cv"):
            self.wname = self.wname[2:]


class ArgInfo(object):
    """
    Helper class to parse and contain information about function arguments
    """

    def __init__(self, arg_tuple):
        self.tp = arg_tuple[0] #C++ Type of argument
        self.jtp = self.tp #Julia Type of Argument
        self.name = arg_tuple[1] #Name of argument
        self.defval = arg_tuple[2] #Default value
        self.isarray = False #Is the argument an array
        self.arraylen = 0
        self.arraycvt = None
        self.inputarg = True #Input argument
        self.outputarg = False #output argument
        for m in arg_tuple[3]:
            if m == "/O":
                self.inputarg = False
                self.outputarg = True
            elif m == "/IO":
                self.inputarg = True
                self.outputarg = True
            elif m.startswith("/A"):
                self.isarray = True
                self.arraylen = m[2:].strip()
            elif m.startswith("/CA"):
                self.isarray = True
                self.arraycvt = m[2:].strip()
        
        self.isbig = self.tp in ["Mat", "vector_Mat", "cuda::GpuMat", "GpuMat", "vector_GpuMat", "UMat", "vector_UMat"]


class FuncVariant(object):
    """
    Helper class to parse and contain information about different overloaded versions of same function
    """
    def __init__(self, classname, name, decl, isconstructor, isphantom=False):
        self.classname = classname
        self.name = name
        self.isconstructor = isconstructor
        self.isphantom = isphantom

        self.rettype = decl[4] or handle_ptr(decl[1])
        if self.rettype == "void":
            self.rettype = ""
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
        for a in self.args:
            if a.name in self.array_counters:
                continue
            assert not a.tp in forbidden_arg_types, 'Forbidden type "{}" for argument "{}" in "{}" ("{}")'.format(a.tp, a.name, self.name, self.classname)
            if a.tp in ignored_arg_types:
                continue
            if a.returnarg:
                outlist.append((a.name, a.jtp))
            if (not a.inputarg) and a.isbig():
                outarr_list.append((a.name, a.jtp))
                continue
            if not a.inputarg:
                continue
            if not a.defval:
                arglist.append((a.name, a.jtp))
            else:
                firstoptarg = min(firstoptarg, len(arglist))
                # if there are some array output parameters before the first default parameter, they
                # are added as optional parameters before the first optional parameter
                if outarr_list:
                    arglist += outarr_list
                    outarr_list = []
                arglist.append((a.name, a.jtp))

        if outarr_list:
            firstoptarg = min(firstoptarg, len(arglist))
            arglist += outarr_list
        firstoptarg = min(firstoptarg, len(arglist))

        noptargs = len(arglist) - firstoptarg
        argnamelist = [aname+"::"+jtp for aname, argno, jtp in arglist]
        argstr = ", ".join(argnamelist[:firstoptarg])
        if noptargs != 0:
            argstr = argstr + "; " +", ".join(argnamelist[firstoptarg:])
        if self.rettype:
            outlist = [("retval", "")] + outlist

        if self.isconstructor:
            assert outlist == []
            classname = self.classname
            if classname.startswith("Cv"):
                classname=classname[2:]
            outstr = classname
            outlist = [("retval", classname)]
        elif outlist:
            outstr = "( "+", ".join([o[0]+"::"+o[1] for o in outlist]) + " ) "
        else:
            outstr = "nothing"

        self.jl_arg_str = argstr #Argument string for function
        self.jl_return_str = outstr #Return values string
        self.jl_prototype = "%s(%s) -> %s" % (self.name, argstr, outstr)
        self.jl_noptargs = noptargs
        self.jl_arglist = arglist
        for aname, argno, jtp in arglist:
            self.args[argno].jl_inputarg = True
        for aname, argno, jtp in outlist:
            if argno >= 0:
                self.args[argno].jl_outputarg = True
        self.jl_outlist = outlist
