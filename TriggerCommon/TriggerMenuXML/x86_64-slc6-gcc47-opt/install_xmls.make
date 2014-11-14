#-- start of make_header -----------------

#====================================
#  Document install_xmls
#
#   Generated Fri Nov 14 10:53:44 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_xmls_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_xmls_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_xmls

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_install_xmls = $(TriggerMenuXML_tag)_install_xmls.make
cmt_local_tagfile_install_xmls = $(bin)$(TriggerMenuXML_tag)_install_xmls.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_install_xmls = $(TriggerMenuXML_tag).make
cmt_local_tagfile_install_xmls = $(bin)$(TriggerMenuXML_tag).make

endif

include $(cmt_local_tagfile_install_xmls)
#-include $(cmt_local_tagfile_install_xmls)

ifdef cmt_install_xmls_has_target_tag

cmt_final_setup_install_xmls = $(bin)setup_install_xmls.make
cmt_dependencies_in_install_xmls = $(bin)dependencies_install_xmls.in
#cmt_final_setup_install_xmls = $(bin)TriggerMenuXML_install_xmlssetup.make
cmt_local_install_xmls_makefile = $(bin)install_xmls.make

else

cmt_final_setup_install_xmls = $(bin)setup.make
cmt_dependencies_in_install_xmls = $(bin)dependencies.in
#cmt_final_setup_install_xmls = $(bin)TriggerMenuXMLsetup.make
cmt_local_install_xmls_makefile = $(bin)install_xmls.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenuXMLsetup.make

#install_xmls :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_xmls'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_xmls/
#install_xmls::
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

install_dir = ${installarea}/XML/TriggerMenuXML

install_xmls :: install_xmlsinstall ;

install :: install_xmlsinstall ;

install_xmlsclean :: install_xmlsuninstall

uninstall :: install_xmlsuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_xmlsinstall :: ;

