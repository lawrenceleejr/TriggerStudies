#-- start of make_header -----------------

#====================================
#  Document install_calibcosmicmonpython_modules
#
#   Generated Fri Nov 14 10:51:49 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_calibcosmicmonpython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_calibcosmicmonpython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_calibcosmicmonpython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_calibcosmicmonpython_modules = $(TriggerMenu_tag)_install_calibcosmicmonpython_modules.make
cmt_local_tagfile_install_calibcosmicmonpython_modules = $(bin)$(TriggerMenu_tag)_install_calibcosmicmonpython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_calibcosmicmonpython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_calibcosmicmonpython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_calibcosmicmonpython_modules)
#-include $(cmt_local_tagfile_install_calibcosmicmonpython_modules)

ifdef cmt_install_calibcosmicmonpython_modules_has_target_tag

cmt_final_setup_install_calibcosmicmonpython_modules = $(bin)setup_install_calibcosmicmonpython_modules.make
cmt_dependencies_in_install_calibcosmicmonpython_modules = $(bin)dependencies_install_calibcosmicmonpython_modules.in
#cmt_final_setup_install_calibcosmicmonpython_modules = $(bin)TriggerMenu_install_calibcosmicmonpython_modulessetup.make
cmt_local_install_calibcosmicmonpython_modules_makefile = $(bin)install_calibcosmicmonpython_modules.make

else

cmt_final_setup_install_calibcosmicmonpython_modules = $(bin)setup.make
cmt_dependencies_in_install_calibcosmicmonpython_modules = $(bin)dependencies.in
#cmt_final_setup_install_calibcosmicmonpython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_calibcosmicmonpython_modules_makefile = $(bin)install_calibcosmicmonpython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_calibcosmicmonpython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_calibcosmicmonpython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_calibcosmicmonpython_modules/
#install_calibcosmicmonpython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/calibcosmicmon/

install_calibcosmicmonpython_modules :: install_calibcosmicmonpython_modulesinstall ;

install :: install_calibcosmicmonpython_modulesinstall ;

install_calibcosmicmonpython_modulesclean :: install_calibcosmicmonpython_modulesuninstall

uninstall :: install_calibcosmicmonpython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_calibcosmicmonpython_modulesinstall :: ;

BeamspotDef_py_dependencies = ../python/calibcosmicmon/BeamspotDef.py
CalibDef_py_dependencies = ../python/calibcosmicmon/CalibDef.py
generateBeamspotChainDefs_py_dependencies = ../python/calibcosmicmon/generateBeamspotChainDefs.py
generateCalibChainDefs_py_dependencies = ../python/calibcosmicmon/generateCalibChainDefs.py
CosmicDef_py_dependencies = ../python/calibcosmicmon/CosmicDef.py
generateCosmicChainDefs_py_dependencies = ../python/calibcosmicmon/generateCosmicChainDefs.py
__init___py_dependencies = ../python/calibcosmicmon/__init__.py
EnhancedBiasSliceFlags_py_dependencies = ../python/calibcosmicmon/EnhancedBiasSliceFlags.py
generateMonitoringChainDefs_py_dependencies = ../python/calibcosmicmon/generateMonitoringChainDefs.py
EnhancedBiasDefs_py_dependencies = ../python/calibcosmicmon/EnhancedBiasDefs.py
MonitorDef_py_dependencies = ../python/calibcosmicmon/MonitorDef.py
BeamspotSliceFlags_py_dependencies = ../python/calibcosmicmon/BeamspotSliceFlags.py
CalibSliceFlags_py_dependencies = ../python/calibcosmicmon/CalibSliceFlags.py
StreamingDef_py_dependencies = ../python/calibcosmicmon/StreamingDef.py
generateStreamingChainDefs_py_dependencies = ../python/calibcosmicmon/generateStreamingChainDefs.py
CosmicSliceFlags_py_dependencies = ../python/calibcosmicmon/CosmicSliceFlags.py
MonitorSliceFlags_py_dependencies = ../python/calibcosmicmon/MonitorSliceFlags.py
generateEnhancedBiasChainDefs_py_dependencies = ../python/calibcosmicmon/generateEnhancedBiasChainDefs.py
StreamingSliceFlags_py_dependencies = ../python/calibcosmicmon/StreamingSliceFlags.py


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/BeamspotDef.py ;

${install_dir}/BeamspotDef.py :: ../python/calibcosmicmon/BeamspotDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/BeamspotDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "BeamspotDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/BeamspotDef.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/BeamspotDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "BeamspotDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/CalibDef.py ;

