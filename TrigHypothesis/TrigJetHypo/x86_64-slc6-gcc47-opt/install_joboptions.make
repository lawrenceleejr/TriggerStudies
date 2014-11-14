#-- start of make_header -----------------

#====================================
#  Document install_joboptions
#
#   Generated Fri Nov 14 14:30:42 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_install_joboptions_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_joboptions_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_install_joboptions

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(TrigJetHypo_tag)_install_joboptions.make
cmt_local_tagfile_install_joboptions = $(bin)$(TrigJetHypo_tag)_install_joboptions.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_install_joboptions = $(TrigJetHypo_tag).make
cmt_local_tagfile_install_joboptions = $(bin)$(TrigJetHypo_tag).make

endif

include $(cmt_local_tagfile_install_joboptions)
#-include $(cmt_local_tagfile_install_joboptions)

ifdef cmt_install_joboptions_has_target_tag

cmt_final_setup_install_joboptions = $(bin)setup_install_joboptions.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies_install_joboptions.in
#cmt_final_setup_install_joboptions = $(bin)TrigJetHypo_install_joboptionssetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

else

cmt_final_setup_install_joboptions = $(bin)setup.make
cmt_dependencies_in_install_joboptions = $(bin)dependencies.in
#cmt_final_setup_install_joboptions = $(bin)TrigJetHyposetup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigJetHyposetup.make

#install_joboptions :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'install_joboptions'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = install_joboptions/
#install_joboptions::
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

install_dir = ${installarea}/jobOptions/TrigJetHypo

install_joboptions :: install_joboptionsinstall ;

install :: install_joboptionsinstall ;

install_joboptionsclean :: install_joboptionsuninstall

uninstall :: install_joboptionsuninstall


# This is to avoid error in case there are no files to install
# Ideally, the fragment should not be used without files to install,
# and this line should be dropped then
install_joboptionsinstall :: ;

jobOfragment_L2_TrigL2JetHypo_jet160_py_dependencies = ../share/jobOfragment_L2_TrigL2JetHypo_jet160.py
jobOfragment_L2_TrigL2JetHypo_frjet_py_dependencies = ../share/jobOfragment_L2_TrigL2JetHypo_frjet.py
jobOfragment_EF_TrigEFJetHypo_3jet65_py_dependencies = ../share/jobOfragment_EF_TrigEFJetHypo_3jet65.py
jobOfragment_L2_TrigL2JetHypo_4jet50_py_dependencies = ../share/jobOfragment_L2_TrigL2JetHypo_4jet50.py
jobOfragment_EF_TrigEFJetHypo_jet20_py_dependencies = ../share/jobOfragment_EF_TrigEFJetHypo_jet20.py
jobOfragment_L2_TrigL2JetHypo_3jet65_py_dependencies = ../share/jobOfragment_L2_TrigL2JetHypo_3jet65.py
jobOfragment_EF_TrigEFJetHypo_2jet120_py_dependencies = ../share/jobOfragment_EF_TrigEFJetHypo_2jet120.py
jobOfragment_L2_TrigL2JetHypo_jet20_py_dependencies = ../share/jobOfragment_L2_TrigL2JetHypo_jet20.py
jobOfragment_L2_TrigL2JetHypo_2jet120_py_dependencies = ../share/jobOfragment_L2_TrigL2JetHypo_2jet120.py
jobOfragment_EF_TrigEFJetHypo_fljet_py_dependencies = ../share/jobOfragment_EF_TrigEFJetHypo_fljet.py
jobOfragment_EF_TrigEFJetHypo_jet160_py_dependencies = ../share/jobOfragment_EF_TrigEFJetHypo_jet160.py
jobOfragment_EF_TrigEFJetHypo_frjet_py_dependencies = ../share/jobOfragment_EF_TrigEFJetHypo_frjet.py
jobOfragment_L2_TrigL2JetHypo_fljet_py_dependencies = ../share/jobOfragment_L2_TrigL2JetHypo_fljet.py
jobOfragment_EF_TrigEFJetHypo_4jet50_py_dependencies = ../share/jobOfragment_EF_TrigEFJetHypo_4jet50.py
TriggerConfig_3jet65_py_dependencies = ../share/TriggerConfig_3jet65.py
TriggerConfig_EF_TrigJetHypo_py_dependencies = ../share/TriggerConfig_EF_TrigJetHypo.py
TriggerConfig_Jet_py_dependencies = ../share/TriggerConfig_Jet.py
TriggerConfig_jet20_py_dependencies = ../share/TriggerConfig_jet20.py
TriggerConfig_2jet120_py_dependencies = ../share/TriggerConfig_2jet120.py
TriggerConfig_Jet_Level1_py_dependencies = ../share/TriggerConfig_Jet_Level1.py
TriggerConfig_Jet_flags_py_dependencies = ../share/TriggerConfig_Jet_flags.py
TriggerConfig_fljet_py_dependencies = ../share/TriggerConfig_fljet.py
TriggerConfig_L2_TrigJetHypo_py_dependencies = ../share/TriggerConfig_L2_TrigJetHypo.py
TriggerConfig_jet160_py_dependencies = ../share/TriggerConfig_jet160.py
TriggerConfig_frjet_py_dependencies = ../share/TriggerConfig_frjet.py
TriggerConfig_4jet50_py_dependencies = ../share/TriggerConfig_4jet50.py