LVL1config_Collision_v1_3-bit_trigger_types_20080916_xml_dependencies = ../data/LVL1config_Collision_v1_3-bit_trigger_types_20080916.xml
L1Menu_Cosmics_M7_xml_dependencies = ../data/L1Menu_Cosmics_M7.xml
LVL1config_Collision_v1_7-bit_trigger_types_20080916_xml_dependencies = ../data/LVL1config_Collision_v1_7-bit_trigger_types_20080916.xml
LVL1config_Physics_lumi1E31_15.2.0_xml_dependencies = ../data/LVL1config_Physics_lumi1E31_15.2.0.xml
LVL1config_MC_pp_v2_xml_dependencies = ../data/LVL1config_MC_pp_v2.xml
LVL1config_Physics_HI_v1_xml_dependencies = ../data/LVL1config_Physics_HI_v1.xml
LVL1config_MC_pp_v5_xml_dependencies = ../data/LVL1config_MC_pp_v5.xml
LVL1config_Physics_HI_v2_xml_dependencies = ../data/LVL1config_Physics_HI_v2.xml
LVL1config_Physics_HI_v3_xml_dependencies = ../data/LVL1config_Physics_HI_v3.xml
LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916_xml_dependencies = ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916.xml
LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913_xml_dependencies = ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913.xml
LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916_xml_dependencies = ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916.xml
LVL1config_Cosmic2009_inclMuons_xml_dependencies = ../data/LVL1config_Cosmic2009_inclMuons.xml
LVL1config_L1_pp_v2_xml_dependencies = ../data/LVL1config_L1_pp_v2.xml
LVL1config_L1_pp_v3_xml_dependencies = ../data/LVL1config_L1_pp_v3.xml
LVL1config_InitialBeam_v2_xml_dependencies = ../data/LVL1config_InitialBeam_v2.xml
LVL1config_InitialBeam_v3_xml_dependencies = ../data/LVL1config_InitialBeam_v3.xml
ChainTagMap_xml_dependencies = ../data/ChainTagMap.xml
LVL1config_Cosmic2009_v2_xml_dependencies = ../data/LVL1config_Cosmic2009_v2.xml
LVL1config_LS1_xml_dependencies = ../data/LVL1config_LS1.xml
LVL1config_InitialBeam_HI_v1_xml_dependencies = ../data/LVL1config_InitialBeam_HI_v1.xml
L1MenuM4_xml_dependencies = ../data/L1MenuM4.xml
LVL1config_L1_alfa_v1_xml_dependencies = ../data/LVL1config_L1_alfa_v1.xml
LVL1config_L1_alfa_v2_xml_dependencies = ../data/LVL1config_L1_alfa_v2.xml
LVL1config_Cosmic2009_v1_7-bit_trigger_types_xml_dependencies = ../data/LVL1config_Cosmic2009_v1_7-bit_trigger_types.xml
LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905_xml_dependencies = ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905.xml
LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905_xml_dependencies = ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905.xml
L1MenuM5_xml_dependencies = ../data/L1MenuM5.xml
L1Menu_Cosmics_20080703_xml_dependencies = ../data/L1Menu_Cosmics_20080703.xml
L1MenuM6_xml_dependencies = ../data/L1MenuM6.xml
LVL1config_SingleBeam_v1_3-bit_trigger_types_xml_dependencies = ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types.xml
LVL1config_SingleBeam_v1_7-bit_trigger_types_xml_dependencies = ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types.xml
LVL1config_Physics_pp_v1_xml_dependencies = ../data/LVL1config_Physics_pp_v1.xml
LVL1config_Physics_pp_v2_xml_dependencies = ../data/LVL1config_Physics_pp_v2.xml
L1Menu_Cosmics_20080729_xml_dependencies = ../data/L1Menu_Cosmics_20080729.xml
LVL1config_Physics_pp_v3_xml_dependencies = ../data/LVL1config_Physics_pp_v3.xml
LVL1config_Cosmic2009_simpleL1Calib_xml_dependencies = ../data/LVL1config_Cosmic2009_simpleL1Calib.xml
LVL1config_Physics_pp_v4_preJuneTS_xml_dependencies = ../data/LVL1config_Physics_pp_v4_preJuneTS.xml
LVL1config_Physics_pp_v4_xml_dependencies = ../data/LVL1config_Physics_pp_v4.xml
L1Topoconfig_Physics_pp_v5_xml_dependencies = ../data/L1Topoconfig_Physics_pp_v5.xml
LVL1config_DC14_xml_dependencies = ../data/LVL1config_DC14.xml
LVL1config_Physics_pp_v5_xml_dependencies = ../data/LVL1config_Physics_pp_v5.xml
L1Topoconfig_DC14_20.0.0_xml_dependencies = ../data/L1Topoconfig_DC14_20.0.0.xml
L1Topoconfig_LS1_v1_20.0.0_xml_dependencies = ../data/L1Topoconfig_LS1_v1_20.0.0.xml
L1Topoconfig_MC_pp_v5_20.0.0_xml_dependencies = ../data/L1Topoconfig_MC_pp_v5_20.0.0.xml
L1Topoconfig_Physics_pp_v5_20.0.0_xml_dependencies = ../data/L1Topoconfig_Physics_pp_v5_20.0.0.xml
LVL1config_Physics_HI_v3_20.0.0_xml_dependencies = ../data/LVL1config_Physics_HI_v3_20.0.0.xml
HLTconfig_Physics_HI_v3_20.0.0_xml_dependencies = ../data/HLTconfig_Physics_HI_v3_20.0.0.xml
LVL1config_LS1_v1_20.0.0_xml_dependencies = ../data/LVL1config_LS1_v1_20.0.0.xml
HLTconfig_LS1_v1_20.0.0_xml_dependencies = ../data/HLTconfig_LS1_v1_20.0.0.xml
LVL1config_Physics_pp_v5_20.0.0_xml_dependencies = ../data/LVL1config_Physics_pp_v5_20.0.0.xml
HLTconfig_Physics_pp_v5_20.0.0_xml_dependencies = ../data/HLTconfig_Physics_pp_v5_20.0.0.xml
LVL1config_DC14_tight_mc_prescale_20.0.0_xml_dependencies = ../data/LVL1config_DC14_tight_mc_prescale_20.0.0.xml
HLTconfig_DC14_tight_mc_prescale_20.0.0_xml_dependencies = ../data/HLTconfig_DC14_tight_mc_prescale_20.0.0.xml
LVL1config_DC14_loose_mc_prescale_20.0.0_xml_dependencies = ../data/LVL1config_DC14_loose_mc_prescale_20.0.0.xml
HLTconfig_DC14_loose_mc_prescale_20.0.0_xml_dependencies = ../data/HLTconfig_DC14_loose_mc_prescale_20.0.0.xml
LVL1config_DC14_20.0.0_xml_dependencies = ../data/LVL1config_DC14_20.0.0.xml
HLTconfig_DC14_20.0.0_xml_dependencies = ../data/HLTconfig_DC14_20.0.0.xml
LVL1config_MC_pp_v5_20.0.0_xml_dependencies = ../data/LVL1config_MC_pp_v5_20.0.0.xml
HLTconfig_MC_pp_v5_20.0.0_xml_dependencies = ../data/HLTconfig_MC_pp_v5_20.0.0.xml


