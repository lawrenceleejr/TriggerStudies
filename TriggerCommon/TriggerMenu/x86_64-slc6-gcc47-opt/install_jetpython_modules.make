#-- start of make_header -----------------

#====================================
#  Document install_jetpython_modules
#
#   Generated Fri Nov 14 10:51:47 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_jetpython_modules_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_jetpython_modules_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_jetpython_modules

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_jetpython_modules = $(TriggerMenu_tag)_install_jetpython_modules.make
cmt_local_tagfile_install_jetpython_modules = $(bin)$(TriggerMenu_tag)_install_jetpython_modules.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenu_tag = $(tag)

#cmt_local_tagfile_install_jetpython_modules = $(TriggerMenu_tag).make
cmt_local_tagfile_install_jetpython_modules = $(bin)$(TriggerMenu_tag).make

endif

include $(cmt_local_tagfile_install_jetpython_modules)
#-include $(cmt_local_tagfile_install_jetpython_modules)

ifdef cmt_install_jetpython_modules_has_target_tag

cmt_final_setup_install_jetpython_modules = $(bin)setup_install_jetpython_modules.make
cmt_dependencies_in_install_jetpython_modules = $(bin)dependencies_install_jetpython_modules.in
#cmt_final_setup_install_jetpython_modules = $(bin)TriggerMenu_install_jetpython_modulessetup.make
cmt_local_install_jetpython_modules_makefile = $(bin)install_jetpython_modules.make

else

cmt_final_setup_install_jetpython_modules = $(bin)setup.make
cmt_dependencies_in_install_jetpython_modules = $(bin)dependencies.in
#cmt_final_setup_install_jetpython_modules = $(bin)TriggerMenusetup.make
cmt_local_install_jetpython_modules_makefile = $(bin)install_jetpython_modules.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenusetup.make

#install_jetpython_modules :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_jetpython_modules'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_jetpython_modules/
#install_jetpython_modules::
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

install_dir = ${installarea}/python/TriggerMenu/jet/

install_jetpython_modules :: install_jetpython_modulesinstall ;

install :: install_jetpython_modulesinstall ;

install_jetpython_modulesclean :: install_jetpython_modulesuninstall

uninstall :: install_jetpython_modulesuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_jetpython_modulesinstall :: ;

JetDef_HT_py_dependencies = ../python/jet/JetDef_HT.py
__init___py_dependencies = ../python/jet/__init__.py
jetDefInstantiator_test_py_dependencies = ../python/jet/jetDefInstantiator_test.py
JetDef_test_py_dependencies = ../python/jet/JetDef_test.py
generateJetChainDefs_py_dependencies = ../python/jet/generateJetChainDefs.py
algFactories_test_py_dependencies = ../python/jet/algFactories_test.py
hypo_factory_test_py_dependencies = ../python/jet/hypo_factory_test.py
hypo_factory_py_dependencies = ../python/jet/hypo_factory.py
InstantiatorFactory_test_py_dependencies = ../python/jet/InstantiatorFactory_test.py
cluster_factory_py_dependencies = ../python/jet/cluster_factory.py
ChainConfig_py_dependencies = ../python/jet/ChainConfig.py
fex_factory_py_dependencies = ../python/jet/fex_factory.py
jetDefAlgToString_test_py_dependencies = ../python/jet/jetDefAlgToString_test.py
run_coverage_py_dependencies = ../python/jet/run_coverage.py
SequenceTree_py_dependencies = ../python/jet/SequenceTree.py
exc2string_py_dependencies = ../python/jet/exc2string.py
ChainConfigMaker_py_dependencies = ../python/jet/ChainConfigMaker.py
MenuData_py_dependencies = ../python/jet/MenuData.py
JetDef_py_dependencies = ../python/jet/JetDef.py
jetDefInstantiator_py_dependencies = ../python/jet/jetDefInstantiator.py
algFactories_py_dependencies = ../python/jet/algFactories.py
Sequence_test_py_dependencies = ../python/jet/Sequence_test.py
InstantiatorFactory_py_dependencies = ../python/jet/InstantiatorFactory.py
Sequence_py_dependencies = ../python/jet/Sequence.py
fex_factory_test_py_dependencies = ../python/jet/fex_factory_test.py
JetSequenceRouter_test_py_dependencies = ../python/jet/JetSequenceRouter_test.py
JetSequenceRouter_py_dependencies = ../python/jet/JetSequenceRouter.py
run_testsuite_py_dependencies = ../python/jet/run_testsuite.py
JetSliceFlags_py_dependencies = ../python/jet/JetSliceFlags.py
jetDefAlgToString_py_dependencies = ../python/jet/jetDefAlgToString.py
KnownChains_test_py_dependencies = ../python/jet/KnownChains_test.py


