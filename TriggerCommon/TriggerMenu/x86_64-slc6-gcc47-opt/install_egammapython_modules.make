#-- start of make_header -----------------

#====================================
#  Document install_egammapython_modules
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

cmt_install_egammapython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_egammapython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_egammapython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_egammapython_modules = $(TriggerMenu_tag)_install_egammapython_modules.make
cmt_local_tagfile_install_egammapython_modules = $(bin)$(TriggerMenu_tag)_install_egammapython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_egammapython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_egammapython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_egammapython_modules)
#-include $(cmt_local_tagfile_install_egammapython_modules)

ifdef cmt_install_egammapython_modules_has_target_tag

cmt_final_setup_install_egammapython_modules = $(bin)setup_install_egammapython_modules.make
cmt_dependencies_in_install_egammapython_modules = $(bin)dependencies_install_egammapython_modules.in
#cmt_final_setup_install_egammapython_modules = $(bin)TriggerMenu_install_egammapython_modulessetup.make
cmt_local_install_egammapython_modules_makefile = $(bin)install_egammapython_modules.make

else

cmt_final_setup_install_egammapython_modules = $(bin)setup.make
cmt_dependencies_in_install_egammapython_modules = $(bin)dependencies.in
#cmt_final_setup_install_egammapython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_egammapython_modules_makefile = $(bin)install_egammapython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_egammapython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_egammapython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_egammapython_modules/
#install_egammapython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/egamma/

install_egammapython_modules :: install_egammapython_modulesinstall ;

install :: install_egammapython_modulesinstall ;

install_egammapython_modulesclean :: install_egammapython_modulesuninstall

uninstall :: install_egammapython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_egammapython_modulesinstall :: ;

ElectronDef_py_dependencies = ../python/egamma/ElectronDef.py
generateElectronChainDefs_py_dependencies = ../python/egamma/generateElectronChainDefs.py
__init___py_dependencies = ../python/egamma/__init__.py
EgammaSliceFlags_py_dependencies = ../python/egamma/EgammaSliceFlags.py
PhotonDef_py_dependencies = ../python/egamma/PhotonDef.py
ElectronDefIdTest_py_dependencies = ../python/egamma/ElectronDefIdTest.py
generatePhotonChainDefs_py_dependencies = ../python/egamma/generatePhotonChainDefs.py


install_egammapython_modulesinstall :: ${install_dir}/ElectronDef.py ;

${install_dir}/ElectronDef.py :: ../python/egamma/ElectronDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/ElectronDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ElectronDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/egamma/ElectronDef.py : ;

install_egammapython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/ElectronDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ElectronDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_egammapython_modulesinstall :: ${install_dir}/generateElectronChainDefs.py ;

${install_dir}/generateElectronChainDefs.py :: ../python/egamma/generateElectronChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/generateElectronChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateElectronChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/egamma/generateElectronChainDefs.py : ;

install_egammapython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/generateElectronChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateElectronChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_egammapython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/egamma/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/egamma/__init__.py : ;

install_egammapython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_egammapython_modulesinstall :: ${install_dir}/EgammaSliceFlags.py ;

${install_dir}/EgammaSliceFlags.py :: ../python/egamma/EgammaSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/EgammaSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "EgammaSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/egamma/EgammaSliceFlags.py : ;

install_egammapython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/EgammaSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "EgammaSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_egammapython_modulesinstall :: ${install_dir}/PhotonDef.py ;

${install_dir}/PhotonDef.py :: ../python/egamma/PhotonDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/PhotonDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "PhotonDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/egamma/PhotonDef.py : ;

install_egammapython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/PhotonDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "PhotonDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_egammapython_modulesinstall :: ${install_dir}/ElectronDefIdTest.py ;

${install_dir}/ElectronDefIdTest.py :: ../python/egamma/ElectronDefIdTest.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/ElectronDefIdTest.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ElectronDefIdTest.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/egamma/ElectronDefIdTest.py : ;

install_egammapython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/ElectronDefIdTest.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ElectronDefIdTest.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_egammapython_modulesinstall :: ${install_dir}/generatePhotonChainDefs.py ;

${install_dir}/generatePhotonChainDefs.py :: ../python/egamma/generatePhotonChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/generatePhotonChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generatePhotonChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/egamma/generatePhotonChainDefs.py : ;

install_egammapython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/egamma/generatePhotonChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generatePhotonChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_egammapython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_egammapython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_egammapython_modulesclean ::
#-- end of cleanup_header ---------------
