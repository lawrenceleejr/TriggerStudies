#-- start of make_header -----------------

#====================================
#  Document install_muonpython_modules
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

cmt_install_muonpython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_muonpython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_muonpython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_muonpython_modules = $(TriggerMenu_tag)_install_muonpython_modules.make
cmt_local_tagfile_install_muonpython_modules = $(bin)$(TriggerMenu_tag)_install_muonpython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_muonpython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_muonpython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_muonpython_modules)
#-include $(cmt_local_tagfile_install_muonpython_modules)

ifdef cmt_install_muonpython_modules_has_target_tag

cmt_final_setup_install_muonpython_modules = $(bin)setup_install_muonpython_modules.make
cmt_dependencies_in_install_muonpython_modules = $(bin)dependencies_install_muonpython_modules.in
#cmt_final_setup_install_muonpython_modules = $(bin)TriggerMenu_install_muonpython_modulessetup.make
cmt_local_install_muonpython_modules_makefile = $(bin)install_muonpython_modules.make

else

cmt_final_setup_install_muonpython_modules = $(bin)setup.make
cmt_dependencies_in_install_muonpython_modules = $(bin)dependencies.in
#cmt_final_setup_install_muonpython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_muonpython_modules_makefile = $(bin)install_muonpython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_muonpython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_muonpython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_muonpython_modules/
#install_muonpython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/muon/

install_muonpython_modules :: install_muonpython_modulesinstall ;

install :: install_muonpython_modulesinstall ;

install_muonpython_modulesclean :: install_muonpython_modulesuninstall

uninstall :: install_muonpython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_muonpython_modulesinstall :: ;

MuonDefIdTest_py_dependencies = ../python/muon/MuonDefIdTest.py
MuonSliceFlags_py_dependencies = ../python/muon/MuonSliceFlags.py
MuonDef_py_dependencies = ../python/muon/MuonDef.py
generateMuonChainDefs_py_dependencies = ../python/muon/generateMuonChainDefs.py
__init___py_dependencies = ../python/muon/__init__.py


install_muonpython_modulesinstall :: ${install_dir}/MuonDefIdTest.py ;

${install_dir}/MuonDefIdTest.py :: ../python/muon/MuonDefIdTest.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/MuonDefIdTest.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MuonDefIdTest.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/muon/MuonDefIdTest.py : ;

install_muonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/MuonDefIdTest.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MuonDefIdTest.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_muonpython_modulesinstall :: ${install_dir}/MuonSliceFlags.py ;

${install_dir}/MuonSliceFlags.py :: ../python/muon/MuonSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/MuonSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MuonSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/muon/MuonSliceFlags.py : ;

install_muonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/MuonSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MuonSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_muonpython_modulesinstall :: ${install_dir}/MuonDef.py ;

${install_dir}/MuonDef.py :: ../python/muon/MuonDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/MuonDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MuonDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/muon/MuonDef.py : ;

install_muonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/MuonDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MuonDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_muonpython_modulesinstall :: ${install_dir}/generateMuonChainDefs.py ;

${install_dir}/generateMuonChainDefs.py :: ../python/muon/generateMuonChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/generateMuonChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateMuonChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/muon/generateMuonChainDefs.py : ;

install_muonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/generateMuonChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateMuonChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_muonpython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/muon/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/muon/__init__.py : ;

install_muonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/muon/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_muonpython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_muonpython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_muonpython_modulesclean ::
#-- end of cleanup_header ---------------
