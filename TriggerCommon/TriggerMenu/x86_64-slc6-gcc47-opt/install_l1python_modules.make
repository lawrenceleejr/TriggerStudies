#-- start of make_header -----------------

#====================================
#  Document install_l1python_modules
#
#   Generated Fri Nov 14 10:51:41 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_l1python_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_l1python_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_l1python_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_l1python_modules = $(TriggerMenu_tag)_install_l1python_modules.make
cmt_local_tagfile_install_l1python_modules = $(bin)$(TriggerMenu_tag)_install_l1python_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_l1python_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_l1python_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_l1python_modules)
#-include $(cmt_local_tagfile_install_l1python_modules)

ifdef cmt_install_l1python_modules_has_target_tag

cmt_final_setup_install_l1python_modules = $(bin)setup_install_l1python_modules.make
cmt_dependencies_in_install_l1python_modules = $(bin)dependencies_install_l1python_modules.in
#cmt_final_setup_install_l1python_modules = $(bin)TriggerMenu_install_l1python_modulessetup.make
cmt_local_install_l1python_modules_makefile = $(bin)install_l1python_modules.make

else

cmt_final_setup_install_l1python_modules = $(bin)setup.make
cmt_dependencies_in_install_l1python_modules = $(bin)dependencies.in
#cmt_final_setup_install_l1python_modules = $(bin)TriggerMenusetup.make
cmt_local_install_l1python_modules_makefile = $(bin)install_l1python_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_l1python_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_l1python_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_l1python_modules/
#install_l1python_modules::
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

install_dir = ${installarea}/python/TriggerMenu/l1/

install_l1python_modules :: install_l1python_modulesinstall ;

install :: install_l1python_modulesinstall ;

install_l1python_modulesclean :: install_l1python_modulesuninstall

uninstall :: install_l1python_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_l1python_modulesinstall :: ;

BunchGroupSet_py_dependencies = ../python/l1/BunchGroupSet.py
CaloInfo_py_dependencies = ../python/l1/CaloInfo.py
Lvl1Flags_py_dependencies = ../python/l1/Lvl1Flags.py
Logic_py_dependencies = ../python/l1/Logic.py
PrescaleHelper_py_dependencies = ../python/l1/PrescaleHelper.py
__init___py_dependencies = ../python/l1/__init__.py
Cabling_py_dependencies = ../python/l1/Cabling.py
Limits_py_dependencies = ../python/l1/Limits.py
Lvl1MenuUtil_py_dependencies = ../python/l1/Lvl1MenuUtil.py
CTPInfo_py_dependencies = ../python/l1/CTPInfo.py
Lvl1Menu_py_dependencies = ../python/l1/Lvl1Menu.py
Lvl1MenuItems_py_dependencies = ../python/l1/Lvl1MenuItems.py
XMLMenuReader_py_dependencies = ../python/l1/XMLMenuReader.py
Lvl1MonCounters_py_dependencies = ../python/l1/Lvl1MonCounters.py
MuctpiInfo_py_dependencies = ../python/l1/MuctpiInfo.py
Lvl1Thresholds_py_dependencies = ../python/l1/Lvl1Thresholds.py
XMLReader_py_dependencies = ../python/l1/XMLReader.py
TriggerTypeDef_py_dependencies = ../python/l1/TriggerTypeDef.py
Lvl1Condition_py_dependencies = ../python/l1/Lvl1Condition.py


install_l1python_modulesinstall :: ${install_dir}/BunchGroupSet.py ;

${install_dir}/BunchGroupSet.py :: ../python/l1/BunchGroupSet.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/BunchGroupSet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "BunchGroupSet.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/BunchGroupSet.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/BunchGroupSet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "BunchGroupSet.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/CaloInfo.py ;

${install_dir}/CaloInfo.py :: ../python/l1/CaloInfo.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/CaloInfo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CaloInfo.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/CaloInfo.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/CaloInfo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CaloInfo.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Lvl1Flags.py ;