${install_dir}/CalibDef.py :: ../python/calibcosmicmon/CalibDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/CalibDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CalibDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/CalibDef.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/CalibDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CalibDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/generateBeamspotChainDefs.py ;

${install_dir}/generateBeamspotChainDefs.py :: ../python/calibcosmicmon/generateBeamspotChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateBeamspotChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateBeamspotChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/generateBeamspotChainDefs.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateBeamspotChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateBeamspotChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/generateCalibChainDefs.py ;

${install_dir}/generateCalibChainDefs.py :: ../python/calibcosmicmon/generateCalibChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateCalibChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateCalibChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/generateCalibChainDefs.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateCalibChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateCalibChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/CosmicDef.py ;

${install_dir}/CosmicDef.py :: ../python/calibcosmicmon/CosmicDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/CosmicDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CosmicDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/CosmicDef.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/CosmicDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CosmicDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/generateCosmicChainDefs.py ;

${install_dir}/generateCosmicChainDefs.py :: ../python/calibcosmicmon/generateCosmicChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateCosmicChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateCosmicChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/generateCosmicChainDefs.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateCosmicChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateCosmicChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/calibcosmicmon/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/__init__.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/EnhancedBiasSliceFlags.py ;

${install_dir}/EnhancedBiasSliceFlags.py :: ../python/calibcosmicmon/EnhancedBiasSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/EnhancedBiasSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "EnhancedBiasSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/EnhancedBiasSliceFlags.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/EnhancedBiasSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "EnhancedBiasSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/generateMonitoringChainDefs.py ;

${install_dir}/generateMonitoringChainDefs.py :: ../python/calibcosmicmon/generateMonitoringChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateMonitoringChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateMonitoringChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/generateMonitoringChainDefs.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateMonitoringChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateMonitoringChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/EnhancedBiasDefs.py ;

${install_dir}/EnhancedBiasDefs.py :: ../python/calibcosmicmon/EnhancedBiasDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/EnhancedBiasDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "EnhancedBiasDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/EnhancedBiasDefs.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/EnhancedBiasDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "EnhancedBiasDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/MonitorDef.py ;

${install_dir}/MonitorDef.py :: ../python/calibcosmicmon/MonitorDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/MonitorDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MonitorDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/MonitorDef.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/MonitorDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MonitorDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/BeamspotSliceFlags.py ;

${install_dir}/BeamspotSliceFlags.py :: ../python/calibcosmicmon/BeamspotSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/BeamspotSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "BeamspotSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/BeamspotSliceFlags.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/BeamspotSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "BeamspotSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/CalibSliceFlags.py ;

${install_dir}/CalibSliceFlags.py :: ../python/calibcosmicmon/CalibSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/CalibSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CalibSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/CalibSliceFlags.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/CalibSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CalibSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/StreamingDef.py ;

${install_dir}/StreamingDef.py :: ../python/calibcosmicmon/StreamingDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/StreamingDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "StreamingDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/StreamingDef.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/StreamingDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "StreamingDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/generateStreamingChainDefs.py ;

${install_dir}/generateStreamingChainDefs.py :: ../python/calibcosmicmon/generateStreamingChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateStreamingChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateStreamingChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/generateStreamingChainDefs.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateStreamingChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateStreamingChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/CosmicSliceFlags.py ;

${install_dir}/CosmicSliceFlags.py :: ../python/calibcosmicmon/CosmicSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/CosmicSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CosmicSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/CosmicSliceFlags.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/CosmicSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CosmicSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/MonitorSliceFlags.py ;

${install_dir}/MonitorSliceFlags.py :: ../python/calibcosmicmon/MonitorSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/MonitorSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MonitorSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/MonitorSliceFlags.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/MonitorSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MonitorSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/generateEnhancedBiasChainDefs.py ;

${install_dir}/generateEnhancedBiasChainDefs.py :: ../python/calibcosmicmon/generateEnhancedBiasChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateEnhancedBiasChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateEnhancedBiasChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/generateEnhancedBiasChainDefs.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/generateEnhancedBiasChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateEnhancedBiasChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_calibcosmicmonpython_modulesinstall :: ${install_dir}/StreamingSliceFlags.py ;

${install_dir}/StreamingSliceFlags.py :: ../python/calibcosmicmon/StreamingSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/StreamingSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "StreamingSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/calibcosmicmon/StreamingSliceFlags.py : ;

install_calibcosmicmonpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/calibcosmicmon/StreamingSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "StreamingSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_calibcosmicmonpython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_calibcosmicmonpython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_calibcosmicmonpython_modulesclean ::
#-- end of cleanup_header ---------------