install_xmlsinstall :: ${install_dir}/LVL1config_Collision_v1_3-bit_trigger_types_20080916.xml ;

${install_dir}/LVL1config_Collision_v1_3-bit_trigger_types_20080916.xml :: ../data/LVL1config_Collision_v1_3-bit_trigger_types_20080916.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Collision_v1_3-bit_trigger_types_20080916.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Collision_v1_3-bit_trigger_types_20080916.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Collision_v1_3-bit_trigger_types_20080916.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Collision_v1_3-bit_trigger_types_20080916.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Collision_v1_3-bit_trigger_types_20080916.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1Menu_Cosmics_M7.xml ;

${install_dir}/L1Menu_Cosmics_M7.xml :: ../data/L1Menu_Cosmics_M7.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Menu_Cosmics_M7.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1Menu_Cosmics_M7.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1Menu_Cosmics_M7.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Menu_Cosmics_M7.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1Menu_Cosmics_M7.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Collision_v1_7-bit_trigger_types_20080916.xml ;

${install_dir}/LVL1config_Collision_v1_7-bit_trigger_types_20080916.xml :: ../data/LVL1config_Collision_v1_7-bit_trigger_types_20080916.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Collision_v1_7-bit_trigger_types_20080916.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Collision_v1_7-bit_trigger_types_20080916.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Collision_v1_7-bit_trigger_types_20080916.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Collision_v1_7-bit_trigger_types_20080916.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Collision_v1_7-bit_trigger_types_20080916.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_lumi1E31_15.2.0.xml ;

${install_dir}/LVL1config_Physics_lumi1E31_15.2.0.xml :: ../data/LVL1config_Physics_lumi1E31_15.2.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_lumi1E31_15.2.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_lumi1E31_15.2.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_lumi1E31_15.2.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_lumi1E31_15.2.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_lumi1E31_15.2.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_MC_pp_v2.xml ;

${install_dir}/LVL1config_MC_pp_v2.xml :: ../data/LVL1config_MC_pp_v2.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_MC_pp_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_MC_pp_v2.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_MC_pp_v2.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_MC_pp_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_MC_pp_v2.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_HI_v1.xml ;

${install_dir}/LVL1config_Physics_HI_v1.xml :: ../data/LVL1config_Physics_HI_v1.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_HI_v1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_HI_v1.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_HI_v1.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_HI_v1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_HI_v1.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_MC_pp_v5.xml ;

${install_dir}/LVL1config_MC_pp_v5.xml :: ../data/LVL1config_MC_pp_v5.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_MC_pp_v5.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_MC_pp_v5.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_MC_pp_v5.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_MC_pp_v5.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_MC_pp_v5.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_HI_v2.xml ;

${install_dir}/LVL1config_Physics_HI_v2.xml :: ../data/LVL1config_Physics_HI_v2.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_HI_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_HI_v2.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_HI_v2.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_HI_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_HI_v2.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_HI_v3.xml ;

