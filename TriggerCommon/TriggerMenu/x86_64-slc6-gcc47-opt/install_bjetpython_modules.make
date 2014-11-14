#-- start of make_header -----------------

#====================================
#  Document install_bjetpython_modules
#
#   Generated Fri Nov 14 10:51:42 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_bjetpython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_bjetpython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_bjetpython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_bjetpython_modules = $(TriggerMenu_tag)_install_bjetpython_modules.make
cmt_local_tagfile_install_bjetpython_modules = $(bin)$(TriggerMenu_tag)_install_bjetpython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_bjetpython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_bjetpython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_bjetpython_modules)
#-include $(cmt_local_tagfile_install_bjetpython_modules)

ifdef cmt_install_bjetpython_modules_has_target_tag

cmt_final_setup_install_bjetpython_modules = $(bin)setup_install_bjetpython_modules.make
cmt_dependencies_in_install_bjetpython_modules = $(bin)dependencies_install_bjetpython_modules.in
#cmt_final_setup_install_bjetpython_modules = $(bin)TriggerMenu_install_bjetpython_modulessetup.make
cmt_local_install_bjetpython_modules_makefile = $(bin)install_bjetpython_modules.make

else

cmt_final_setup_install_bjetpython_modules = $(bin)setup.make
cmt_dependencies_in_install_bjetpython_modules = $(bin)dependencies.in
#cmt_final_setup_install_bjetpython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_bjetpython_modules_makefile = $(bin)install_bjetpython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_bjetpython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_bjetpython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_bjetpython_modules/
#install_bjetpython_modules::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------


ifeq ($(INSTALLAREA),)
installarea = $(CMTINSTALLAREA)
else
ifeq ($(findstring `,$(INSTALLAREA)),`)
installarea = $(shell $(subst `,, $(INSTALLAREA)))
else
installarea = $(INSTALLAREA)
endif
endif

install_dir = ${installarea}/python/TriggerMenu/bjet/

install_bjetpython_modules :: install_bjetpython_modulesinstall ;

install :: install_bjetpython_modulesinstall ;

install_bjetpython_modulesclean :: install_bjetpython_modulesuninstall

uninstall :: install_bjetpython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_bjetpython_modulesinstall :: ;

__init___py_dependencies = ../python/bjet/__init__.py
BjetSliceFlags_py_dependencies = ../python/bjet/BjetSliceFlags.py
generateBjetChainDefs_py_dependencies = ../python/bjet/generateBjetChainDefs.py


install_bjetpython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/bjet/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/bjet/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/bjet/__init__.py : ;

install_bjetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/bjet/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_bjetpython_modulesinstall :: ${install_dir}/BjetSliceFlags.py ;

${install_dir}/BjetSliceFlags.py :: ../python/bjet/BjetSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/bjet/BjetSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "BjetSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/bjet/BjetSliceFlags.py : ;

install_bjetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/bjet/BjetSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "BjetSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_bjetpython_modulesinstall :: ${install_dir}/generateBjetChainDefs.py ;

${install_dir}/generateBjetChainDefs.py :: ../python/bjet/generateBjetChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/bjet/generateBjetChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateBjetChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/bjet/generateBjetChainDefs.py : ;

install_bjetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/bjet/generateBjetChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateBjetChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_bjetpython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_bjetpython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_bjetpython_modulesclean ::
#-- end of cleanup_header ---------------