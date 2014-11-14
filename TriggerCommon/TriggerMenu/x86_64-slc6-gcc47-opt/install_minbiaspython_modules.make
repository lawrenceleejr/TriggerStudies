#-- start of make_header -----------------

#====================================
#  Document install_minbiaspython_modules
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

cmt_install_minbiaspython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_minbiaspython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_minbiaspython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_minbiaspython_modules = $(TriggerMenu_tag)_install_minbiaspython_modules.make
cmt_local_tagfile_install_minbiaspython_modules = $(bin)$(TriggerMenu_tag)_install_minbiaspython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_minbiaspython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_minbiaspython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_minbiaspython_modules)
#-include $(cmt_local_tagfile_install_minbiaspython_modules)

ifdef cmt_install_minbiaspython_modules_has_target_tag

cmt_final_setup_install_minbiaspython_modules = $(bin)setup_install_minbiaspython_modules.make
cmt_dependencies_in_install_minbiaspython_modules = $(bin)dependencies_install_minbiaspython_modules.in
#cmt_final_setup_install_minbiaspython_modules = $(bin)TriggerMenu_install_minbiaspython_modulessetup.make
cmt_local_install_minbiaspython_modules_makefile = $(bin)install_minbiaspython_modules.make

else

cmt_final_setup_install_minbiaspython_modules = $(bin)setup.make
cmt_dependencies_in_install_minbiaspython_modules = $(bin)dependencies.in
#cmt_final_setup_install_minbiaspython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_minbiaspython_modules_makefile = $(bin)install_minbiaspython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_minbiaspython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_minbiaspython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_minbiaspython_modules/
#install_minbiaspython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/minbias/

install_minbiaspython_modules :: install_minbiaspython_modulesinstall ;

install :: install_minbiaspython_modulesinstall ;

install_minbiaspython_modulesclean :: install_minbiaspython_modulesuninstall

uninstall :: install_minbiaspython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_minbiaspython_modulesinstall :: ;

MinBiasSliceFlags_py_dependencies = ../python/minbias/MinBiasSliceFlags.py
__init___py_dependencies = ../python/minbias/__init__.py
MinBiasDef_py_dependencies = ../python/minbias/MinBiasDef.py
generateMinBiasChainDefs_py_dependencies = ../python/minbias/generateMinBiasChainDefs.py


install_minbiaspython_modulesinstall :: ${install_dir}/MinBiasSliceFlags.py ;

${install_dir}/MinBiasSliceFlags.py :: ../python/minbias/MinBiasSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/minbias/MinBiasSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MinBiasSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/minbias/MinBiasSliceFlags.py : ;

install_minbiaspython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/minbias/MinBiasSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MinBiasSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_minbiaspython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/minbias/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/minbias/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/minbias/__init__.py : ;

install_minbiaspython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/minbias/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_minbiaspython_modulesinstall :: ${install_dir}/MinBiasDef.py ;

${install_dir}/MinBiasDef.py :: ../python/minbias/MinBiasDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/minbias/MinBiasDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MinBiasDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/minbias/MinBiasDef.py : ;

install_minbiaspython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/minbias/MinBiasDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MinBiasDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_minbiaspython_modulesinstall :: ${install_dir}/generateMinBiasChainDefs.py ;

${install_dir}/generateMinBiasChainDefs.py :: ../python/minbias/generateMinBiasChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/minbias/generateMinBiasChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateMinBiasChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/minbias/generateMinBiasChainDefs.py : ;

install_minbiaspython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/minbias/generateMinBiasChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateMinBiasChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_minbiaspython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_minbiaspython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_minbiaspython_modulesclean ::
#-- end of cleanup_header ---------------