install_jetpython_modulesinstall :: ${install_dir}/JetDef_HT.py ;

${install_dir}/JetDef_HT.py :: ../python/jet/JetDef_HT.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetDef_HT.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "JetDef_HT.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/JetDef_HT.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetDef_HT.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "JetDef_HT.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/__init__.py ;

${install_dir}/__init__.py :: ../python/jet/__init__.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "__init__.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/__init__.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/__init__.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "__init__.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/jetDefInstantiator_test.py ;

${install_dir}/jetDefInstantiator_test.py :: ../python/jet/jetDefInstantiator_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/jetDefInstantiator_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jetDefInstantiator_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/jetDefInstantiator_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/jetDefInstantiator_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jetDefInstantiator_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/JetDef_test.py ;

${install_dir}/JetDef_test.py :: ../python/jet/JetDef_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetDef_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "JetDef_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/JetDef_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetDef_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "JetDef_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/generateJetChainDefs.py ;

${install_dir}/generateJetChainDefs.py :: ../python/jet/generateJetChainDefs.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/generateJetChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "generateJetChainDefs.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/generateJetChainDefs.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/generateJetChainDefs.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "generateJetChainDefs.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/algFactories_test.py ;

${install_dir}/algFactories_test.py :: ../python/jet/algFactories_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/algFactories_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "algFactories_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/algFactories_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/algFactories_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "algFactories_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/hypo_factory_test.py ;

${install_dir}/hypo_factory_test.py :: ../python/jet/hypo_factory_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/hypo_factory_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "hypo_factory_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/hypo_factory_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/hypo_factory_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "hypo_factory_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/hypo_factory.py ;

${install_dir}/hypo_factory.py :: ../python/jet/hypo_factory.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/hypo_factory.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "hypo_factory.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/hypo_factory.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/hypo_factory.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "hypo_factory.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/InstantiatorFactory_test.py ;

${install_dir}/InstantiatorFactory_test.py :: ../python/jet/InstantiatorFactory_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/InstantiatorFactory_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InstantiatorFactory_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/InstantiatorFactory_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/InstantiatorFactory_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InstantiatorFactory_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/cluster_factory.py ;

${install_dir}/cluster_factory.py :: ../python/jet/cluster_factory.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/cluster_factory.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "cluster_factory.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/cluster_factory.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/cluster_factory.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "cluster_factory.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/ChainConfig.py ;

${install_dir}/ChainConfig.py :: ../python/jet/ChainConfig.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/ChainConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ChainConfig.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/ChainConfig.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/ChainConfig.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ChainConfig.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/fex_factory.py ;

${install_dir}/fex_factory.py :: ../python/jet/fex_factory.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/fex_factory.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "fex_factory.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/fex_factory.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/fex_factory.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "fex_factory.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/jetDefAlgToString_test.py ;

${install_dir}/jetDefAlgToString_test.py :: ../python/jet/jetDefAlgToString_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/jetDefAlgToString_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jetDefAlgToString_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/jetDefAlgToString_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/jetDefAlgToString_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jetDefAlgToString_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/run_coverage.py ;

${install_dir}/run_coverage.py :: ../python/jet/run_coverage.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/run_coverage.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "run_coverage.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/run_coverage.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/run_coverage.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "run_coverage.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/SequenceTree.py ;