install_joboptionsinstall :: ${install_dir}/jobOfragment_L2_TrigL2JetHypo_jet160.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_L2_TrigL2JetHypo_jet160.py :: ../share/jobOfragment_L2_TrigL2JetHypo_jet160.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_jet160.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_jet160.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_L2_TrigL2JetHypo_jet160.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_jet160.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_jet160.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_L2_TrigL2JetHypo_frjet.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_L2_TrigL2JetHypo_frjet.py :: ../share/jobOfragment_L2_TrigL2JetHypo_frjet.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_frjet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_frjet.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_L2_TrigL2JetHypo_frjet.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_frjet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_frjet.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_EF_TrigEFJetHypo_3jet65.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_EF_TrigEFJetHypo_3jet65.py :: ../share/jobOfragment_EF_TrigEFJetHypo_3jet65.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_3jet65.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_3jet65.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_EF_TrigEFJetHypo_3jet65.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_3jet65.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_3jet65.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_L2_TrigL2JetHypo_4jet50.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_L2_TrigL2JetHypo_4jet50.py :: ../share/jobOfragment_L2_TrigL2JetHypo_4jet50.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_4jet50.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_4jet50.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_L2_TrigL2JetHypo_4jet50.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_4jet50.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_4jet50.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_EF_TrigEFJetHypo_jet20.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_EF_TrigEFJetHypo_jet20.py :: ../share/jobOfragment_EF_TrigEFJetHypo_jet20.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_jet20.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_jet20.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_EF_TrigEFJetHypo_jet20.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_jet20.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_jet20.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_L2_TrigL2JetHypo_3jet65.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_L2_TrigL2JetHypo_3jet65.py :: ../share/jobOfragment_L2_TrigL2JetHypo_3jet65.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_3jet65.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_3jet65.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_L2_TrigL2JetHypo_3jet65.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_3jet65.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_3jet65.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_EF_TrigEFJetHypo_2jet120.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_EF_TrigEFJetHypo_2jet120.py :: ../share/jobOfragment_EF_TrigEFJetHypo_2jet120.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_2jet120.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_2jet120.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_EF_TrigEFJetHypo_2jet120.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_2jet120.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_2jet120.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_L2_TrigL2JetHypo_jet20.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_L2_TrigL2JetHypo_jet20.py :: ../share/jobOfragment_L2_TrigL2JetHypo_jet20.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_jet20.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_jet20.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_L2_TrigL2JetHypo_jet20.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_jet20.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_jet20.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_L2_TrigL2JetHypo_2jet120.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_L2_TrigL2JetHypo_2jet120.py :: ../share/jobOfragment_L2_TrigL2JetHypo_2jet120.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_2jet120.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_2jet120.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_L2_TrigL2JetHypo_2jet120.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_2jet120.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_2jet120.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_EF_TrigEFJetHypo_fljet.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_EF_TrigEFJetHypo_fljet.py :: ../share/jobOfragment_EF_TrigEFJetHypo_fljet.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_fljet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_fljet.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_EF_TrigEFJetHypo_fljet.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_fljet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_fljet.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_EF_TrigEFJetHypo_jet160.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_EF_TrigEFJetHypo_jet160.py :: ../share/jobOfragment_EF_TrigEFJetHypo_jet160.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_jet160.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_jet160.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_EF_TrigEFJetHypo_jet160.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_jet160.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_jet160.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_EF_TrigEFJetHypo_frjet.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_EF_TrigEFJetHypo_frjet.py :: ../share/jobOfragment_EF_TrigEFJetHypo_frjet.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_frjet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_frjet.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_EF_TrigEFJetHypo_frjet.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_frjet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_frjet.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_L2_TrigL2JetHypo_fljet.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_L2_TrigL2JetHypo_fljet.py :: ../share/jobOfragment_L2_TrigL2JetHypo_fljet.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_fljet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_fljet.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_L2_TrigL2JetHypo_fljet.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_L2_TrigL2JetHypo_fljet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_L2_TrigL2JetHypo_fljet.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/jobOfragment_EF_TrigEFJetHypo_4jet50.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/jobOfragment_EF_TrigEFJetHypo_4jet50.py :: ../share/jobOfragment_EF_TrigEFJetHypo_4jet50.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_4jet50.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_4jet50.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/jobOfragment_EF_TrigEFJetHypo_4jet50.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/jobOfragment_EF_TrigEFJetHypo_4jet50.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "jobOfragment_EF_TrigEFJetHypo_4jet50.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_3jet65.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_3jet65.py :: ../share/TriggerConfig_3jet65.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_3jet65.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_3jet65.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_3jet65.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_3jet65.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_3jet65.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_EF_TrigJetHypo.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_EF_TrigJetHypo.py :: ../share/TriggerConfig_EF_TrigJetHypo.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_EF_TrigJetHypo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_EF_TrigJetHypo.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_EF_TrigJetHypo.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_EF_TrigJetHypo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_EF_TrigJetHypo.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_Jet.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_Jet.py :: ../share/TriggerConfig_Jet.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_Jet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_Jet.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_Jet.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_Jet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_Jet.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_jet20.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_jet20.py :: ../share/TriggerConfig_jet20.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_jet20.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_jet20.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_jet20.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_jet20.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_jet20.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_2jet120.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_2jet120.py :: ../share/TriggerConfig_2jet120.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_2jet120.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_2jet120.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_2jet120.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_2jet120.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_2jet120.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_Jet_Level1.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_Jet_Level1.py :: ../share/TriggerConfig_Jet_Level1.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_Jet_Level1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_Jet_Level1.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_Jet_Level1.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_Jet_Level1.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_Jet_Level1.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_Jet_flags.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_Jet_flags.py :: ../share/TriggerConfig_Jet_flags.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_Jet_flags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_Jet_flags.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_Jet_flags.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_Jet_flags.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_Jet_flags.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_fljet.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_fljet.py :: ../share/TriggerConfig_fljet.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_fljet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_fljet.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_fljet.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_fljet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_fljet.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_L2_TrigJetHypo.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_L2_TrigJetHypo.py :: ../share/TriggerConfig_L2_TrigJetHypo.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_L2_TrigJetHypo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_L2_TrigJetHypo.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_L2_TrigJetHypo.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_L2_TrigJetHypo.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_L2_TrigJetHypo.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_jet160.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_jet160.py :: ../share/TriggerConfig_jet160.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_jet160.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_jet160.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_jet160.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_jet160.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_jet160.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_frjet.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_frjet.py :: ../share/TriggerConfig_frjet.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_frjet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_frjet.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_frjet.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_frjet.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_frjet.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi


install_joboptionsinstall :: ${install_dir}/TriggerConfig_4jet50.py
	@if test ! "${installarea}" = ""; then\
	  echo "installation done"; \
	fi

${install_dir}/TriggerConfig_4jet50.py :: ../share/TriggerConfig_4jet50.py
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_4jet50.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_install_action) "$${d}" "TriggerConfig_4jet50.py" "$(install_dir)" "ln -sf" "$($(package)_cmtpath)"; \
	fi

../share/TriggerConfig_4jet50.py : ;

install_joboptionsuninstall ::
	@if test ! "${installarea}" = ""; then \
	  d=`dirname ../share/TriggerConfig_4jet50.py`; \
	  d=`(cd $${d}; pwd)`; \
	  CMTINSTALLAREA=${CMTINSTALLAREA}; export CMTINSTALLAREA; \
	  $(cmt_uninstall_action) "$${d}" "TriggerConfig_4jet50.py" "$(install_dir)" "$($(package)_cmtpath)"; \
	fi
#-- start of cleanup_header --------------

clean :: install_joboptionsclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(install_joboptions.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

install_joboptionsclean ::
#-- end of cleanup_header ---------------
