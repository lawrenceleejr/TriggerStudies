#-- start of make_header -----------------

#====================================
#  Document install_taupython_modules
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

cmt_install_taupython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_taupython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_taupython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_taupython_modules = $(TriggerMenu_tag)_install_taupython_modules.make
cmt_local_tagfile_install_taupython_modules = $(bin)$(TriggerMenu_tag)_install_taupython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_taupython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_taupython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_taupython_modules)
#-include $(cmt_local_tagfile_install_taupython_modules)

ifdef cmt_install_taupython_modules_has_target_tag

cmt_final_setup_install_taupython_modules = $(bin)setup_install_taupython_modules.make
cmt_dependencies_in_install_taupython_modules = $(bin)dependencies_install_taupython_modules.in
#cmt_final_setup_install_taupython_modules = $(bin)TriggerMenu_install_taupython_modulessetup.make
cmt_local_install_taupython_modules_makefile = $(bin)install_taupython_modules.make

else

cmt_final_setup_install_taupython_modules = $(bin)setup.make
cmt_dependencies_in_install_taupython_modules = $(bin)dependencies.in
#cmt_final_setup_install_taupython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_taupython_modules_makefile = $(bin)install_taupython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_taupython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_taupython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_taupython_modules/
#install_taupython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/tau/

install_taupython_modules :: install_taupython_modulesinstall ;

install :: install_taupython_modulesinstall ;

install_taupython_modulesclean :: install_taupython_modulesuninstall

uninstall :: install_taupython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_taupython_modulesinstall :: ;

TauDef_py_dependencies = ../python/tau/TauDef.py
generateTauChainDefs_py_dependencies = ../python/tau/generateTauChainDefs.py
__init___py_dependencies = ../python/tau/__init__.py
TauHypoProvider_py_dependencies = ../python/tau/TauHypoProvider.py
TauDefIdTest_py_dependencies = ../python/tau/TauDefIdTest.py
TauSliceFlags_py_dependencies = ../python/tau/TauSliceFlags.py


install_taupython_modulesinstall :: ${install_dir}/TauDef.py ;

${install_dir}/TauDef.py :: ../python/tau/TauDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/TauDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TauDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/tau/TauDef.py : ;

install_taupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/TauDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TauDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_taupython_modulesinstall :: ${install_dir}/generateTauChainDefs.py ;

${install_dir}/generateTauChainDefs.py :: ../python/tau/generateTauChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/generateTauChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateTauChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/tau/generateTauChainDefs.py : ;

install_taupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/generateTauChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateTauChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_taupython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/tau/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/tau/__init__.py : ;

install_taupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_taupython_modulesinstall :: ${install_dir}/TauHypoProvider.py ;

${install_dir}/TauHypoProvider.py :: ../python/tau/TauHypoProvider.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/TauHypoProvider.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TauHypoProvider.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/tau/TauHypoProvider.py : ;

install_taupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/TauHypoProvider.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TauHypoProvider.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_taupython_modulesinstall :: ${install_dir}/TauDefIdTest.py ;

${install_dir}/TauDefIdTest.py :: ../python/tau/TauDefIdTest.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/TauDefIdTest.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TauDefIdTest.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/tau/TauDefIdTest.py : ;

install_taupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/TauDefIdTest.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TauDefIdTest.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_taupython_modulesinstall :: ${install_dir}/TauSliceFlags.py ;

${install_dir}/TauSliceFlags.py :: ../python/tau/TauSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/TauSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TauSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/tau/TauSliceFlags.py : ;

install_taupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/tau/TauSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TauSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_taupython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_taupython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_taupython_modulesclean ::
#-- end of cleanup_header ---------------
