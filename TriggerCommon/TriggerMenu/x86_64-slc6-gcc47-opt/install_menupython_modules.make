#-- start of make_header -----------------

#====================================
#  Document install_menupython_modules
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

cmt_install_menupython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_menupython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_menupython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_menupython_modules = $(TriggerMenu_tag)_install_menupython_modules.make
cmt_local_tagfile_install_menupython_modules = $(bin)$(TriggerMenu_tag)_install_menupython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_menupython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_menupython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_menupython_modules)
#-include $(cmt_local_tagfile_install_menupython_modules)

ifdef cmt_install_menupython_modules_has_target_tag

cmt_final_setup_install_menupython_modules = $(bin)setup_install_menupython_modules.make
cmt_dependencies_in_install_menupython_modules = $(bin)dependencies_install_menupython_modules.in
#cmt_final_setup_install_menupython_modules = $(bin)TriggerMenu_install_menupython_modulessetup.make
cmt_local_install_menupython_modules_makefile = $(bin)install_menupython_modules.make

else

cmt_final_setup_install_menupython_modules = $(bin)setup.make
cmt_dependencies_in_install_menupython_modules = $(bin)dependencies.in
#cmt_final_setup_install_menupython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_menupython_modules_makefile = $(bin)install_menupython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_menupython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_menupython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_menupython_modules/
#install_menupython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/menu/

install_menupython_modules :: install_menupython_modulesinstall ;

install :: install_menupython_modulesinstall ;

install_menupython_modulesclean :: install_menupython_modulesuninstall

uninstall :: install_menupython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_menupython_modulesinstall :: ;

SignatureDicts_py_dependencies = ../python/menu/SignatureDicts.py
TriggerPythonConfig_py_dependencies = ../python/menu/TriggerPythonConfig.py
Physics_pp_v5_py_dependencies = ../python/menu/Physics_pp_v5.py
DC14_py_dependencies = ../python/menu/DC14.py
Lvl1Flags_py_dependencies = ../python/menu/Lvl1Flags.py
__init___py_dependencies = ../python/menu/__init__.py
L1Seeds_py_dependencies = ../python/menu/L1Seeds.py
ChainDef_py_dependencies = ../python/menu/ChainDef.py
HLTObjects_py_dependencies = ../python/menu/HLTObjects.py
MenuUtil_py_dependencies = ../python/menu/MenuUtil.py
simpleExpress_py_dependencies = ../python/menu/simpleExpress.py
LVL1Config_py_dependencies = ../python/menu/LVL1Config.py
LS1_v1_py_dependencies = ../python/menu/LS1_v1.py
Lumi_py_dependencies = ../python/menu/Lumi.py
StreamInfo_py_dependencies = ../python/menu/StreamInfo.py
MC_pp_v5_py_dependencies = ../python/menu/MC_pp_v5.py
CommonSliceHelper_py_dependencies = ../python/menu/CommonSliceHelper.py
Physics_HI_v3_py_dependencies = ../python/menu/Physics_HI_v3.py
DictFromChainName_py_dependencies = ../python/menu/DictFromChainName.py
SliceFlags_py_dependencies = ../python/menu/SliceFlags.py
HltConfig_py_dependencies = ../python/menu/HltConfig.py
Lvl1_py_dependencies = ../python/menu/Lvl1.py
GenerateMenu_py_dependencies = ../python/menu/GenerateMenu.py
XMLReader_py_dependencies = ../python/menu/XMLReader.py
CommonSliceFlags_py_dependencies = ../python/menu/CommonSliceFlags.py
MenuUtils_py_dependencies = ../python/menu/MenuUtils.py


install_menupython_modulesinstall :: ${install_dir}/SignatureDicts.py ;

${install_dir}/SignatureDicts.py :: ../python/menu/SignatureDicts.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/SignatureDicts.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SignatureDicts.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/SignatureDicts.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/SignatureDicts.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SignatureDicts.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/TriggerPythonConfig.py ;

${install_dir}/TriggerPythonConfig.py :: ../python/menu/TriggerPythonConfig.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/TriggerPythonConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerPythonConfig.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/TriggerPythonConfig.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/TriggerPythonConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerPythonConfig.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/Physics_pp_v5.py ;

${install_dir}/Physics_pp_v5.py :: ../python/menu/Physics_pp_v5.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Physics_pp_v5.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Physics_pp_v5.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/Physics_pp_v5.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Physics_pp_v5.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Physics_pp_v5.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/DC14.py ;

${install_dir}/DC14.py :: ../python/menu/DC14.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/DC14.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DC14.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/DC14.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/DC14.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DC14.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/Lvl1Flags.py ;

