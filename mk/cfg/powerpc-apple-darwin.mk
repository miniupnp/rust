# powerpc-apple-darwin configuration
CC_powerpc-apple-darwin=$(CC)
CXX_powerpc-apple-darwin=$(CXX)
CPP_powerpc-apple-darwin=$(CPP)
AR_powerpc-apple-darwin=$(AR)
CFG_LIB_NAME_powerpc-apple-darwin=lib$(1).dylib
CFG_STATIC_LIB_NAME_powerpc-apple-darwin=lib$(1).a
CFG_LIB_GLOB_powerpc-apple-darwin=lib$(1)-*.dylib
CFG_LIB_DSYM_GLOB_powerpc-apple-darwin=lib$(1)-*.dylib.dSYM
CFG_JEMALLOC_CFLAGS_powerpc-apple-darwin := -m32 -arch ppc $(CFLAGS)
CFG_GCCISH_CFLAGS_powerpc-apple-darwin := -Wall -Werror -g -fPIC -m32 -arch ppc $(CFLAGS)
CFG_GCCISH_CXXFLAGS_powerpc-apple-darwin := -fno-rtti $(CXXFLAGS)
CFG_GCCISH_LINK_FLAGS_powerpc-apple-darwin := -dynamiclib -pthread  -framework CoreServices -m32
CFG_GCCISH_DEF_FLAG_powerpc-apple-darwin := -Wl,-exported_symbols_list,
CFG_GCCISH_PRE_LIB_FLAGS_powerpc-apple-darwin :=
CFG_GCCISH_POST_LIB_FLAGS_powerpc-apple-darwin :=
CFG_DEF_SUFFIX_powerpc-apple-darwin := .darwin.def
CFG_LLC_FLAGS_powerpc-apple-darwin :=
CFG_INSTALL_NAME_powerpc-apple-darwin = -Wl,-install_name,@rpath/$(1)
CFG_EXE_SUFFIX_powerpc-apple-darwin :=
CFG_WINDOWSY_powerpc-apple-darwin :=
CFG_UNIXY_powerpc-apple-darwin := 1
CFG_PATH_MUNGE_powerpc-apple-darwin := true
CFG_LDPATH_powerpc-apple-darwin :=
CFG_RUN_powerpc-apple-darwin=$(2)
CFG_RUN_TARG_powerpc-apple-darwin=$(call CFG_RUN_powerpc-apple-darwin,,$(2))
CFG_GNU_TRIPLE_powerpc-apple-darwin := powerpc-apple-darwin
