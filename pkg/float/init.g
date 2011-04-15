#############################################################################
##
#W init.g                                                   Laurent Bartholdi
##
#H   @(#)$Id: init.g,v 1.3 2008/06/14 15:45:40 gap Exp $
##
#Y Copyright (C) 2008, Laurent Bartholdi
##
#############################################################################
##
##  This file reads the declarations of the packages' new objects
##
#############################################################################

#############################################################################
##
#I Create info class to be able to debug loading
##
InfoFloat := NewInfoClass("InfoFloat");
SetInfoLevel(InfoFloat, 1);
#############################################################################
FLOAT_MAKEDOC := function()
    MakeGAPDocDoc(Concatenation(GAPInfo.PackagesLoaded.float[1],"/doc"),"float",
            ["../lib/float.gd","../lib/mpfr.gd","../lib/mpfi.gd",
             "../lib/mpc.gd","../lib/cxsc.gd","../PackageInfo.g"],"float");
end;

if IsBound(IsFloat) then
  Info(InfoFloat,1,"Zapping cybersquatter `IsFloat'");
  MakeReadWriteGlobal("IsFloat"); Unbind(IsFloat);
  Info(InfoFloat,1,"Zapping cybersquatter `Float'");
  MakeReadWriteGlobal("Float"); Unbind(Float);
fi;

CallFuncList(function()
    local f;
    f := Filename(DirectoriesPackagePrograms("float"),"mp_float.so");
    if f<>fail then
        LoadDynamicModule(f);
        if not IsBound(MPFR_INT) then
            Unbind(GAPInfo.PackagesLoaded.float);
            Error("float: Something went wrong when loading the kernel module ",f);
        fi;
    fi;

    f := Filename(DirectoriesPackagePrograms("float"),"cxsc_float.so");
    if f<>fail then
        LoadDynamicModule(f);
        if not IsBound(CXSC_INT) then
            Unbind(GAPInfo.PackagesLoaded.float);
            Error("float: Something went wrong when loading the kernel module ",f);
        fi;
    fi;
end,[]);

#############################################################################
##
#R Read the declaration files.
##
ReadPackage("float", "lib/float.gd");

if IsBound(MPFR_INT) then
    ReadPackage("float", "lib/mpfr.gd");
fi;
if IsBound(MPFI_INT) then
    ReadPackage("float", "lib/mpfi.gd");
fi;
if IsBound(MPC_INT) then
    ReadPackage("float", "lib/mpc.gd");
fi;
if IsBound(CXSC_INT) then
    ReadPackage("float", "lib/cxsc.gd");
fi;
#############################################################################

#E init.g . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ends here