${install_dir}/LVL1config_Physics_HI_v3.xml :: ../data/LVL1config_Physics_HI_v3.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_HI_v3.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_HI_v3.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_HI_v3.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_HI_v3.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_HI_v3.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916.xml ;

${install_dir}/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916.xml :: ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_SingleBeam_v1_3-bit_trigger_types_20080916.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913.xml ;

${install_dir}/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913.xml :: ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_SingleBeam_v1_7-bit_trigger_types_20080913.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916.xml ;

${install_dir}/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916.xml :: ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_SingleBeam_v1_7-bit_trigger_types_20080916.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Cosmic2009_inclMuons.xml ;

${install_dir}/LVL1config_Cosmic2009_inclMuons.xml :: ../data/LVL1config_Cosmic2009_inclMuons.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Cosmic2009_inclMuons.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Cosmic2009_inclMuons.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Cosmic2009_inclMuons.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Cosmic2009_inclMuons.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Cosmic2009_inclMuons.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_L1_pp_v2.xml ;

${install_dir}/LVL1config_L1_pp_v2.xml :: ../data/LVL1config_L1_pp_v2.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_L1_pp_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_L1_pp_v2.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_L1_pp_v2.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_L1_pp_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_L1_pp_v2.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_L1_pp_v3.xml ;

${install_dir}/LVL1config_L1_pp_v3.xml :: ../data/LVL1config_L1_pp_v3.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_L1_pp_v3.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_L1_pp_v3.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_L1_pp_v3.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_L1_pp_v3.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_L1_pp_v3.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_InitialBeam_v2.xml ;

${install_dir}/LVL1config_InitialBeam_v2.xml :: ../data/LVL1config_InitialBeam_v2.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_InitialBeam_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_InitialBeam_v2.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_InitialBeam_v2.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_InitialBeam_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_InitialBeam_v2.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_InitialBeam_v3.xml ;

${install_dir}/LVL1config_InitialBeam_v3.xml :: ../data/LVL1config_InitialBeam_v3.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_InitialBeam_v3.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_InitialBeam_v3.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_InitialBeam_v3.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_InitialBeam_v3.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_InitialBeam_v3.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/ChainTagMap.xml ;

${install_dir}/ChainTagMap.xml :: ../data/ChainTagMap.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ChainTagMap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "ChainTagMap.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/ChainTagMap.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/ChainTagMap.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "ChainTagMap.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Cosmic2009_v2.xml ;

${install_dir}/LVL1config_Cosmic2009_v2.xml :: ../data/LVL1config_Cosmic2009_v2.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Cosmic2009_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Cosmic2009_v2.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Cosmic2009_v2.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Cosmic2009_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Cosmic2009_v2.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_LS1.xml ;

${install_dir}/LVL1config_LS1.xml :: ../data/LVL1config_LS1.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_LS1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_LS1.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_LS1.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_LS1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_LS1.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_InitialBeam_HI_v1.xml ;

${install_dir}/LVL1config_InitialBeam_HI_v1.xml :: ../data/LVL1config_InitialBeam_HI_v1.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_InitialBeam_HI_v1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_InitialBeam_HI_v1.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_InitialBeam_HI_v1.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_InitialBeam_HI_v1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_InitialBeam_HI_v1.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1MenuM4.xml ;

${install_dir}/L1MenuM4.xml :: ../data/L1MenuM4.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1MenuM4.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1MenuM4.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1MenuM4.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1MenuM4.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1MenuM4.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_L1_alfa_v1.xml ;

${install_dir}/LVL1config_L1_alfa_v1.xml :: ../data/LVL1config_L1_alfa_v1.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_L1_alfa_v1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_L1_alfa_v1.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_L1_alfa_v1.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_L1_alfa_v1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_L1_alfa_v1.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_L1_alfa_v2.xml ;

${install_dir}/LVL1config_L1_alfa_v2.xml :: ../data/LVL1config_L1_alfa_v2.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_L1_alfa_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_L1_alfa_v2.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_L1_alfa_v2.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_L1_alfa_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_L1_alfa_v2.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Cosmic2009_v1_7-bit_trigger_types.xml ;