${install_dir}/Lvl1Flags.py :: ../python/menu/Lvl1Flags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Lvl1Flags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lvl1Flags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/Lvl1Flags.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Lvl1Flags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lvl1Flags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/menu/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/__init__.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/L1Seeds.py ;

${install_dir}/L1Seeds.py :: ../python/menu/L1Seeds.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/L1Seeds.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1Seeds.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/L1Seeds.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/L1Seeds.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1Seeds.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/ChainDef.py ;

${install_dir}/ChainDef.py :: ../python/menu/ChainDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/ChainDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ChainDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/ChainDef.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/ChainDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ChainDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/HLTObjects.py ;

${install_dir}/HLTObjects.py :: ../python/menu/HLTObjects.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/HLTObjects.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "HLTObjects.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/HLTObjects.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/HLTObjects.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "HLTObjects.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/MenuUtil.py ;

${install_dir}/MenuUtil.py :: ../python/menu/MenuUtil.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/MenuUtil.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MenuUtil.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/MenuUtil.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/MenuUtil.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MenuUtil.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/simpleExpress.py ;

${install_dir}/simpleExpress.py :: ../python/menu/simpleExpress.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/simpleExpress.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "simpleExpress.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/simpleExpress.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/simpleExpress.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "simpleExpress.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/LVL1Config.py ;

${install_dir}/LVL1Config.py :: ../python/menu/LVL1Config.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/LVL1Config.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1Config.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/LVL1Config.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/LVL1Config.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1Config.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/LS1_v1.py ;

${install_dir}/LS1_v1.py :: ../python/menu/LS1_v1.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/LS1_v1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LS1_v1.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/LS1_v1.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/LS1_v1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LS1_v1.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/Lumi.py ;

${install_dir}/Lumi.py :: ../python/menu/Lumi.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Lumi.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lumi.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/Lumi.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Lumi.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lumi.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/StreamInfo.py ;

${install_dir}/StreamInfo.py :: ../python/menu/StreamInfo.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/StreamInfo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "StreamInfo.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/StreamInfo.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/StreamInfo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "StreamInfo.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/MC_pp_v5.py ;

${install_dir}/MC_pp_v5.py :: ../python/menu/MC_pp_v5.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/MC_pp_v5.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MC_pp_v5.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/MC_pp_v5.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/MC_pp_v5.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MC_pp_v5.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/CommonSliceHelper.py ;

${install_dir}/CommonSliceHelper.py :: ../python/menu/CommonSliceHelper.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/CommonSliceHelper.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CommonSliceHelper.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/CommonSliceHelper.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/CommonSliceHelper.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CommonSliceHelper.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/Physics_HI_v3.py ;

${install_dir}/Physics_HI_v3.py :: ../python/menu/Physics_HI_v3.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Physics_HI_v3.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Physics_HI_v3.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/Physics_HI_v3.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Physics_HI_v3.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Physics_HI_v3.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/DictFromChainName.py ;

${install_dir}/DictFromChainName.py :: ../python/menu/DictFromChainName.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/DictFromChainName.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "DictFromChainName.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/DictFromChainName.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/DictFromChainName.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "DictFromChainName.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/SliceFlags.py ;

${install_dir}/SliceFlags.py :: ../python/menu/SliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/SliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/SliceFlags.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/SliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/HltConfig.py ;

${install_dir}/HltConfig.py :: ../python/menu/HltConfig.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/HltConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "HltConfig.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/HltConfig.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/HltConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "HltConfig.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/Lvl1.py ;

${install_dir}/Lvl1.py :: ../python/menu/Lvl1.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Lvl1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lvl1.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/Lvl1.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/Lvl1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lvl1.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/GenerateMenu.py ;

${install_dir}/GenerateMenu.py :: ../python/menu/GenerateMenu.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/GenerateMenu.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "GenerateMenu.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/GenerateMenu.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/GenerateMenu.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "GenerateMenu.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/XMLReader.py ;

${install_dir}/XMLReader.py :: ../python/menu/XMLReader.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/XMLReader.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "XMLReader.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/XMLReader.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/XMLReader.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "XMLReader.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/CommonSliceFlags.py ;

${install_dir}/CommonSliceFlags.py :: ../python/menu/CommonSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/CommonSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CommonSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/CommonSliceFlags.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/CommonSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CommonSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_menupython_modulesinstall :: ${install_dir}/MenuUtils.py ;

${install_dir}/MenuUtils.py :: ../python/menu/MenuUtils.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/MenuUtils.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MenuUtils.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/menu/MenuUtils.py : ;

install_menupython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/menu/MenuUtils.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MenuUtils.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_menupython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_menupython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_menupython_modulesclean ::
#-- end of cleanup_header ---------------