${install_dir}/SequenceTree.py :: ../python/jet/SequenceTree.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/SequenceTree.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "SequenceTree.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/SequenceTree.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/SequenceTree.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "SequenceTree.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/exc2string.py ;

${install_dir}/exc2string.py :: ../python/jet/exc2string.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/exc2string.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "exc2string.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/exc2string.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/exc2string.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "exc2string.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/ChainConfigMaker.py ;

${install_dir}/ChainConfigMaker.py :: ../python/jet/ChainConfigMaker.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/ChainConfigMaker.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ChainConfigMaker.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/ChainConfigMaker.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/ChainConfigMaker.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ChainConfigMaker.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/MenuData.py ;

${install_dir}/MenuData.py :: ../python/jet/MenuData.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/MenuData.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "MenuData.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/MenuData.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/MenuData.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "MenuData.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/JetDef.py ;

${install_dir}/JetDef.py :: ../python/jet/JetDef.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "JetDef.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/JetDef.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetDef.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "JetDef.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/jetDefInstantiator.py ;

${install_dir}/jetDefInstantiator.py :: ../python/jet/jetDefInstantiator.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/jetDefInstantiator.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jetDefInstantiator.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/jetDefInstantiator.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/jetDefInstantiator.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jetDefInstantiator.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/algFactories.py ;

${install_dir}/algFactories.py :: ../python/jet/algFactories.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/algFactories.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "algFactories.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/algFactories.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/algFactories.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "algFactories.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/Sequence_test.py ;

${install_dir}/Sequence_test.py :: ../python/jet/Sequence_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/Sequence_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Sequence_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/Sequence_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/Sequence_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Sequence_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/InstantiatorFactory.py ;

${install_dir}/InstantiatorFactory.py :: ../python/jet/InstantiatorFactory.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/InstantiatorFactory.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "InstantiatorFactory.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/InstantiatorFactory.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/InstantiatorFactory.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "InstantiatorFactory.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/Sequence.py ;

${install_dir}/Sequence.py :: ../python/jet/Sequence.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/Sequence.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "Sequence.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/Sequence.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/Sequence.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "Sequence.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/fex_factory_test.py ;

${install_dir}/fex_factory_test.py :: ../python/jet/fex_factory_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/fex_factory_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "fex_factory_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/fex_factory_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/fex_factory_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "fex_factory_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/JetSequenceRouter_test.py ;

${install_dir}/JetSequenceRouter_test.py :: ../python/jet/JetSequenceRouter_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetSequenceRouter_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "JetSequenceRouter_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/JetSequenceRouter_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetSequenceRouter_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "JetSequenceRouter_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/JetSequenceRouter.py ;

${install_dir}/JetSequenceRouter.py :: ../python/jet/JetSequenceRouter.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetSequenceRouter.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "JetSequenceRouter.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/JetSequenceRouter.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetSequenceRouter.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "JetSequenceRouter.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/run_testsuite.py ;

${install_dir}/run_testsuite.py :: ../python/jet/run_testsuite.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/run_testsuite.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "run_testsuite.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/run_testsuite.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/run_testsuite.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "run_testsuite.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/JetSliceFlags.py ;

${install_dir}/JetSliceFlags.py :: ../python/jet/JetSliceFlags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "JetSliceFlags.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/JetSliceFlags.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/JetSliceFlags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "JetSliceFlags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/jetDefAlgToString.py ;

${install_dir}/jetDefAlgToString.py :: ../python/jet/jetDefAlgToString.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/jetDefAlgToString.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jetDefAlgToString.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/jetDefAlgToString.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/jetDefAlgToString.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jetDefAlgToString.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_jetpython_modulesinstall :: ${install_dir}/KnownChains_test.py ;

${install_dir}/KnownChains_test.py :: ../python/jet/KnownChains_test.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/KnownChains_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "KnownChains_test.py" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../python/jet/KnownChains_test.py : ;

install_jetpython_modulesuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../python/jet/KnownChains_test.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "KnownChains_test.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_jetpython_modulesclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_jetpython_modules.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_jetpython_modulesclean ::
#-- end of cleanup_header ---------------