${install_dir}/LVL1config_Cosmic2009_v1_7-bit_trigger_types.xml :: ../data/LVL1config_Cosmic2009_v1_7-bit_trigger_types.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Cosmic2009_v1_7-bit_trigger_types.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Cosmic2009_v1_7-bit_trigger_types.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Cosmic2009_v1_7-bit_trigger_types.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Cosmic2009_v1_7-bit_trigger_types.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Cosmic2009_v1_7-bit_trigger_types.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905.xml ;

${install_dir}/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905.xml :: ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_SingleBeam_v1_3-bit_trigger_types_20080905.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905.xml ;

${install_dir}/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905.xml :: ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_SingleBeam_v1_7-bit_trigger_types_20080905.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1MenuM5.xml ;

${install_dir}/L1MenuM5.xml :: ../data/L1MenuM5.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1MenuM5.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1MenuM5.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1MenuM5.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1MenuM5.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1MenuM5.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1Menu_Cosmics_20080703.xml ;

${install_dir}/L1Menu_Cosmics_20080703.xml :: ../data/L1Menu_Cosmics_20080703.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Menu_Cosmics_20080703.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1Menu_Cosmics_20080703.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1Menu_Cosmics_20080703.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Menu_Cosmics_20080703.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1Menu_Cosmics_20080703.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1MenuM6.xml ;

${install_dir}/L1MenuM6.xml :: ../data/L1MenuM6.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1MenuM6.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1MenuM6.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1MenuM6.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1MenuM6.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1MenuM6.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_SingleBeam_v1_3-bit_trigger_types.xml ;

${install_dir}/LVL1config_SingleBeam_v1_3-bit_trigger_types.xml :: ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_SingleBeam_v1_3-bit_trigger_types.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_SingleBeam_v1_3-bit_trigger_types.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_3-bit_trigger_types.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_SingleBeam_v1_3-bit_trigger_types.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_SingleBeam_v1_7-bit_trigger_types.xml ;

${install_dir}/LVL1config_SingleBeam_v1_7-bit_trigger_types.xml :: ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_SingleBeam_v1_7-bit_trigger_types.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_SingleBeam_v1_7-bit_trigger_types.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_SingleBeam_v1_7-bit_trigger_types.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_SingleBeam_v1_7-bit_trigger_types.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_pp_v1.xml ;

${install_dir}/LVL1config_Physics_pp_v1.xml :: ../data/LVL1config_Physics_pp_v1.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_pp_v1.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_pp_v1.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v1.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_pp_v1.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_pp_v2.xml ;

${install_dir}/LVL1config_Physics_pp_v2.xml :: ../data/LVL1config_Physics_pp_v2.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_pp_v2.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_pp_v2.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v2.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_pp_v2.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1Menu_Cosmics_20080729.xml ;

${install_dir}/L1Menu_Cosmics_20080729.xml :: ../data/L1Menu_Cosmics_20080729.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Menu_Cosmics_20080729.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1Menu_Cosmics_20080729.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1Menu_Cosmics_20080729.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Menu_Cosmics_20080729.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1Menu_Cosmics_20080729.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_pp_v3.xml ;

${install_dir}/LVL1config_Physics_pp_v3.xml :: ../data/LVL1config_Physics_pp_v3.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v3.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_pp_v3.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_pp_v3.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v3.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_pp_v3.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Cosmic2009_simpleL1Calib.xml ;

${install_dir}/LVL1config_Cosmic2009_simpleL1Calib.xml :: ../data/LVL1config_Cosmic2009_simpleL1Calib.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Cosmic2009_simpleL1Calib.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Cosmic2009_simpleL1Calib.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Cosmic2009_simpleL1Calib.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Cosmic2009_simpleL1Calib.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Cosmic2009_simpleL1Calib.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_pp_v4_preJuneTS.xml ;

${install_dir}/LVL1config_Physics_pp_v4_preJuneTS.xml :: ../data/LVL1config_Physics_pp_v4_preJuneTS.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v4_preJuneTS.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_pp_v4_preJuneTS.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_pp_v4_preJuneTS.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v4_preJuneTS.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_pp_v4_preJuneTS.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_pp_v4.xml ;