${install_dir}/Lvl1Flags.py :: ../python/l1/Lvl1Flags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1Flags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lvl1Flags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Lvl1Flags.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1Flags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lvl1Flags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Logic.py ;

${install_dir}/Logic.py :: ../python/l1/Logic.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Logic.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Logic.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Logic.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Logic.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Logic.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/PrescaleHelper.py ;

${install_dir}/PrescaleHelper.py :: ../python/l1/PrescaleHelper.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/PrescaleHelper.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "PrescaleHelper.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/PrescaleHelper.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/PrescaleHelper.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "PrescaleHelper.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/l1/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/__init__.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Cabling.py ;

${install_dir}/Cabling.py :: ../python/l1/Cabling.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Cabling.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Cabling.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Cabling.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Cabling.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Cabling.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Limits.py ;

${install_dir}/Limits.py :: ../python/l1/Limits.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Limits.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Limits.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Limits.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Limits.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Limits.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Lvl1MenuUtil.py ;

${install_dir}/Lvl1MenuUtil.py :: ../python/l1/Lvl1MenuUtil.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1MenuUtil.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lvl1MenuUtil.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Lvl1MenuUtil.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1MenuUtil.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lvl1MenuUtil.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/CTPInfo.py ;

${install_dir}/CTPInfo.py :: ../python/l1/CTPInfo.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/CTPInfo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "CTPInfo.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/CTPInfo.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/CTPInfo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "CTPInfo.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Lvl1Menu.py ;

${install_dir}/Lvl1Menu.py :: ../python/l1/Lvl1Menu.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1Menu.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lvl1Menu.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Lvl1Menu.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1Menu.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lvl1Menu.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Lvl1MenuItems.py ;

${install_dir}/Lvl1MenuItems.py :: ../python/l1/Lvl1MenuItems.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1MenuItems.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lvl1MenuItems.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Lvl1MenuItems.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1MenuItems.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lvl1MenuItems.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/XMLMenuReader.py ;

${install_dir}/XMLMenuReader.py :: ../python/l1/XMLMenuReader.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/XMLMenuReader.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "XMLMenuReader.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/XMLMenuReader.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/XMLMenuReader.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "XMLMenuReader.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Lvl1MonCounters.py ;

${install_dir}/Lvl1MonCounters.py :: ../python/l1/Lvl1MonCounters.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1MonCounters.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lvl1MonCounters.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Lvl1MonCounters.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1MonCounters.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lvl1MonCounters.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/MuctpiInfo.py ;

${install_dir}/MuctpiInfo.py :: ../python/l1/MuctpiInfo.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/MuctpiInfo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MuctpiInfo.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/MuctpiInfo.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/MuctpiInfo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MuctpiInfo.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Lvl1Thresholds.py ;

${install_dir}/Lvl1Thresholds.py :: ../python/l1/Lvl1Thresholds.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1Thresholds.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lvl1Thresholds.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Lvl1Thresholds.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1Thresholds.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lvl1Thresholds.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/XMLReader.py ;

${install_dir}/XMLReader.py :: ../python/l1/XMLReader.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/XMLReader.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "XMLReader.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/XMLReader.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/XMLReader.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "XMLReader.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/TriggerTypeDef.py ;

${install_dir}/TriggerTypeDef.py :: ../python/l1/TriggerTypeDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/TriggerTypeDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerTypeDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/TriggerTypeDef.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/TriggerTypeDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerTypeDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_l1python_modulesinstall :: ${install_dir}/Lvl1Condition.py ;

${install_dir}/Lvl1Condition.py :: ../python/l1/Lvl1Condition.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1Condition.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Lvl1Condition.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/l1/Lvl1Condition.py : ;

install_l1python_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/l1/Lvl1Condition.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Lvl1Condition.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_l1python_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_l1python_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_l1python_modulesclean ::
#-- end of cleanup_header ---------------