${install_dir}/LVL1config_Physics_pp_v4.xml :: ../data/LVL1config_Physics_pp_v4.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v4.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_pp_v4.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_pp_v4.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v4.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_pp_v4.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1Topoconfig_Physics_pp_v5.xml ;

${install_dir}/L1Topoconfig_Physics_pp_v5.xml :: ../data/L1Topoconfig_Physics_pp_v5.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_Physics_pp_v5.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1Topoconfig_Physics_pp_v5.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1Topoconfig_Physics_pp_v5.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_Physics_pp_v5.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1Topoconfig_Physics_pp_v5.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_DC14.xml ;

${install_dir}/LVL1config_DC14.xml :: ../data/LVL1config_DC14.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_DC14.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_DC14.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_DC14.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_DC14.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_DC14.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_pp_v5.xml ;

${install_dir}/LVL1config_Physics_pp_v5.xml :: ../data/LVL1config_Physics_pp_v5.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v5.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_pp_v5.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_pp_v5.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v5.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_pp_v5.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1Topoconfig_DC14_20.0.0.xml ;

${install_dir}/L1Topoconfig_DC14_20.0.0.xml :: ../data/L1Topoconfig_DC14_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_DC14_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1Topoconfig_DC14_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1Topoconfig_DC14_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_DC14_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1Topoconfig_DC14_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1Topoconfig_LS1_v1_20.0.0.xml ;

${install_dir}/L1Topoconfig_LS1_v1_20.0.0.xml :: ../data/L1Topoconfig_LS1_v1_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_LS1_v1_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1Topoconfig_LS1_v1_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1Topoconfig_LS1_v1_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_LS1_v1_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1Topoconfig_LS1_v1_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1Topoconfig_MC_pp_v5_20.0.0.xml ;

${install_dir}/L1Topoconfig_MC_pp_v5_20.0.0.xml :: ../data/L1Topoconfig_MC_pp_v5_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_MC_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1Topoconfig_MC_pp_v5_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1Topoconfig_MC_pp_v5_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_MC_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1Topoconfig_MC_pp_v5_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/L1Topoconfig_Physics_pp_v5_20.0.0.xml ;

${install_dir}/L1Topoconfig_Physics_pp_v5_20.0.0.xml :: ../data/L1Topoconfig_Physics_pp_v5_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_Physics_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "L1Topoconfig_Physics_pp_v5_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/L1Topoconfig_Physics_pp_v5_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/L1Topoconfig_Physics_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "L1Topoconfig_Physics_pp_v5_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_HI_v3_20.0.0.xml ;

${install_dir}/LVL1config_Physics_HI_v3_20.0.0.xml :: ../data/LVL1config_Physics_HI_v3_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_HI_v3_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_HI_v3_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_HI_v3_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_HI_v3_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_HI_v3_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/HLTconfig_Physics_HI_v3_20.0.0.xml ;

${install_dir}/HLTconfig_Physics_HI_v3_20.0.0.xml :: ../data/HLTconfig_Physics_HI_v3_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_Physics_HI_v3_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "HLTconfig_Physics_HI_v3_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/HLTconfig_Physics_HI_v3_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_Physics_HI_v3_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "HLTconfig_Physics_HI_v3_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_LS1_v1_20.0.0.xml ;

${install_dir}/LVL1config_LS1_v1_20.0.0.xml :: ../data/LVL1config_LS1_v1_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_LS1_v1_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_LS1_v1_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_LS1_v1_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_LS1_v1_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_LS1_v1_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/HLTconfig_LS1_v1_20.0.0.xml ;

${install_dir}/HLTconfig_LS1_v1_20.0.0.xml :: ../data/HLTconfig_LS1_v1_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_LS1_v1_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "HLTconfig_LS1_v1_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/HLTconfig_LS1_v1_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_LS1_v1_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "HLTconfig_LS1_v1_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_Physics_pp_v5_20.0.0.xml ;

${install_dir}/LVL1config_Physics_pp_v5_20.0.0.xml :: ../data/LVL1config_Physics_pp_v5_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_Physics_pp_v5_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_Physics_pp_v5_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_Physics_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_Physics_pp_v5_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/HLTconfig_Physics_pp_v5_20.0.0.xml ;

${install_dir}/HLTconfig_Physics_pp_v5_20.0.0.xml :: ../data/HLTconfig_Physics_pp_v5_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_Physics_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "HLTconfig_Physics_pp_v5_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/HLTconfig_Physics_pp_v5_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_Physics_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "HLTconfig_Physics_pp_v5_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_DC14_tight_mc_prescale_20.0.0.xml ;

${install_dir}/LVL1config_DC14_tight_mc_prescale_20.0.0.xml :: ../data/LVL1config_DC14_tight_mc_prescale_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_DC14_tight_mc_prescale_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_DC14_tight_mc_prescale_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_DC14_tight_mc_prescale_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_DC14_tight_mc_prescale_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_DC14_tight_mc_prescale_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/HLTconfig_DC14_tight_mc_prescale_20.0.0.xml ;

${install_dir}/HLTconfig_DC14_tight_mc_prescale_20.0.0.xml :: ../data/HLTconfig_DC14_tight_mc_prescale_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_DC14_tight_mc_prescale_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "HLTconfig_DC14_tight_mc_prescale_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/HLTconfig_DC14_tight_mc_prescale_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_DC14_tight_mc_prescale_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "HLTconfig_DC14_tight_mc_prescale_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_DC14_loose_mc_prescale_20.0.0.xml ;

${install_dir}/LVL1config_DC14_loose_mc_prescale_20.0.0.xml :: ../data/LVL1config_DC14_loose_mc_prescale_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_DC14_loose_mc_prescale_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_DC14_loose_mc_prescale_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_DC14_loose_mc_prescale_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_DC14_loose_mc_prescale_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_DC14_loose_mc_prescale_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/HLTconfig_DC14_loose_mc_prescale_20.0.0.xml ;

${install_dir}/HLTconfig_DC14_loose_mc_prescale_20.0.0.xml :: ../data/HLTconfig_DC14_loose_mc_prescale_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_DC14_loose_mc_prescale_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "HLTconfig_DC14_loose_mc_prescale_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/HLTconfig_DC14_loose_mc_prescale_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_DC14_loose_mc_prescale_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "HLTconfig_DC14_loose_mc_prescale_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_DC14_20.0.0.xml ;

${install_dir}/LVL1config_DC14_20.0.0.xml :: ../data/LVL1config_DC14_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_DC14_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_DC14_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_DC14_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_DC14_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_DC14_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/HLTconfig_DC14_20.0.0.xml ;

${install_dir}/HLTconfig_DC14_20.0.0.xml :: ../data/HLTconfig_DC14_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_DC14_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "HLTconfig_DC14_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/HLTconfig_DC14_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_DC14_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "HLTconfig_DC14_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/LVL1config_MC_pp_v5_20.0.0.xml ;

${install_dir}/LVL1config_MC_pp_v5_20.0.0.xml :: ../data/LVL1config_MC_pp_v5_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_MC_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "LVL1config_MC_pp_v5_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/LVL1config_MC_pp_v5_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/LVL1config_MC_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "LVL1config_MC_pp_v5_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_xmlsinstall :: ${install_dir}/HLTconfig_MC_pp_v5_20.0.0.xml ;

${install_dir}/HLTconfig_MC_pp_v5_20.0.0.xml :: ../data/HLTconfig_MC_pp_v5_20.0.0.xml
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_MC_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "HLTconfig_MC_pp_v5_20.0.0.xml" "$(install_dir)" "/afs/cern.ch/atlas/software/builds/nightlies/devval/AtlasCore/rel_5/External/ExternalPolicy/src/symlink.sh" "$($(package)_cmtpath)"; \
	fi

../data/HLTconfig_MC_pp_v5_20.0.0.xml : ;

install_xmlsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../data/HLTconfig_MC_pp_v5_20.0.0.xml`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "HLTconfig_MC_pp_v5_20.0.0.xml" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_xmlsclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_xmls.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_xmlsclean ::
#-- end of cleanup_header ---------------
