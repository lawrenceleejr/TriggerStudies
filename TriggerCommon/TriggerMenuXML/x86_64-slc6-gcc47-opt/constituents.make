
#-- start of constituents_header ------

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile = $(TriggerMenuXML_tag).make
cmt_local_tagfile = $(bin)$(TriggerMenuXML_tag).make

#-include $(cmt_local_tagfile)
include $(cmt_local_tagfile)

#cmt_local_setup = $(bin)setup$$$$.make
#cmt_local_setup = $(bin)$(package)setup$$$$.make
#cmt_final_setup = $(bin)TriggerMenuXMLsetup.make
cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)$(package)setup.make

cmt_build_library_linksstamp = $(bin)cmt_build_library_links.stamp
#--------------------------------------------------------

#cmt_lock_setup = /tmp/lock$(cmt_lock_pid).make
#cmt_temp_tag = /tmp/tag$(cmt_lock_pid).make

#first :: $(cmt_local_tagfile)
#	@echo $(cmt_local_tagfile) ok
#ifndef QUICK
#first :: $(cmt_final_setup) ;
#else
#first :: ;
#endif

##	@bin=`$(cmtexe) show macro_value bin`

#$(cmt_local_tagfile) : $(cmt_lock_setup)
#	@echo "#CMT> Error: $@: No such file" >&2; exit 1
#$(cmt_local_tagfile) :
#	@echo "#CMT> Warning: $@: No such file" >&2; exit
#	@echo "#CMT> Info: $@: No need to rebuild file" >&2; exit

#$(cmt_final_setup) : $(cmt_local_tagfile) 
#	$(echo) "(constituents.make) Rebuilding $@"
#	@if test ! -d $(@D); then $(mkdir) -p $(@D); fi; \
#	  if test -f $(cmt_local_setup); then /bin/rm -f $(cmt_local_setup); fi; \
#	  trap '/bin/rm -f $(cmt_local_setup)' 0 1 2 15; \
#	  $(cmtexe) -tag=$(tags) show setup >>$(cmt_local_setup); \
#	  if test ! -f $@; then \
#	    mv $(cmt_local_setup) $@; \
#	  else \
#	    if /usr/bin/diff $(cmt_local_setup) $@ >/dev/null ; then \
#	      : ; \
#	    else \
#	      mv $(cmt_local_setup) $@; \
#	    fi; \
#	  fi

#	@/bin/echo $@ ok   

#config :: checkuses
#	@exit 0
#checkuses : ;

env.make ::
	printenv >env.make.tmp; $(cmtexe) check files env.make.tmp env.make

ifndef QUICK
all :: build_library_links ;
else
all :: $(cmt_build_library_linksstamp) ;
endif

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

dirs :: requirements
	@if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi
#	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
#	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

#requirements :
#	@if test ! -r requirements ; then echo "No requirements file" ; fi

build_library_links : dirs
	$(echo) "(constituents.make) Rebuilding library links"; \
	 $(build_library_links)
#	if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi; \
#	$(build_library_links)

$(cmt_build_library_linksstamp) : $(cmt_final_setup) $(cmt_local_tagfile) $(bin)library_links.in
	$(echo) "(constituents.make) Rebuilding library links"; \
	 $(build_library_links) -f=$(bin)library_links.in -without_cmt
	$(silent) \touch $@

ifndef PEDANTIC
.DEFAULT ::
#.DEFAULT :
	$(echo) "(constituents.make) $@: No rule for such target" >&2
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of constituents_header ------
#-- start of group ------

all_groups :: all

all :: $(all_dependencies)  $(all_pre_constituents) $(all_constituents)  $(all_post_constituents)
	$(echo) "all ok."

#	@/bin/echo " all ok."

clean :: allclean

allclean ::  $(all_constituentsclean)
	$(echo) $(all_constituentsclean)
	$(echo) "allclean ok."

#	@echo $(all_constituentsclean)
#	@/bin/echo " allclean ok."

#-- end of group ------
#-- start of group ------

all_groups :: cmt_actions

cmt_actions :: $(cmt_actions_dependencies)  $(cmt_actions_pre_constituents) $(cmt_actions_constituents)  $(cmt_actions_post_constituents)
	$(echo) "cmt_actions ok."

#	@/bin/echo " cmt_actions ok."

clean :: allclean

cmt_actionsclean ::  $(cmt_actions_constituentsclean)
	$(echo) $(cmt_actions_constituentsclean)
	$(echo) "cmt_actionsclean ok."

#	@echo $(cmt_actions_constituentsclean)
#	@/bin/echo " cmt_actionsclean ok."

#-- end of group ------
#-- start of group ------

all_groups :: rulechecker

rulechecker :: $(rulechecker_dependencies)  $(rulechecker_pre_constituents) $(rulechecker_constituents)  $(rulechecker_post_constituents)
	$(echo) "rulechecker ok."

#	@/bin/echo " rulechecker ok."

clean :: allclean

rulecheckerclean ::  $(rulechecker_constituentsclean)
	$(echo) $(rulechecker_constituentsclean)
	$(echo) "rulecheckerclean ok."

#	@echo $(rulechecker_constituentsclean)
#	@/bin/echo " rulecheckerclean ok."

#-- end of group ------
#-- start of constituent ------

cmt_install_joboptions_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_install_joboptions_has_target_tag

cmt_local_tagfile_install_joboptions = $(bin)$(TriggerMenuXML_tag)_install_joboptions.make
cmt_final_setup_install_joboptions = $(bin)setup_install_joboptions.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

install_joboptions_extratags = -tag_add=target_install_joboptions

else

cmt_local_tagfile_install_joboptions = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_install_joboptions = $(bin)setup.make
cmt_local_install_joboptions_makefile = $(bin)install_joboptions.make

endif

not_install_joboptions_dependencies = { n=0; for p in $?; do m=0; for d in $(install_joboptions_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
install_joboptionsdirs :
	@if test ! -d $(bin)install_joboptions; then $(mkdir) -p $(bin)install_joboptions; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)install_joboptions
else
install_joboptionsdirs : ;
endif

ifdef cmt_install_joboptions_has_target_tag

ifndef QUICK
$(cmt_local_install_joboptions_makefile) : $(install_joboptions_dependencies) build_library_links
	$(echo) "(constituents.make) Building install_joboptions.make"; \
	  $(cmtexe) -tag=$(tags) $(install_joboptions_extratags) build constituent_config -out=$(cmt_local_install_joboptions_makefile) install_joboptions
else
$(cmt_local_install_joboptions_makefile) : $(install_joboptions_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install_joboptions) ] || \
	  [ ! -f $(cmt_final_setup_install_joboptions) ] || \
	  $(not_install_joboptions_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install_joboptions.make"; \
	  $(cmtexe) -tag=$(tags) $(install_joboptions_extratags) build constituent_config -out=$(cmt_local_install_joboptions_makefile) install_joboptions; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_install_joboptions_makefile) : $(install_joboptions_dependencies) build_library_links
	$(echo) "(constituents.make) Building install_joboptions.make"; \
	  $(cmtexe) -f=$(bin)install_joboptions.in -tag=$(tags) $(install_joboptions_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_joboptions_makefile) install_joboptions
else
$(cmt_local_install_joboptions_makefile) : $(install_joboptions_dependencies) $(cmt_build_library_linksstamp) $(bin)install_joboptions.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install_joboptions) ] || \
	  [ ! -f $(cmt_final_setup_install_joboptions) ] || \
	  $(not_install_joboptions_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install_joboptions.make"; \
	  $(cmtexe) -f=$(bin)install_joboptions.in -tag=$(tags) $(install_joboptions_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_joboptions_makefile) install_joboptions; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(install_joboptions_extratags) build constituent_makefile -out=$(cmt_local_install_joboptions_makefile) install_joboptions

install_joboptions :: $(install_joboptions_dependencies) $(cmt_local_install_joboptions_makefile) dirs install_joboptionsdirs
	$(echo) "(constituents.make) Starting install_joboptions"
	@if test -f $(cmt_local_install_joboptions_makefile); then \
	  $(MAKE) -f $(cmt_local_install_joboptions_makefile) install_joboptions; \
	  fi
#	@$(MAKE) -f $(cmt_local_install_joboptions_makefile) install_joboptions
	$(echo) "(constituents.make) install_joboptions done"

clean :: install_joboptionsclean ;

install_joboptionsclean :: $(install_joboptionsclean_dependencies) ##$(cmt_local_install_joboptions_makefile)
	$(echo) "(constituents.make) Starting install_joboptionsclean"
	@-if test -f $(cmt_local_install_joboptions_makefile); then \
	  $(MAKE) -f $(cmt_local_install_joboptions_makefile) install_joboptionsclean; \
	fi
	$(echo) "(constituents.make) install_joboptionsclean done"
#	@-$(MAKE) -f $(cmt_local_install_joboptions_makefile) install_joboptionsclean

##	  /bin/rm -f $(cmt_local_install_joboptions_makefile) $(bin)install_joboptions_dependencies.make

install :: install_joboptionsinstall ;

install_joboptionsinstall :: $(install_joboptions_dependencies) $(cmt_local_install_joboptions_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_install_joboptions_makefile); then \
	  $(MAKE) -f $(cmt_local_install_joboptions_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_install_joboptions_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : install_joboptionsuninstall

$(foreach d,$(install_joboptions_dependencies),$(eval $(d)uninstall_dependencies += install_joboptionsuninstall))

install_joboptionsuninstall : $(install_joboptionsuninstall_dependencies) ##$(cmt_local_install_joboptions_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_install_joboptions_makefile); then \
	  $(MAKE) -f $(cmt_local_install_joboptions_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_install_joboptions_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: install_joboptionsuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ install_joboptions"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ install_joboptions done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_install_xmls_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_install_xmls_has_target_tag

cmt_local_tagfile_install_xmls = $(bin)$(TriggerMenuXML_tag)_install_xmls.make
cmt_final_setup_install_xmls = $(bin)setup_install_xmls.make
cmt_local_install_xmls_makefile = $(bin)install_xmls.make

install_xmls_extratags = -tag_add=target_install_xmls

else

cmt_local_tagfile_install_xmls = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_install_xmls = $(bin)setup.make
cmt_local_install_xmls_makefile = $(bin)install_xmls.make

endif

not_install_xmls_dependencies = { n=0; for p in $?; do m=0; for d in $(install_xmls_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
install_xmlsdirs :
	@if test ! -d $(bin)install_xmls; then $(mkdir) -p $(bin)install_xmls; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)install_xmls
else
install_xmlsdirs : ;
endif

ifdef cmt_install_xmls_has_target_tag

ifndef QUICK
$(cmt_local_install_xmls_makefile) : $(install_xmls_dependencies) build_library_links
	$(echo) "(constituents.make) Building install_xmls.make"; \
	  $(cmtexe) -tag=$(tags) $(install_xmls_extratags) build constituent_config -out=$(cmt_local_install_xmls_makefile) install_xmls
else
$(cmt_local_install_xmls_makefile) : $(install_xmls_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install_xmls) ] || \
	  [ ! -f $(cmt_final_setup_install_xmls) ] || \
	  $(not_install_xmls_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install_xmls.make"; \
	  $(cmtexe) -tag=$(tags) $(install_xmls_extratags) build constituent_config -out=$(cmt_local_install_xmls_makefile) install_xmls; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_install_xmls_makefile) : $(install_xmls_dependencies) build_library_links
	$(echo) "(constituents.make) Building install_xmls.make"; \
	  $(cmtexe) -f=$(bin)install_xmls.in -tag=$(tags) $(install_xmls_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_xmls_makefile) install_xmls
else
$(cmt_local_install_xmls_makefile) : $(install_xmls_dependencies) $(cmt_build_library_linksstamp) $(bin)install_xmls.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install_xmls) ] || \
	  [ ! -f $(cmt_final_setup_install_xmls) ] || \
	  $(not_install_xmls_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install_xmls.make"; \
	  $(cmtexe) -f=$(bin)install_xmls.in -tag=$(tags) $(install_xmls_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_xmls_makefile) install_xmls; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(install_xmls_extratags) build constituent_makefile -out=$(cmt_local_install_xmls_makefile) install_xmls

install_xmls :: $(install_xmls_dependencies) $(cmt_local_install_xmls_makefile) dirs install_xmlsdirs
	$(echo) "(constituents.make) Starting install_xmls"
	@if test -f $(cmt_local_install_xmls_makefile); then \
	  $(MAKE) -f $(cmt_local_install_xmls_makefile) install_xmls; \
	  fi
#	@$(MAKE) -f $(cmt_local_install_xmls_makefile) install_xmls
	$(echo) "(constituents.make) install_xmls done"

clean :: install_xmlsclean ;

install_xmlsclean :: $(install_xmlsclean_dependencies) ##$(cmt_local_install_xmls_makefile)
	$(echo) "(constituents.make) Starting install_xmlsclean"
	@-if test -f $(cmt_local_install_xmls_makefile); then \
	  $(MAKE) -f $(cmt_local_install_xmls_makefile) install_xmlsclean; \
	fi
	$(echo) "(constituents.make) install_xmlsclean done"
#	@-$(MAKE) -f $(cmt_local_install_xmls_makefile) install_xmlsclean

##	  /bin/rm -f $(cmt_local_install_xmls_makefile) $(bin)install_xmls_dependencies.make

install :: install_xmlsinstall ;

install_xmlsinstall :: $(install_xmls_dependencies) $(cmt_local_install_xmls_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_install_xmls_makefile); then \
	  $(MAKE) -f $(cmt_local_install_xmls_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_install_xmls_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : install_xmlsuninstall

$(foreach d,$(install_xmls_dependencies),$(eval $(d)uninstall_dependencies += install_xmlsuninstall))

install_xmlsuninstall : $(install_xmlsuninstall_dependencies) ##$(cmt_local_install_xmls_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_install_xmls_makefile); then \
	  $(MAKE) -f $(cmt_local_install_xmls_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_install_xmls_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: install_xmlsuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ install_xmls"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ install_xmls done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_install_scripts_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_install_scripts_has_target_tag

cmt_local_tagfile_install_scripts = $(bin)$(TriggerMenuXML_tag)_install_scripts.make
cmt_final_setup_install_scripts = $(bin)setup_install_scripts.make
cmt_local_install_scripts_makefile = $(bin)install_scripts.make

install_scripts_extratags = -tag_add=target_install_scripts

else

cmt_local_tagfile_install_scripts = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_install_scripts = $(bin)setup.make
cmt_local_install_scripts_makefile = $(bin)install_scripts.make

endif

not_install_scripts_dependencies = { n=0; for p in $?; do m=0; for d in $(install_scripts_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
install_scriptsdirs :
	@if test ! -d $(bin)install_scripts; then $(mkdir) -p $(bin)install_scripts; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)install_scripts
else
install_scriptsdirs : ;
endif

ifdef cmt_install_scripts_has_target_tag

ifndef QUICK
$(cmt_local_install_scripts_makefile) : $(install_scripts_dependencies) build_library_links
	$(echo) "(constituents.make) Building install_scripts.make"; \
	  $(cmtexe) -tag=$(tags) $(install_scripts_extratags) build constituent_config -out=$(cmt_local_install_scripts_makefile) install_scripts
else
$(cmt_local_install_scripts_makefile) : $(install_scripts_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install_scripts) ] || \
	  [ ! -f $(cmt_final_setup_install_scripts) ] || \
	  $(not_install_scripts_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install_scripts.make"; \
	  $(cmtexe) -tag=$(tags) $(install_scripts_extratags) build constituent_config -out=$(cmt_local_install_scripts_makefile) install_scripts; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_install_scripts_makefile) : $(install_scripts_dependencies) build_library_links
	$(echo) "(constituents.make) Building install_scripts.make"; \
	  $(cmtexe) -f=$(bin)install_scripts.in -tag=$(tags) $(install_scripts_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_scripts_makefile) install_scripts
else
$(cmt_local_install_scripts_makefile) : $(install_scripts_dependencies) $(cmt_build_library_linksstamp) $(bin)install_scripts.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install_scripts) ] || \
	  [ ! -f $(cmt_final_setup_install_scripts) ] || \
	  $(not_install_scripts_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install_scripts.make"; \
	  $(cmtexe) -f=$(bin)install_scripts.in -tag=$(tags) $(install_scripts_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_scripts_makefile) install_scripts; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(install_scripts_extratags) build constituent_makefile -out=$(cmt_local_install_scripts_makefile) install_scripts

install_scripts :: $(install_scripts_dependencies) $(cmt_local_install_scripts_makefile) dirs install_scriptsdirs
	$(echo) "(constituents.make) Starting install_scripts"
	@if test -f $(cmt_local_install_scripts_makefile); then \
	  $(MAKE) -f $(cmt_local_install_scripts_makefile) install_scripts; \
	  fi
#	@$(MAKE) -f $(cmt_local_install_scripts_makefile) install_scripts
	$(echo) "(constituents.make) install_scripts done"

clean :: install_scriptsclean ;

install_scriptsclean :: $(install_scriptsclean_dependencies) ##$(cmt_local_install_scripts_makefile)
	$(echo) "(constituents.make) Starting install_scriptsclean"
	@-if test -f $(cmt_local_install_scripts_makefile); then \
	  $(MAKE) -f $(cmt_local_install_scripts_makefile) install_scriptsclean; \
	fi
	$(echo) "(constituents.make) install_scriptsclean done"
#	@-$(MAKE) -f $(cmt_local_install_scripts_makefile) install_scriptsclean

##	  /bin/rm -f $(cmt_local_install_scripts_makefile) $(bin)install_scripts_dependencies.make

install :: install_scriptsinstall ;

install_scriptsinstall :: $(install_scripts_dependencies) $(cmt_local_install_scripts_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_install_scripts_makefile); then \
	  $(MAKE) -f $(cmt_local_install_scripts_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_install_scripts_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : install_scriptsuninstall

$(foreach d,$(install_scripts_dependencies),$(eval $(d)uninstall_dependencies += install_scriptsuninstall))

install_scriptsuninstall : $(install_scriptsuninstall_dependencies) ##$(cmt_local_install_scripts_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_install_scripts_makefile); then \
	  $(MAKE) -f $(cmt_local_install_scripts_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_install_scripts_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: install_scriptsuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ install_scripts"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ install_scripts done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_TriggerMenuXMLrchk_has_target_tag = 1

#--------------------------------------

ifdef cmt_TriggerMenuXMLrchk_has_target_tag

cmt_local_tagfile_TriggerMenuXMLrchk = $(bin)$(TriggerMenuXML_tag)_TriggerMenuXMLrchk.make
cmt_final_setup_TriggerMenuXMLrchk = $(bin)setup_TriggerMenuXMLrchk.make
cmt_local_TriggerMenuXMLrchk_makefile = $(bin)TriggerMenuXMLrchk.make

TriggerMenuXMLrchk_extratags = -tag_add=target_TriggerMenuXMLrchk

else

cmt_local_tagfile_TriggerMenuXMLrchk = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_TriggerMenuXMLrchk = $(bin)setup.make
cmt_local_TriggerMenuXMLrchk_makefile = $(bin)TriggerMenuXMLrchk.make

endif

not_TriggerMenuXMLrchk_dependencies = { n=0; for p in $?; do m=0; for d in $(TriggerMenuXMLrchk_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
TriggerMenuXMLrchkdirs :
	@if test ! -d $(bin)TriggerMenuXMLrchk; then $(mkdir) -p $(bin)TriggerMenuXMLrchk; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)TriggerMenuXMLrchk
else
TriggerMenuXMLrchkdirs : ;
endif

ifdef cmt_TriggerMenuXMLrchk_has_target_tag

ifndef QUICK
$(cmt_local_TriggerMenuXMLrchk_makefile) : $(TriggerMenuXMLrchk_dependencies) build_library_links
	$(echo) "(constituents.make) Building TriggerMenuXMLrchk.make"; \
	  $(cmtexe) -tag=$(tags) $(TriggerMenuXMLrchk_extratags) build constituent_config -out=$(cmt_local_TriggerMenuXMLrchk_makefile) TriggerMenuXMLrchk
else
$(cmt_local_TriggerMenuXMLrchk_makefile) : $(TriggerMenuXMLrchk_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_TriggerMenuXMLrchk) ] || \
	  [ ! -f $(cmt_final_setup_TriggerMenuXMLrchk) ] || \
	  $(not_TriggerMenuXMLrchk_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building TriggerMenuXMLrchk.make"; \
	  $(cmtexe) -tag=$(tags) $(TriggerMenuXMLrchk_extratags) build constituent_config -out=$(cmt_local_TriggerMenuXMLrchk_makefile) TriggerMenuXMLrchk; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_TriggerMenuXMLrchk_makefile) : $(TriggerMenuXMLrchk_dependencies) build_library_links
	$(echo) "(constituents.make) Building TriggerMenuXMLrchk.make"; \
	  $(cmtexe) -f=$(bin)TriggerMenuXMLrchk.in -tag=$(tags) $(TriggerMenuXMLrchk_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_TriggerMenuXMLrchk_makefile) TriggerMenuXMLrchk
else
$(cmt_local_TriggerMenuXMLrchk_makefile) : $(TriggerMenuXMLrchk_dependencies) $(cmt_build_library_linksstamp) $(bin)TriggerMenuXMLrchk.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_TriggerMenuXMLrchk) ] || \
	  [ ! -f $(cmt_final_setup_TriggerMenuXMLrchk) ] || \
	  $(not_TriggerMenuXMLrchk_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building TriggerMenuXMLrchk.make"; \
	  $(cmtexe) -f=$(bin)TriggerMenuXMLrchk.in -tag=$(tags) $(TriggerMenuXMLrchk_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_TriggerMenuXMLrchk_makefile) TriggerMenuXMLrchk; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(TriggerMenuXMLrchk_extratags) build constituent_makefile -out=$(cmt_local_TriggerMenuXMLrchk_makefile) TriggerMenuXMLrchk

TriggerMenuXMLrchk :: $(TriggerMenuXMLrchk_dependencies) $(cmt_local_TriggerMenuXMLrchk_makefile) dirs TriggerMenuXMLrchkdirs
	$(echo) "(constituents.make) Starting TriggerMenuXMLrchk"
	@if test -f $(cmt_local_TriggerMenuXMLrchk_makefile); then \
	  $(MAKE) -f $(cmt_local_TriggerMenuXMLrchk_makefile) TriggerMenuXMLrchk; \
	  fi
#	@$(MAKE) -f $(cmt_local_TriggerMenuXMLrchk_makefile) TriggerMenuXMLrchk
	$(echo) "(constituents.make) TriggerMenuXMLrchk done"

clean :: TriggerMenuXMLrchkclean ;

TriggerMenuXMLrchkclean :: $(TriggerMenuXMLrchkclean_dependencies) ##$(cmt_local_TriggerMenuXMLrchk_makefile)
	$(echo) "(constituents.make) Starting TriggerMenuXMLrchkclean"
	@-if test -f $(cmt_local_TriggerMenuXMLrchk_makefile); then \
	  $(MAKE) -f $(cmt_local_TriggerMenuXMLrchk_makefile) TriggerMenuXMLrchkclean; \
	fi
	$(echo) "(constituents.make) TriggerMenuXMLrchkclean done"
#	@-$(MAKE) -f $(cmt_local_TriggerMenuXMLrchk_makefile) TriggerMenuXMLrchkclean

##	  /bin/rm -f $(cmt_local_TriggerMenuXMLrchk_makefile) $(bin)TriggerMenuXMLrchk_dependencies.make

install :: TriggerMenuXMLrchkinstall ;

TriggerMenuXMLrchkinstall :: $(TriggerMenuXMLrchk_dependencies) $(cmt_local_TriggerMenuXMLrchk_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_TriggerMenuXMLrchk_makefile); then \
	  $(MAKE) -f $(cmt_local_TriggerMenuXMLrchk_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_TriggerMenuXMLrchk_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : TriggerMenuXMLrchkuninstall

$(foreach d,$(TriggerMenuXMLrchk_dependencies),$(eval $(d)uninstall_dependencies += TriggerMenuXMLrchkuninstall))

TriggerMenuXMLrchkuninstall : $(TriggerMenuXMLrchkuninstall_dependencies) ##$(cmt_local_TriggerMenuXMLrchk_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_TriggerMenuXMLrchk_makefile); then \
	  $(MAKE) -f $(cmt_local_TriggerMenuXMLrchk_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_TriggerMenuXMLrchk_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: TriggerMenuXMLrchkuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ TriggerMenuXMLrchk"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ TriggerMenuXMLrchk done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_install_includes_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_install_includes_has_target_tag

cmt_local_tagfile_install_includes = $(bin)$(TriggerMenuXML_tag)_install_includes.make
cmt_final_setup_install_includes = $(bin)setup_install_includes.make
cmt_local_install_includes_makefile = $(bin)install_includes.make

install_includes_extratags = -tag_add=target_install_includes

else

cmt_local_tagfile_install_includes = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_install_includes = $(bin)setup.make
cmt_local_install_includes_makefile = $(bin)install_includes.make

endif

not_install_includes_dependencies = { n=0; for p in $?; do m=0; for d in $(install_includes_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
install_includesdirs :
	@if test ! -d $(bin)install_includes; then $(mkdir) -p $(bin)install_includes; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)install_includes
else
install_includesdirs : ;
endif

ifdef cmt_install_includes_has_target_tag

ifndef QUICK
$(cmt_local_install_includes_makefile) : $(install_includes_dependencies) build_library_links
	$(echo) "(constituents.make) Building install_includes.make"; \
	  $(cmtexe) -tag=$(tags) $(install_includes_extratags) build constituent_config -out=$(cmt_local_install_includes_makefile) install_includes
else
$(cmt_local_install_includes_makefile) : $(install_includes_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install_includes) ] || \
	  [ ! -f $(cmt_final_setup_install_includes) ] || \
	  $(not_install_includes_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install_includes.make"; \
	  $(cmtexe) -tag=$(tags) $(install_includes_extratags) build constituent_config -out=$(cmt_local_install_includes_makefile) install_includes; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_install_includes_makefile) : $(install_includes_dependencies) build_library_links
	$(echo) "(constituents.make) Building install_includes.make"; \
	  $(cmtexe) -f=$(bin)install_includes.in -tag=$(tags) $(install_includes_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_includes_makefile) install_includes
else
$(cmt_local_install_includes_makefile) : $(install_includes_dependencies) $(cmt_build_library_linksstamp) $(bin)install_includes.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install_includes) ] || \
	  [ ! -f $(cmt_final_setup_install_includes) ] || \
	  $(not_install_includes_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install_includes.make"; \
	  $(cmtexe) -f=$(bin)install_includes.in -tag=$(tags) $(install_includes_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_includes_makefile) install_includes; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(install_includes_extratags) build constituent_makefile -out=$(cmt_local_install_includes_makefile) install_includes

install_includes :: $(install_includes_dependencies) $(cmt_local_install_includes_makefile) dirs install_includesdirs
	$(echo) "(constituents.make) Starting install_includes"
	@if test -f $(cmt_local_install_includes_makefile); then \
	  $(MAKE) -f $(cmt_local_install_includes_makefile) install_includes; \
	  fi
#	@$(MAKE) -f $(cmt_local_install_includes_makefile) install_includes
	$(echo) "(constituents.make) install_includes done"

clean :: install_includesclean ;

install_includesclean :: $(install_includesclean_dependencies) ##$(cmt_local_install_includes_makefile)
	$(echo) "(constituents.make) Starting install_includesclean"
	@-if test -f $(cmt_local_install_includes_makefile); then \
	  $(MAKE) -f $(cmt_local_install_includes_makefile) install_includesclean; \
	fi
	$(echo) "(constituents.make) install_includesclean done"
#	@-$(MAKE) -f $(cmt_local_install_includes_makefile) install_includesclean

##	  /bin/rm -f $(cmt_local_install_includes_makefile) $(bin)install_includes_dependencies.make

install :: install_includesinstall ;

install_includesinstall :: $(install_includes_dependencies) $(cmt_local_install_includes_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_install_includes_makefile); then \
	  $(MAKE) -f $(cmt_local_install_includes_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_install_includes_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : install_includesuninstall

$(foreach d,$(install_includes_dependencies),$(eval $(d)uninstall_dependencies += install_includesuninstall))

install_includesuninstall : $(install_includesuninstall_dependencies) ##$(cmt_local_install_includes_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_install_includes_makefile); then \
	  $(MAKE) -f $(cmt_local_install_includes_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_install_includes_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: install_includesuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ install_includes"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ install_includes done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_make_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_make_has_target_tag

cmt_local_tagfile_make = $(bin)$(TriggerMenuXML_tag)_make.make
cmt_final_setup_make = $(bin)setup_make.make
cmt_local_make_makefile = $(bin)make.make

make_extratags = -tag_add=target_make

else

cmt_local_tagfile_make = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_make = $(bin)setup.make
cmt_local_make_makefile = $(bin)make.make

endif

not_make_dependencies = { n=0; for p in $?; do m=0; for d in $(make_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
makedirs :
	@if test ! -d $(bin)make; then $(mkdir) -p $(bin)make; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)make
else
makedirs : ;
endif

ifdef cmt_make_has_target_tag

ifndef QUICK
$(cmt_local_make_makefile) : $(make_dependencies) build_library_links
	$(echo) "(constituents.make) Building make.make"; \
	  $(cmtexe) -tag=$(tags) $(make_extratags) build constituent_config -out=$(cmt_local_make_makefile) make
else
$(cmt_local_make_makefile) : $(make_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_make) ] || \
	  [ ! -f $(cmt_final_setup_make) ] || \
	  $(not_make_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building make.make"; \
	  $(cmtexe) -tag=$(tags) $(make_extratags) build constituent_config -out=$(cmt_local_make_makefile) make; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_make_makefile) : $(make_dependencies) build_library_links
	$(echo) "(constituents.make) Building make.make"; \
	  $(cmtexe) -f=$(bin)make.in -tag=$(tags) $(make_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_make_makefile) make
else
$(cmt_local_make_makefile) : $(make_dependencies) $(cmt_build_library_linksstamp) $(bin)make.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_make) ] || \
	  [ ! -f $(cmt_final_setup_make) ] || \
	  $(not_make_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building make.make"; \
	  $(cmtexe) -f=$(bin)make.in -tag=$(tags) $(make_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_make_makefile) make; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(make_extratags) build constituent_makefile -out=$(cmt_local_make_makefile) make

make :: $(make_dependencies) $(cmt_local_make_makefile) dirs makedirs
	$(echo) "(constituents.make) Starting make"
	@if test -f $(cmt_local_make_makefile); then \
	  $(MAKE) -f $(cmt_local_make_makefile) make; \
	  fi
#	@$(MAKE) -f $(cmt_local_make_makefile) make
	$(echo) "(constituents.make) make done"

clean :: makeclean ;

makeclean :: $(makeclean_dependencies) ##$(cmt_local_make_makefile)
	$(echo) "(constituents.make) Starting makeclean"
	@-if test -f $(cmt_local_make_makefile); then \
	  $(MAKE) -f $(cmt_local_make_makefile) makeclean; \
	fi
	$(echo) "(constituents.make) makeclean done"
#	@-$(MAKE) -f $(cmt_local_make_makefile) makeclean

##	  /bin/rm -f $(cmt_local_make_makefile) $(bin)make_dependencies.make

install :: makeinstall ;

makeinstall :: $(make_dependencies) $(cmt_local_make_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_make_makefile); then \
	  $(MAKE) -f $(cmt_local_make_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_make_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : makeuninstall

$(foreach d,$(make_dependencies),$(eval $(d)uninstall_dependencies += makeuninstall))

makeuninstall : $(makeuninstall_dependencies) ##$(cmt_local_make_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_make_makefile); then \
	  $(MAKE) -f $(cmt_local_make_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_make_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: makeuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ make"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ make done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_CompilePython_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_CompilePython_has_target_tag

cmt_local_tagfile_CompilePython = $(bin)$(TriggerMenuXML_tag)_CompilePython.make
cmt_final_setup_CompilePython = $(bin)setup_CompilePython.make
cmt_local_CompilePython_makefile = $(bin)CompilePython.make

CompilePython_extratags = -tag_add=target_CompilePython

else

cmt_local_tagfile_CompilePython = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_CompilePython = $(bin)setup.make
cmt_local_CompilePython_makefile = $(bin)CompilePython.make

endif

not_CompilePython_dependencies = { n=0; for p in $?; do m=0; for d in $(CompilePython_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
CompilePythondirs :
	@if test ! -d $(bin)CompilePython; then $(mkdir) -p $(bin)CompilePython; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)CompilePython
else
CompilePythondirs : ;
endif

ifdef cmt_CompilePython_has_target_tag

ifndef QUICK
$(cmt_local_CompilePython_makefile) : $(CompilePython_dependencies) build_library_links
	$(echo) "(constituents.make) Building CompilePython.make"; \
	  $(cmtexe) -tag=$(tags) $(CompilePython_extratags) build constituent_config -out=$(cmt_local_CompilePython_makefile) CompilePython
else
$(cmt_local_CompilePython_makefile) : $(CompilePython_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_CompilePython) ] || \
	  [ ! -f $(cmt_final_setup_CompilePython) ] || \
	  $(not_CompilePython_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building CompilePython.make"; \
	  $(cmtexe) -tag=$(tags) $(CompilePython_extratags) build constituent_config -out=$(cmt_local_CompilePython_makefile) CompilePython; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_CompilePython_makefile) : $(CompilePython_dependencies) build_library_links
	$(echo) "(constituents.make) Building CompilePython.make"; \
	  $(cmtexe) -f=$(bin)CompilePython.in -tag=$(tags) $(CompilePython_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_CompilePython_makefile) CompilePython
else
$(cmt_local_CompilePython_makefile) : $(CompilePython_dependencies) $(cmt_build_library_linksstamp) $(bin)CompilePython.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_CompilePython) ] || \
	  [ ! -f $(cmt_final_setup_CompilePython) ] || \
	  $(not_CompilePython_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building CompilePython.make"; \
	  $(cmtexe) -f=$(bin)CompilePython.in -tag=$(tags) $(CompilePython_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_CompilePython_makefile) CompilePython; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(CompilePython_extratags) build constituent_makefile -out=$(cmt_local_CompilePython_makefile) CompilePython

CompilePython :: $(CompilePython_dependencies) $(cmt_local_CompilePython_makefile) dirs CompilePythondirs
	$(echo) "(constituents.make) Starting CompilePython"
	@if test -f $(cmt_local_CompilePython_makefile); then \
	  $(MAKE) -f $(cmt_local_CompilePython_makefile) CompilePython; \
	  fi
#	@$(MAKE) -f $(cmt_local_CompilePython_makefile) CompilePython
	$(echo) "(constituents.make) CompilePython done"

clean :: CompilePythonclean ;

CompilePythonclean :: $(CompilePythonclean_dependencies) ##$(cmt_local_CompilePython_makefile)
	$(echo) "(constituents.make) Starting CompilePythonclean"
	@-if test -f $(cmt_local_CompilePython_makefile); then \
	  $(MAKE) -f $(cmt_local_CompilePython_makefile) CompilePythonclean; \
	fi
	$(echo) "(constituents.make) CompilePythonclean done"
#	@-$(MAKE) -f $(cmt_local_CompilePython_makefile) CompilePythonclean

##	  /bin/rm -f $(cmt_local_CompilePython_makefile) $(bin)CompilePython_dependencies.make

install :: CompilePythoninstall ;

CompilePythoninstall :: $(CompilePython_dependencies) $(cmt_local_CompilePython_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_CompilePython_makefile); then \
	  $(MAKE) -f $(cmt_local_CompilePython_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_CompilePython_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : CompilePythonuninstall

$(foreach d,$(CompilePython_dependencies),$(eval $(d)uninstall_dependencies += CompilePythonuninstall))

CompilePythonuninstall : $(CompilePythonuninstall_dependencies) ##$(cmt_local_CompilePython_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_CompilePython_makefile); then \
	  $(MAKE) -f $(cmt_local_CompilePython_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_CompilePython_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: CompilePythonuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ CompilePython"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ CompilePython done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_qmtest_run_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_qmtest_run_has_target_tag

cmt_local_tagfile_qmtest_run = $(bin)$(TriggerMenuXML_tag)_qmtest_run.make
cmt_final_setup_qmtest_run = $(bin)setup_qmtest_run.make
cmt_local_qmtest_run_makefile = $(bin)qmtest_run.make

qmtest_run_extratags = -tag_add=target_qmtest_run

else

cmt_local_tagfile_qmtest_run = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_qmtest_run = $(bin)setup.make
cmt_local_qmtest_run_makefile = $(bin)qmtest_run.make

endif

not_qmtest_run_dependencies = { n=0; for p in $?; do m=0; for d in $(qmtest_run_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
qmtest_rundirs :
	@if test ! -d $(bin)qmtest_run; then $(mkdir) -p $(bin)qmtest_run; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)qmtest_run
else
qmtest_rundirs : ;
endif

ifdef cmt_qmtest_run_has_target_tag

ifndef QUICK
$(cmt_local_qmtest_run_makefile) : $(qmtest_run_dependencies) build_library_links
	$(echo) "(constituents.make) Building qmtest_run.make"; \
	  $(cmtexe) -tag=$(tags) $(qmtest_run_extratags) build constituent_config -out=$(cmt_local_qmtest_run_makefile) qmtest_run
else
$(cmt_local_qmtest_run_makefile) : $(qmtest_run_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_qmtest_run) ] || \
	  [ ! -f $(cmt_final_setup_qmtest_run) ] || \
	  $(not_qmtest_run_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building qmtest_run.make"; \
	  $(cmtexe) -tag=$(tags) $(qmtest_run_extratags) build constituent_config -out=$(cmt_local_qmtest_run_makefile) qmtest_run; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_qmtest_run_makefile) : $(qmtest_run_dependencies) build_library_links
	$(echo) "(constituents.make) Building qmtest_run.make"; \
	  $(cmtexe) -f=$(bin)qmtest_run.in -tag=$(tags) $(qmtest_run_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_qmtest_run_makefile) qmtest_run
else
$(cmt_local_qmtest_run_makefile) : $(qmtest_run_dependencies) $(cmt_build_library_linksstamp) $(bin)qmtest_run.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_qmtest_run) ] || \
	  [ ! -f $(cmt_final_setup_qmtest_run) ] || \
	  $(not_qmtest_run_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building qmtest_run.make"; \
	  $(cmtexe) -f=$(bin)qmtest_run.in -tag=$(tags) $(qmtest_run_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_qmtest_run_makefile) qmtest_run; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(qmtest_run_extratags) build constituent_makefile -out=$(cmt_local_qmtest_run_makefile) qmtest_run

qmtest_run :: $(qmtest_run_dependencies) $(cmt_local_qmtest_run_makefile) dirs qmtest_rundirs
	$(echo) "(constituents.make) Starting qmtest_run"
	@if test -f $(cmt_local_qmtest_run_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_run_makefile) qmtest_run; \
	  fi
#	@$(MAKE) -f $(cmt_local_qmtest_run_makefile) qmtest_run
	$(echo) "(constituents.make) qmtest_run done"

clean :: qmtest_runclean ;

qmtest_runclean :: $(qmtest_runclean_dependencies) ##$(cmt_local_qmtest_run_makefile)
	$(echo) "(constituents.make) Starting qmtest_runclean"
	@-if test -f $(cmt_local_qmtest_run_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_run_makefile) qmtest_runclean; \
	fi
	$(echo) "(constituents.make) qmtest_runclean done"
#	@-$(MAKE) -f $(cmt_local_qmtest_run_makefile) qmtest_runclean

##	  /bin/rm -f $(cmt_local_qmtest_run_makefile) $(bin)qmtest_run_dependencies.make

install :: qmtest_runinstall ;

qmtest_runinstall :: $(qmtest_run_dependencies) $(cmt_local_qmtest_run_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_qmtest_run_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_run_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_qmtest_run_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : qmtest_rununinstall

$(foreach d,$(qmtest_run_dependencies),$(eval $(d)uninstall_dependencies += qmtest_rununinstall))

qmtest_rununinstall : $(qmtest_rununinstall_dependencies) ##$(cmt_local_qmtest_run_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_qmtest_run_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_run_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_qmtest_run_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: qmtest_rununinstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ qmtest_run"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ qmtest_run done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_qmtest_summarize_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_qmtest_summarize_has_target_tag

cmt_local_tagfile_qmtest_summarize = $(bin)$(TriggerMenuXML_tag)_qmtest_summarize.make
cmt_final_setup_qmtest_summarize = $(bin)setup_qmtest_summarize.make
cmt_local_qmtest_summarize_makefile = $(bin)qmtest_summarize.make

qmtest_summarize_extratags = -tag_add=target_qmtest_summarize

else

cmt_local_tagfile_qmtest_summarize = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_qmtest_summarize = $(bin)setup.make
cmt_local_qmtest_summarize_makefile = $(bin)qmtest_summarize.make

endif

not_qmtest_summarize_dependencies = { n=0; for p in $?; do m=0; for d in $(qmtest_summarize_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
qmtest_summarizedirs :
	@if test ! -d $(bin)qmtest_summarize; then $(mkdir) -p $(bin)qmtest_summarize; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)qmtest_summarize
else
qmtest_summarizedirs : ;
endif

ifdef cmt_qmtest_summarize_has_target_tag

ifndef QUICK
$(cmt_local_qmtest_summarize_makefile) : $(qmtest_summarize_dependencies) build_library_links
	$(echo) "(constituents.make) Building qmtest_summarize.make"; \
	  $(cmtexe) -tag=$(tags) $(qmtest_summarize_extratags) build constituent_config -out=$(cmt_local_qmtest_summarize_makefile) qmtest_summarize
else
$(cmt_local_qmtest_summarize_makefile) : $(qmtest_summarize_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_qmtest_summarize) ] || \
	  [ ! -f $(cmt_final_setup_qmtest_summarize) ] || \
	  $(not_qmtest_summarize_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building qmtest_summarize.make"; \
	  $(cmtexe) -tag=$(tags) $(qmtest_summarize_extratags) build constituent_config -out=$(cmt_local_qmtest_summarize_makefile) qmtest_summarize; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_qmtest_summarize_makefile) : $(qmtest_summarize_dependencies) build_library_links
	$(echo) "(constituents.make) Building qmtest_summarize.make"; \
	  $(cmtexe) -f=$(bin)qmtest_summarize.in -tag=$(tags) $(qmtest_summarize_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_qmtest_summarize_makefile) qmtest_summarize
else
$(cmt_local_qmtest_summarize_makefile) : $(qmtest_summarize_dependencies) $(cmt_build_library_linksstamp) $(bin)qmtest_summarize.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_qmtest_summarize) ] || \
	  [ ! -f $(cmt_final_setup_qmtest_summarize) ] || \
	  $(not_qmtest_summarize_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building qmtest_summarize.make"; \
	  $(cmtexe) -f=$(bin)qmtest_summarize.in -tag=$(tags) $(qmtest_summarize_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_qmtest_summarize_makefile) qmtest_summarize; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(qmtest_summarize_extratags) build constituent_makefile -out=$(cmt_local_qmtest_summarize_makefile) qmtest_summarize

qmtest_summarize :: $(qmtest_summarize_dependencies) $(cmt_local_qmtest_summarize_makefile) dirs qmtest_summarizedirs
	$(echo) "(constituents.make) Starting qmtest_summarize"
	@if test -f $(cmt_local_qmtest_summarize_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_summarize_makefile) qmtest_summarize; \
	  fi
#	@$(MAKE) -f $(cmt_local_qmtest_summarize_makefile) qmtest_summarize
	$(echo) "(constituents.make) qmtest_summarize done"

clean :: qmtest_summarizeclean ;

qmtest_summarizeclean :: $(qmtest_summarizeclean_dependencies) ##$(cmt_local_qmtest_summarize_makefile)
	$(echo) "(constituents.make) Starting qmtest_summarizeclean"
	@-if test -f $(cmt_local_qmtest_summarize_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_summarize_makefile) qmtest_summarizeclean; \
	fi
	$(echo) "(constituents.make) qmtest_summarizeclean done"
#	@-$(MAKE) -f $(cmt_local_qmtest_summarize_makefile) qmtest_summarizeclean

##	  /bin/rm -f $(cmt_local_qmtest_summarize_makefile) $(bin)qmtest_summarize_dependencies.make

install :: qmtest_summarizeinstall ;

qmtest_summarizeinstall :: $(qmtest_summarize_dependencies) $(cmt_local_qmtest_summarize_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_qmtest_summarize_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_summarize_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_qmtest_summarize_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : qmtest_summarizeuninstall

$(foreach d,$(qmtest_summarize_dependencies),$(eval $(d)uninstall_dependencies += qmtest_summarizeuninstall))

qmtest_summarizeuninstall : $(qmtest_summarizeuninstall_dependencies) ##$(cmt_local_qmtest_summarize_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_qmtest_summarize_makefile); then \
	  $(MAKE) -f $(cmt_local_qmtest_summarize_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_qmtest_summarize_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: qmtest_summarizeuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ qmtest_summarize"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ qmtest_summarize done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_TestPackage_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_TestPackage_has_target_tag

cmt_local_tagfile_TestPackage = $(bin)$(TriggerMenuXML_tag)_TestPackage.make
cmt_final_setup_TestPackage = $(bin)setup_TestPackage.make
cmt_local_TestPackage_makefile = $(bin)TestPackage.make

TestPackage_extratags = -tag_add=target_TestPackage

else

cmt_local_tagfile_TestPackage = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_TestPackage = $(bin)setup.make
cmt_local_TestPackage_makefile = $(bin)TestPackage.make

endif

not_TestPackage_dependencies = { n=0; for p in $?; do m=0; for d in $(TestPackage_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
TestPackagedirs :
	@if test ! -d $(bin)TestPackage; then $(mkdir) -p $(bin)TestPackage; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)TestPackage
else
TestPackagedirs : ;
endif

ifdef cmt_TestPackage_has_target_tag

ifndef QUICK
$(cmt_local_TestPackage_makefile) : $(TestPackage_dependencies) build_library_links
	$(echo) "(constituents.make) Building TestPackage.make"; \
	  $(cmtexe) -tag=$(tags) $(TestPackage_extratags) build constituent_config -out=$(cmt_local_TestPackage_makefile) TestPackage
else
$(cmt_local_TestPackage_makefile) : $(TestPackage_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_TestPackage) ] || \
	  [ ! -f $(cmt_final_setup_TestPackage) ] || \
	  $(not_TestPackage_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building TestPackage.make"; \
	  $(cmtexe) -tag=$(tags) $(TestPackage_extratags) build constituent_config -out=$(cmt_local_TestPackage_makefile) TestPackage; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_TestPackage_makefile) : $(TestPackage_dependencies) build_library_links
	$(echo) "(constituents.make) Building TestPackage.make"; \
	  $(cmtexe) -f=$(bin)TestPackage.in -tag=$(tags) $(TestPackage_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_TestPackage_makefile) TestPackage
else
$(cmt_local_TestPackage_makefile) : $(TestPackage_dependencies) $(cmt_build_library_linksstamp) $(bin)TestPackage.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_TestPackage) ] || \
	  [ ! -f $(cmt_final_setup_TestPackage) ] || \
	  $(not_TestPackage_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building TestPackage.make"; \
	  $(cmtexe) -f=$(bin)TestPackage.in -tag=$(tags) $(TestPackage_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_TestPackage_makefile) TestPackage; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(TestPackage_extratags) build constituent_makefile -out=$(cmt_local_TestPackage_makefile) TestPackage

TestPackage :: $(TestPackage_dependencies) $(cmt_local_TestPackage_makefile) dirs TestPackagedirs
	$(echo) "(constituents.make) Starting TestPackage"
	@if test -f $(cmt_local_TestPackage_makefile); then \
	  $(MAKE) -f $(cmt_local_TestPackage_makefile) TestPackage; \
	  fi
#	@$(MAKE) -f $(cmt_local_TestPackage_makefile) TestPackage
	$(echo) "(constituents.make) TestPackage done"

clean :: TestPackageclean ;

TestPackageclean :: $(TestPackageclean_dependencies) ##$(cmt_local_TestPackage_makefile)
	$(echo) "(constituents.make) Starting TestPackageclean"
	@-if test -f $(cmt_local_TestPackage_makefile); then \
	  $(MAKE) -f $(cmt_local_TestPackage_makefile) TestPackageclean; \
	fi
	$(echo) "(constituents.make) TestPackageclean done"
#	@-$(MAKE) -f $(cmt_local_TestPackage_makefile) TestPackageclean

##	  /bin/rm -f $(cmt_local_TestPackage_makefile) $(bin)TestPackage_dependencies.make

install :: TestPackageinstall ;

TestPackageinstall :: $(TestPackage_dependencies) $(cmt_local_TestPackage_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_TestPackage_makefile); then \
	  $(MAKE) -f $(cmt_local_TestPackage_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_TestPackage_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : TestPackageuninstall

$(foreach d,$(TestPackage_dependencies),$(eval $(d)uninstall_dependencies += TestPackageuninstall))

TestPackageuninstall : $(TestPackageuninstall_dependencies) ##$(cmt_local_TestPackage_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_TestPackage_makefile); then \
	  $(MAKE) -f $(cmt_local_TestPackage_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_TestPackage_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: TestPackageuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ TestPackage"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ TestPackage done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_TestProject_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_TestProject_has_target_tag

cmt_local_tagfile_TestProject = $(bin)$(TriggerMenuXML_tag)_TestProject.make
cmt_final_setup_TestProject = $(bin)setup_TestProject.make
cmt_local_TestProject_makefile = $(bin)TestProject.make

TestProject_extratags = -tag_add=target_TestProject

else

cmt_local_tagfile_TestProject = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_TestProject = $(bin)setup.make
cmt_local_TestProject_makefile = $(bin)TestProject.make

endif

not_TestProject_dependencies = { n=0; for p in $?; do m=0; for d in $(TestProject_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
TestProjectdirs :
	@if test ! -d $(bin)TestProject; then $(mkdir) -p $(bin)TestProject; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)TestProject
else
TestProjectdirs : ;
endif

ifdef cmt_TestProject_has_target_tag

ifndef QUICK
$(cmt_local_TestProject_makefile) : $(TestProject_dependencies) build_library_links
	$(echo) "(constituents.make) Building TestProject.make"; \
	  $(cmtexe) -tag=$(tags) $(TestProject_extratags) build constituent_config -out=$(cmt_local_TestProject_makefile) TestProject
else
$(cmt_local_TestProject_makefile) : $(TestProject_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_TestProject) ] || \
	  [ ! -f $(cmt_final_setup_TestProject) ] || \
	  $(not_TestProject_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building TestProject.make"; \
	  $(cmtexe) -tag=$(tags) $(TestProject_extratags) build constituent_config -out=$(cmt_local_TestProject_makefile) TestProject; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_TestProject_makefile) : $(TestProject_dependencies) build_library_links
	$(echo) "(constituents.make) Building TestProject.make"; \
	  $(cmtexe) -f=$(bin)TestProject.in -tag=$(tags) $(TestProject_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_TestProject_makefile) TestProject
else
$(cmt_local_TestProject_makefile) : $(TestProject_dependencies) $(cmt_build_library_linksstamp) $(bin)TestProject.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_TestProject) ] || \
	  [ ! -f $(cmt_final_setup_TestProject) ] || \
	  $(not_TestProject_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building TestProject.make"; \
	  $(cmtexe) -f=$(bin)TestProject.in -tag=$(tags) $(TestProject_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_TestProject_makefile) TestProject; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(TestProject_extratags) build constituent_makefile -out=$(cmt_local_TestProject_makefile) TestProject

TestProject :: $(TestProject_dependencies) $(cmt_local_TestProject_makefile) dirs TestProjectdirs
	$(echo) "(constituents.make) Starting TestProject"
	@if test -f $(cmt_local_TestProject_makefile); then \
	  $(MAKE) -f $(cmt_local_TestProject_makefile) TestProject; \
	  fi
#	@$(MAKE) -f $(cmt_local_TestProject_makefile) TestProject
	$(echo) "(constituents.make) TestProject done"

clean :: TestProjectclean ;

TestProjectclean :: $(TestProjectclean_dependencies) ##$(cmt_local_TestProject_makefile)
	$(echo) "(constituents.make) Starting TestProjectclean"
	@-if test -f $(cmt_local_TestProject_makefile); then \
	  $(MAKE) -f $(cmt_local_TestProject_makefile) TestProjectclean; \
	fi
	$(echo) "(constituents.make) TestProjectclean done"
#	@-$(MAKE) -f $(cmt_local_TestProject_makefile) TestProjectclean

##	  /bin/rm -f $(cmt_local_TestProject_makefile) $(bin)TestProject_dependencies.make

install :: TestProjectinstall ;

TestProjectinstall :: $(TestProject_dependencies) $(cmt_local_TestProject_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_TestProject_makefile); then \
	  $(MAKE) -f $(cmt_local_TestProject_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_TestProject_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : TestProjectuninstall

$(foreach d,$(TestProject_dependencies),$(eval $(d)uninstall_dependencies += TestProjectuninstall))

TestProjectuninstall : $(TestProjectuninstall_dependencies) ##$(cmt_local_TestProject_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_TestProject_makefile); then \
	  $(MAKE) -f $(cmt_local_TestProject_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_TestProject_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: TestProjectuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ TestProject"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ TestProject done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_new_rootsys_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_new_rootsys_has_target_tag

cmt_local_tagfile_new_rootsys = $(bin)$(TriggerMenuXML_tag)_new_rootsys.make
cmt_final_setup_new_rootsys = $(bin)setup_new_rootsys.make
cmt_local_new_rootsys_makefile = $(bin)new_rootsys.make

new_rootsys_extratags = -tag_add=target_new_rootsys

else

cmt_local_tagfile_new_rootsys = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_new_rootsys = $(bin)setup.make
cmt_local_new_rootsys_makefile = $(bin)new_rootsys.make

endif

not_new_rootsys_dependencies = { n=0; for p in $?; do m=0; for d in $(new_rootsys_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
new_rootsysdirs :
	@if test ! -d $(bin)new_rootsys; then $(mkdir) -p $(bin)new_rootsys; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)new_rootsys
else
new_rootsysdirs : ;
endif

ifdef cmt_new_rootsys_has_target_tag

ifndef QUICK
$(cmt_local_new_rootsys_makefile) : $(new_rootsys_dependencies) build_library_links
	$(echo) "(constituents.make) Building new_rootsys.make"; \
	  $(cmtexe) -tag=$(tags) $(new_rootsys_extratags) build constituent_config -out=$(cmt_local_new_rootsys_makefile) new_rootsys
else
$(cmt_local_new_rootsys_makefile) : $(new_rootsys_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_new_rootsys) ] || \
	  [ ! -f $(cmt_final_setup_new_rootsys) ] || \
	  $(not_new_rootsys_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building new_rootsys.make"; \
	  $(cmtexe) -tag=$(tags) $(new_rootsys_extratags) build constituent_config -out=$(cmt_local_new_rootsys_makefile) new_rootsys; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_new_rootsys_makefile) : $(new_rootsys_dependencies) build_library_links
	$(echo) "(constituents.make) Building new_rootsys.make"; \
	  $(cmtexe) -f=$(bin)new_rootsys.in -tag=$(tags) $(new_rootsys_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_new_rootsys_makefile) new_rootsys
else
$(cmt_local_new_rootsys_makefile) : $(new_rootsys_dependencies) $(cmt_build_library_linksstamp) $(bin)new_rootsys.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_new_rootsys) ] || \
	  [ ! -f $(cmt_final_setup_new_rootsys) ] || \
	  $(not_new_rootsys_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building new_rootsys.make"; \
	  $(cmtexe) -f=$(bin)new_rootsys.in -tag=$(tags) $(new_rootsys_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_new_rootsys_makefile) new_rootsys; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(new_rootsys_extratags) build constituent_makefile -out=$(cmt_local_new_rootsys_makefile) new_rootsys

new_rootsys :: $(new_rootsys_dependencies) $(cmt_local_new_rootsys_makefile) dirs new_rootsysdirs
	$(echo) "(constituents.make) Starting new_rootsys"
	@if test -f $(cmt_local_new_rootsys_makefile); then \
	  $(MAKE) -f $(cmt_local_new_rootsys_makefile) new_rootsys; \
	  fi
#	@$(MAKE) -f $(cmt_local_new_rootsys_makefile) new_rootsys
	$(echo) "(constituents.make) new_rootsys done"

clean :: new_rootsysclean ;

new_rootsysclean :: $(new_rootsysclean_dependencies) ##$(cmt_local_new_rootsys_makefile)
	$(echo) "(constituents.make) Starting new_rootsysclean"
	@-if test -f $(cmt_local_new_rootsys_makefile); then \
	  $(MAKE) -f $(cmt_local_new_rootsys_makefile) new_rootsysclean; \
	fi
	$(echo) "(constituents.make) new_rootsysclean done"
#	@-$(MAKE) -f $(cmt_local_new_rootsys_makefile) new_rootsysclean

##	  /bin/rm -f $(cmt_local_new_rootsys_makefile) $(bin)new_rootsys_dependencies.make

install :: new_rootsysinstall ;

new_rootsysinstall :: $(new_rootsys_dependencies) $(cmt_local_new_rootsys_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_new_rootsys_makefile); then \
	  $(MAKE) -f $(cmt_local_new_rootsys_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_new_rootsys_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : new_rootsysuninstall

$(foreach d,$(new_rootsys_dependencies),$(eval $(d)uninstall_dependencies += new_rootsysuninstall))

new_rootsysuninstall : $(new_rootsysuninstall_dependencies) ##$(cmt_local_new_rootsys_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_new_rootsys_makefile); then \
	  $(MAKE) -f $(cmt_local_new_rootsys_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_new_rootsys_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: new_rootsysuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ new_rootsys"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ new_rootsys done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_doxygen_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_doxygen_has_target_tag

cmt_local_tagfile_doxygen = $(bin)$(TriggerMenuXML_tag)_doxygen.make
cmt_final_setup_doxygen = $(bin)setup_doxygen.make
cmt_local_doxygen_makefile = $(bin)doxygen.make

doxygen_extratags = -tag_add=target_doxygen

else

cmt_local_tagfile_doxygen = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_doxygen = $(bin)setup.make
cmt_local_doxygen_makefile = $(bin)doxygen.make

endif

not_doxygen_dependencies = { n=0; for p in $?; do m=0; for d in $(doxygen_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
doxygendirs :
	@if test ! -d $(bin)doxygen; then $(mkdir) -p $(bin)doxygen; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)doxygen
else
doxygendirs : ;
endif

ifdef cmt_doxygen_has_target_tag

ifndef QUICK
$(cmt_local_doxygen_makefile) : $(doxygen_dependencies) build_library_links
	$(echo) "(constituents.make) Building doxygen.make"; \
	  $(cmtexe) -tag=$(tags) $(doxygen_extratags) build constituent_config -out=$(cmt_local_doxygen_makefile) doxygen
else
$(cmt_local_doxygen_makefile) : $(doxygen_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_doxygen) ] || \
	  [ ! -f $(cmt_final_setup_doxygen) ] || \
	  $(not_doxygen_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building doxygen.make"; \
	  $(cmtexe) -tag=$(tags) $(doxygen_extratags) build constituent_config -out=$(cmt_local_doxygen_makefile) doxygen; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_doxygen_makefile) : $(doxygen_dependencies) build_library_links
	$(echo) "(constituents.make) Building doxygen.make"; \
	  $(cmtexe) -f=$(bin)doxygen.in -tag=$(tags) $(doxygen_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_doxygen_makefile) doxygen
else
$(cmt_local_doxygen_makefile) : $(doxygen_dependencies) $(cmt_build_library_linksstamp) $(bin)doxygen.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_doxygen) ] || \
	  [ ! -f $(cmt_final_setup_doxygen) ] || \
	  $(not_doxygen_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building doxygen.make"; \
	  $(cmtexe) -f=$(bin)doxygen.in -tag=$(tags) $(doxygen_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_doxygen_makefile) doxygen; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(doxygen_extratags) build constituent_makefile -out=$(cmt_local_doxygen_makefile) doxygen

doxygen :: $(doxygen_dependencies) $(cmt_local_doxygen_makefile) dirs doxygendirs
	$(echo) "(constituents.make) Starting doxygen"
	@if test -f $(cmt_local_doxygen_makefile); then \
	  $(MAKE) -f $(cmt_local_doxygen_makefile) doxygen; \
	  fi
#	@$(MAKE) -f $(cmt_local_doxygen_makefile) doxygen
	$(echo) "(constituents.make) doxygen done"

clean :: doxygenclean ;

doxygenclean :: $(doxygenclean_dependencies) ##$(cmt_local_doxygen_makefile)
	$(echo) "(constituents.make) Starting doxygenclean"
	@-if test -f $(cmt_local_doxygen_makefile); then \
	  $(MAKE) -f $(cmt_local_doxygen_makefile) doxygenclean; \
	fi
	$(echo) "(constituents.make) doxygenclean done"
#	@-$(MAKE) -f $(cmt_local_doxygen_makefile) doxygenclean

##	  /bin/rm -f $(cmt_local_doxygen_makefile) $(bin)doxygen_dependencies.make

install :: doxygeninstall ;

doxygeninstall :: $(doxygen_dependencies) $(cmt_local_doxygen_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_doxygen_makefile); then \
	  $(MAKE) -f $(cmt_local_doxygen_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_doxygen_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : doxygenuninstall

$(foreach d,$(doxygen_dependencies),$(eval $(d)uninstall_dependencies += doxygenuninstall))

doxygenuninstall : $(doxygenuninstall_dependencies) ##$(cmt_local_doxygen_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_doxygen_makefile); then \
	  $(MAKE) -f $(cmt_local_doxygen_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_doxygen_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: doxygenuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ doxygen"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ doxygen done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_post_install_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_post_install_has_target_tag

cmt_local_tagfile_post_install = $(bin)$(TriggerMenuXML_tag)_post_install.make
cmt_final_setup_post_install = $(bin)setup_post_install.make
cmt_local_post_install_makefile = $(bin)post_install.make

post_install_extratags = -tag_add=target_post_install

else

cmt_local_tagfile_post_install = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_post_install = $(bin)setup.make
cmt_local_post_install_makefile = $(bin)post_install.make

endif

not_post_install_dependencies = { n=0; for p in $?; do m=0; for d in $(post_install_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
post_installdirs :
	@if test ! -d $(bin)post_install; then $(mkdir) -p $(bin)post_install; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)post_install
else
post_installdirs : ;
endif

ifdef cmt_post_install_has_target_tag

ifndef QUICK
$(cmt_local_post_install_makefile) : $(post_install_dependencies) build_library_links
	$(echo) "(constituents.make) Building post_install.make"; \
	  $(cmtexe) -tag=$(tags) $(post_install_extratags) build constituent_config -out=$(cmt_local_post_install_makefile) post_install
else
$(cmt_local_post_install_makefile) : $(post_install_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_post_install) ] || \
	  [ ! -f $(cmt_final_setup_post_install) ] || \
	  $(not_post_install_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building post_install.make"; \
	  $(cmtexe) -tag=$(tags) $(post_install_extratags) build constituent_config -out=$(cmt_local_post_install_makefile) post_install; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_post_install_makefile) : $(post_install_dependencies) build_library_links
	$(echo) "(constituents.make) Building post_install.make"; \
	  $(cmtexe) -f=$(bin)post_install.in -tag=$(tags) $(post_install_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_post_install_makefile) post_install
else
$(cmt_local_post_install_makefile) : $(post_install_dependencies) $(cmt_build_library_linksstamp) $(bin)post_install.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_post_install) ] || \
	  [ ! -f $(cmt_final_setup_post_install) ] || \
	  $(not_post_install_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building post_install.make"; \
	  $(cmtexe) -f=$(bin)post_install.in -tag=$(tags) $(post_install_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_post_install_makefile) post_install; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(post_install_extratags) build constituent_makefile -out=$(cmt_local_post_install_makefile) post_install

post_install :: $(post_install_dependencies) $(cmt_local_post_install_makefile) dirs post_installdirs
	$(echo) "(constituents.make) Starting post_install"
	@if test -f $(cmt_local_post_install_makefile); then \
	  $(MAKE) -f $(cmt_local_post_install_makefile) post_install; \
	  fi
#	@$(MAKE) -f $(cmt_local_post_install_makefile) post_install
	$(echo) "(constituents.make) post_install done"

clean :: post_installclean ;

post_installclean :: $(post_installclean_dependencies) ##$(cmt_local_post_install_makefile)
	$(echo) "(constituents.make) Starting post_installclean"
	@-if test -f $(cmt_local_post_install_makefile); then \
	  $(MAKE) -f $(cmt_local_post_install_makefile) post_installclean; \
	fi
	$(echo) "(constituents.make) post_installclean done"
#	@-$(MAKE) -f $(cmt_local_post_install_makefile) post_installclean

##	  /bin/rm -f $(cmt_local_post_install_makefile) $(bin)post_install_dependencies.make

install :: post_installinstall ;

post_installinstall :: $(post_install_dependencies) $(cmt_local_post_install_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_post_install_makefile); then \
	  $(MAKE) -f $(cmt_local_post_install_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_post_install_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : post_installuninstall

$(foreach d,$(post_install_dependencies),$(eval $(d)uninstall_dependencies += post_installuninstall))

post_installuninstall : $(post_installuninstall_dependencies) ##$(cmt_local_post_install_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_post_install_makefile); then \
	  $(MAKE) -f $(cmt_local_post_install_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_post_install_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: post_installuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ post_install"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ post_install done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_post_merge_rootmap_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_post_merge_rootmap_has_target_tag

cmt_local_tagfile_post_merge_rootmap = $(bin)$(TriggerMenuXML_tag)_post_merge_rootmap.make
cmt_final_setup_post_merge_rootmap = $(bin)setup_post_merge_rootmap.make
cmt_local_post_merge_rootmap_makefile = $(bin)post_merge_rootmap.make

post_merge_rootmap_extratags = -tag_add=target_post_merge_rootmap

else

cmt_local_tagfile_post_merge_rootmap = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_post_merge_rootmap = $(bin)setup.make
cmt_local_post_merge_rootmap_makefile = $(bin)post_merge_rootmap.make

endif

not_post_merge_rootmap_dependencies = { n=0; for p in $?; do m=0; for d in $(post_merge_rootmap_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
post_merge_rootmapdirs :
	@if test ! -d $(bin)post_merge_rootmap; then $(mkdir) -p $(bin)post_merge_rootmap; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)post_merge_rootmap
else
post_merge_rootmapdirs : ;
endif

ifdef cmt_post_merge_rootmap_has_target_tag

ifndef QUICK
$(cmt_local_post_merge_rootmap_makefile) : $(post_merge_rootmap_dependencies) build_library_links
	$(echo) "(constituents.make) Building post_merge_rootmap.make"; \
	  $(cmtexe) -tag=$(tags) $(post_merge_rootmap_extratags) build constituent_config -out=$(cmt_local_post_merge_rootmap_makefile) post_merge_rootmap
else
$(cmt_local_post_merge_rootmap_makefile) : $(post_merge_rootmap_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_post_merge_rootmap) ] || \
	  [ ! -f $(cmt_final_setup_post_merge_rootmap) ] || \
	  $(not_post_merge_rootmap_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building post_merge_rootmap.make"; \
	  $(cmtexe) -tag=$(tags) $(post_merge_rootmap_extratags) build constituent_config -out=$(cmt_local_post_merge_rootmap_makefile) post_merge_rootmap; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_post_merge_rootmap_makefile) : $(post_merge_rootmap_dependencies) build_library_links
	$(echo) "(constituents.make) Building post_merge_rootmap.make"; \
	  $(cmtexe) -f=$(bin)post_merge_rootmap.in -tag=$(tags) $(post_merge_rootmap_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_post_merge_rootmap_makefile) post_merge_rootmap
else
$(cmt_local_post_merge_rootmap_makefile) : $(post_merge_rootmap_dependencies) $(cmt_build_library_linksstamp) $(bin)post_merge_rootmap.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_post_merge_rootmap) ] || \
	  [ ! -f $(cmt_final_setup_post_merge_rootmap) ] || \
	  $(not_post_merge_rootmap_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building post_merge_rootmap.make"; \
	  $(cmtexe) -f=$(bin)post_merge_rootmap.in -tag=$(tags) $(post_merge_rootmap_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_post_merge_rootmap_makefile) post_merge_rootmap; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(post_merge_rootmap_extratags) build constituent_makefile -out=$(cmt_local_post_merge_rootmap_makefile) post_merge_rootmap

post_merge_rootmap :: $(post_merge_rootmap_dependencies) $(cmt_local_post_merge_rootmap_makefile) dirs post_merge_rootmapdirs
	$(echo) "(constituents.make) Starting post_merge_rootmap"
	@if test -f $(cmt_local_post_merge_rootmap_makefile); then \
	  $(MAKE) -f $(cmt_local_post_merge_rootmap_makefile) post_merge_rootmap; \
	  fi
#	@$(MAKE) -f $(cmt_local_post_merge_rootmap_makefile) post_merge_rootmap
	$(echo) "(constituents.make) post_merge_rootmap done"

clean :: post_merge_rootmapclean ;

post_merge_rootmapclean :: $(post_merge_rootmapclean_dependencies) ##$(cmt_local_post_merge_rootmap_makefile)
	$(echo) "(constituents.make) Starting post_merge_rootmapclean"
	@-if test -f $(cmt_local_post_merge_rootmap_makefile); then \
	  $(MAKE) -f $(cmt_local_post_merge_rootmap_makefile) post_merge_rootmapclean; \
	fi
	$(echo) "(constituents.make) post_merge_rootmapclean done"
#	@-$(MAKE) -f $(cmt_local_post_merge_rootmap_makefile) post_merge_rootmapclean

##	  /bin/rm -f $(cmt_local_post_merge_rootmap_makefile) $(bin)post_merge_rootmap_dependencies.make

install :: post_merge_rootmapinstall ;

post_merge_rootmapinstall :: $(post_merge_rootmap_dependencies) $(cmt_local_post_merge_rootmap_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_post_merge_rootmap_makefile); then \
	  $(MAKE) -f $(cmt_local_post_merge_rootmap_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_post_merge_rootmap_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : post_merge_rootmapuninstall

$(foreach d,$(post_merge_rootmap_dependencies),$(eval $(d)uninstall_dependencies += post_merge_rootmapuninstall))

post_merge_rootmapuninstall : $(post_merge_rootmapuninstall_dependencies) ##$(cmt_local_post_merge_rootmap_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_post_merge_rootmap_makefile); then \
	  $(MAKE) -f $(cmt_local_post_merge_rootmap_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_post_merge_rootmap_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: post_merge_rootmapuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ post_merge_rootmap"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ post_merge_rootmap done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_post_merge_genconfdb_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_post_merge_genconfdb_has_target_tag

cmt_local_tagfile_post_merge_genconfdb = $(bin)$(TriggerMenuXML_tag)_post_merge_genconfdb.make
cmt_final_setup_post_merge_genconfdb = $(bin)setup_post_merge_genconfdb.make
cmt_local_post_merge_genconfdb_makefile = $(bin)post_merge_genconfdb.make

post_merge_genconfdb_extratags = -tag_add=target_post_merge_genconfdb

else

cmt_local_tagfile_post_merge_genconfdb = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_post_merge_genconfdb = $(bin)setup.make
cmt_local_post_merge_genconfdb_makefile = $(bin)post_merge_genconfdb.make

endif

not_post_merge_genconfdb_dependencies = { n=0; for p in $?; do m=0; for d in $(post_merge_genconfdb_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
post_merge_genconfdbdirs :
	@if test ! -d $(bin)post_merge_genconfdb; then $(mkdir) -p $(bin)post_merge_genconfdb; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)post_merge_genconfdb
else
post_merge_genconfdbdirs : ;
endif

ifdef cmt_post_merge_genconfdb_has_target_tag

ifndef QUICK
$(cmt_local_post_merge_genconfdb_makefile) : $(post_merge_genconfdb_dependencies) build_library_links
	$(echo) "(constituents.make) Building post_merge_genconfdb.make"; \
	  $(cmtexe) -tag=$(tags) $(post_merge_genconfdb_extratags) build constituent_config -out=$(cmt_local_post_merge_genconfdb_makefile) post_merge_genconfdb
else
$(cmt_local_post_merge_genconfdb_makefile) : $(post_merge_genconfdb_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_post_merge_genconfdb) ] || \
	  [ ! -f $(cmt_final_setup_post_merge_genconfdb) ] || \
	  $(not_post_merge_genconfdb_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building post_merge_genconfdb.make"; \
	  $(cmtexe) -tag=$(tags) $(post_merge_genconfdb_extratags) build constituent_config -out=$(cmt_local_post_merge_genconfdb_makefile) post_merge_genconfdb; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_post_merge_genconfdb_makefile) : $(post_merge_genconfdb_dependencies) build_library_links
	$(echo) "(constituents.make) Building post_merge_genconfdb.make"; \
	  $(cmtexe) -f=$(bin)post_merge_genconfdb.in -tag=$(tags) $(post_merge_genconfdb_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_post_merge_genconfdb_makefile) post_merge_genconfdb
else
$(cmt_local_post_merge_genconfdb_makefile) : $(post_merge_genconfdb_dependencies) $(cmt_build_library_linksstamp) $(bin)post_merge_genconfdb.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_post_merge_genconfdb) ] || \
	  [ ! -f $(cmt_final_setup_post_merge_genconfdb) ] || \
	  $(not_post_merge_genconfdb_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building post_merge_genconfdb.make"; \
	  $(cmtexe) -f=$(bin)post_merge_genconfdb.in -tag=$(tags) $(post_merge_genconfdb_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_post_merge_genconfdb_makefile) post_merge_genconfdb; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(post_merge_genconfdb_extratags) build constituent_makefile -out=$(cmt_local_post_merge_genconfdb_makefile) post_merge_genconfdb

post_merge_genconfdb :: $(post_merge_genconfdb_dependencies) $(cmt_local_post_merge_genconfdb_makefile) dirs post_merge_genconfdbdirs
	$(echo) "(constituents.make) Starting post_merge_genconfdb"
	@if test -f $(cmt_local_post_merge_genconfdb_makefile); then \
	  $(MAKE) -f $(cmt_local_post_merge_genconfdb_makefile) post_merge_genconfdb; \
	  fi
#	@$(MAKE) -f $(cmt_local_post_merge_genconfdb_makefile) post_merge_genconfdb
	$(echo) "(constituents.make) post_merge_genconfdb done"

clean :: post_merge_genconfdbclean ;

post_merge_genconfdbclean :: $(post_merge_genconfdbclean_dependencies) ##$(cmt_local_post_merge_genconfdb_makefile)
	$(echo) "(constituents.make) Starting post_merge_genconfdbclean"
	@-if test -f $(cmt_local_post_merge_genconfdb_makefile); then \
	  $(MAKE) -f $(cmt_local_post_merge_genconfdb_makefile) post_merge_genconfdbclean; \
	fi
	$(echo) "(constituents.make) post_merge_genconfdbclean done"
#	@-$(MAKE) -f $(cmt_local_post_merge_genconfdb_makefile) post_merge_genconfdbclean

##	  /bin/rm -f $(cmt_local_post_merge_genconfdb_makefile) $(bin)post_merge_genconfdb_dependencies.make

install :: post_merge_genconfdbinstall ;

post_merge_genconfdbinstall :: $(post_merge_genconfdb_dependencies) $(cmt_local_post_merge_genconfdb_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_post_merge_genconfdb_makefile); then \
	  $(MAKE) -f $(cmt_local_post_merge_genconfdb_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_post_merge_genconfdb_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : post_merge_genconfdbuninstall

$(foreach d,$(post_merge_genconfdb_dependencies),$(eval $(d)uninstall_dependencies += post_merge_genconfdbuninstall))

post_merge_genconfdbuninstall : $(post_merge_genconfdbuninstall_dependencies) ##$(cmt_local_post_merge_genconfdb_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_post_merge_genconfdb_makefile); then \
	  $(MAKE) -f $(cmt_local_post_merge_genconfdb_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_post_merge_genconfdb_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: post_merge_genconfdbuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ post_merge_genconfdb"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ post_merge_genconfdb done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_post_build_tpcnvdb_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_post_build_tpcnvdb_has_target_tag

cmt_local_tagfile_post_build_tpcnvdb = $(bin)$(TriggerMenuXML_tag)_post_build_tpcnvdb.make
cmt_final_setup_post_build_tpcnvdb = $(bin)setup_post_build_tpcnvdb.make
cmt_local_post_build_tpcnvdb_makefile = $(bin)post_build_tpcnvdb.make

post_build_tpcnvdb_extratags = -tag_add=target_post_build_tpcnvdb

else

cmt_local_tagfile_post_build_tpcnvdb = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_post_build_tpcnvdb = $(bin)setup.make
cmt_local_post_build_tpcnvdb_makefile = $(bin)post_build_tpcnvdb.make

endif

not_post_build_tpcnvdb_dependencies = { n=0; for p in $?; do m=0; for d in $(post_build_tpcnvdb_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
post_build_tpcnvdbdirs :
	@if test ! -d $(bin)post_build_tpcnvdb; then $(mkdir) -p $(bin)post_build_tpcnvdb; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)post_build_tpcnvdb
else
post_build_tpcnvdbdirs : ;
endif

ifdef cmt_post_build_tpcnvdb_has_target_tag

ifndef QUICK
$(cmt_local_post_build_tpcnvdb_makefile) : $(post_build_tpcnvdb_dependencies) build_library_links
	$(echo) "(constituents.make) Building post_build_tpcnvdb.make"; \
	  $(cmtexe) -tag=$(tags) $(post_build_tpcnvdb_extratags) build constituent_config -out=$(cmt_local_post_build_tpcnvdb_makefile) post_build_tpcnvdb
else
$(cmt_local_post_build_tpcnvdb_makefile) : $(post_build_tpcnvdb_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_post_build_tpcnvdb) ] || \
	  [ ! -f $(cmt_final_setup_post_build_tpcnvdb) ] || \
	  $(not_post_build_tpcnvdb_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building post_build_tpcnvdb.make"; \
	  $(cmtexe) -tag=$(tags) $(post_build_tpcnvdb_extratags) build constituent_config -out=$(cmt_local_post_build_tpcnvdb_makefile) post_build_tpcnvdb; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_post_build_tpcnvdb_makefile) : $(post_build_tpcnvdb_dependencies) build_library_links
	$(echo) "(constituents.make) Building post_build_tpcnvdb.make"; \
	  $(cmtexe) -f=$(bin)post_build_tpcnvdb.in -tag=$(tags) $(post_build_tpcnvdb_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_post_build_tpcnvdb_makefile) post_build_tpcnvdb
else
$(cmt_local_post_build_tpcnvdb_makefile) : $(post_build_tpcnvdb_dependencies) $(cmt_build_library_linksstamp) $(bin)post_build_tpcnvdb.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_post_build_tpcnvdb) ] || \
	  [ ! -f $(cmt_final_setup_post_build_tpcnvdb) ] || \
	  $(not_post_build_tpcnvdb_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building post_build_tpcnvdb.make"; \
	  $(cmtexe) -f=$(bin)post_build_tpcnvdb.in -tag=$(tags) $(post_build_tpcnvdb_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_post_build_tpcnvdb_makefile) post_build_tpcnvdb; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(post_build_tpcnvdb_extratags) build constituent_makefile -out=$(cmt_local_post_build_tpcnvdb_makefile) post_build_tpcnvdb

post_build_tpcnvdb :: $(post_build_tpcnvdb_dependencies) $(cmt_local_post_build_tpcnvdb_makefile) dirs post_build_tpcnvdbdirs
	$(echo) "(constituents.make) Starting post_build_tpcnvdb"
	@if test -f $(cmt_local_post_build_tpcnvdb_makefile); then \
	  $(MAKE) -f $(cmt_local_post_build_tpcnvdb_makefile) post_build_tpcnvdb; \
	  fi
#	@$(MAKE) -f $(cmt_local_post_build_tpcnvdb_makefile) post_build_tpcnvdb
	$(echo) "(constituents.make) post_build_tpcnvdb done"

clean :: post_build_tpcnvdbclean ;

post_build_tpcnvdbclean :: $(post_build_tpcnvdbclean_dependencies) ##$(cmt_local_post_build_tpcnvdb_makefile)
	$(echo) "(constituents.make) Starting post_build_tpcnvdbclean"
	@-if test -f $(cmt_local_post_build_tpcnvdb_makefile); then \
	  $(MAKE) -f $(cmt_local_post_build_tpcnvdb_makefile) post_build_tpcnvdbclean; \
	fi
	$(echo) "(constituents.make) post_build_tpcnvdbclean done"
#	@-$(MAKE) -f $(cmt_local_post_build_tpcnvdb_makefile) post_build_tpcnvdbclean

##	  /bin/rm -f $(cmt_local_post_build_tpcnvdb_makefile) $(bin)post_build_tpcnvdb_dependencies.make

install :: post_build_tpcnvdbinstall ;

post_build_tpcnvdbinstall :: $(post_build_tpcnvdb_dependencies) $(cmt_local_post_build_tpcnvdb_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_post_build_tpcnvdb_makefile); then \
	  $(MAKE) -f $(cmt_local_post_build_tpcnvdb_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_post_build_tpcnvdb_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : post_build_tpcnvdbuninstall

$(foreach d,$(post_build_tpcnvdb_dependencies),$(eval $(d)uninstall_dependencies += post_build_tpcnvdbuninstall))

post_build_tpcnvdbuninstall : $(post_build_tpcnvdbuninstall_dependencies) ##$(cmt_local_post_build_tpcnvdb_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_post_build_tpcnvdb_makefile); then \
	  $(MAKE) -f $(cmt_local_post_build_tpcnvdb_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_post_build_tpcnvdb_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: post_build_tpcnvdbuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ post_build_tpcnvdb"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ post_build_tpcnvdb done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_all_post_constituents_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_all_post_constituents_has_target_tag

cmt_local_tagfile_all_post_constituents = $(bin)$(TriggerMenuXML_tag)_all_post_constituents.make
cmt_final_setup_all_post_constituents = $(bin)setup_all_post_constituents.make
cmt_local_all_post_constituents_makefile = $(bin)all_post_constituents.make

all_post_constituents_extratags = -tag_add=target_all_post_constituents

else

cmt_local_tagfile_all_post_constituents = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_all_post_constituents = $(bin)setup.make
cmt_local_all_post_constituents_makefile = $(bin)all_post_constituents.make

endif

not_all_post_constituents_dependencies = { n=0; for p in $?; do m=0; for d in $(all_post_constituents_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
all_post_constituentsdirs :
	@if test ! -d $(bin)all_post_constituents; then $(mkdir) -p $(bin)all_post_constituents; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)all_post_constituents
else
all_post_constituentsdirs : ;
endif

ifdef cmt_all_post_constituents_has_target_tag

ifndef QUICK
$(cmt_local_all_post_constituents_makefile) : $(all_post_constituents_dependencies) build_library_links
	$(echo) "(constituents.make) Building all_post_constituents.make"; \
	  $(cmtexe) -tag=$(tags) $(all_post_constituents_extratags) build constituent_config -out=$(cmt_local_all_post_constituents_makefile) all_post_constituents
else
$(cmt_local_all_post_constituents_makefile) : $(all_post_constituents_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_all_post_constituents) ] || \
	  [ ! -f $(cmt_final_setup_all_post_constituents) ] || \
	  $(not_all_post_constituents_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building all_post_constituents.make"; \
	  $(cmtexe) -tag=$(tags) $(all_post_constituents_extratags) build constituent_config -out=$(cmt_local_all_post_constituents_makefile) all_post_constituents; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_all_post_constituents_makefile) : $(all_post_constituents_dependencies) build_library_links
	$(echo) "(constituents.make) Building all_post_constituents.make"; \
	  $(cmtexe) -f=$(bin)all_post_constituents.in -tag=$(tags) $(all_post_constituents_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_all_post_constituents_makefile) all_post_constituents
else
$(cmt_local_all_post_constituents_makefile) : $(all_post_constituents_dependencies) $(cmt_build_library_linksstamp) $(bin)all_post_constituents.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_all_post_constituents) ] || \
	  [ ! -f $(cmt_final_setup_all_post_constituents) ] || \
	  $(not_all_post_constituents_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building all_post_constituents.make"; \
	  $(cmtexe) -f=$(bin)all_post_constituents.in -tag=$(tags) $(all_post_constituents_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_all_post_constituents_makefile) all_post_constituents; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(all_post_constituents_extratags) build constituent_makefile -out=$(cmt_local_all_post_constituents_makefile) all_post_constituents

all_post_constituents :: $(all_post_constituents_dependencies) $(cmt_local_all_post_constituents_makefile) dirs all_post_constituentsdirs
	$(echo) "(constituents.make) Starting all_post_constituents"
	@if test -f $(cmt_local_all_post_constituents_makefile); then \
	  $(MAKE) -f $(cmt_local_all_post_constituents_makefile) all_post_constituents; \
	  fi
#	@$(MAKE) -f $(cmt_local_all_post_constituents_makefile) all_post_constituents
	$(echo) "(constituents.make) all_post_constituents done"

clean :: all_post_constituentsclean ;

all_post_constituentsclean :: $(all_post_constituentsclean_dependencies) ##$(cmt_local_all_post_constituents_makefile)
	$(echo) "(constituents.make) Starting all_post_constituentsclean"
	@-if test -f $(cmt_local_all_post_constituents_makefile); then \
	  $(MAKE) -f $(cmt_local_all_post_constituents_makefile) all_post_constituentsclean; \
	fi
	$(echo) "(constituents.make) all_post_constituentsclean done"
#	@-$(MAKE) -f $(cmt_local_all_post_constituents_makefile) all_post_constituentsclean

##	  /bin/rm -f $(cmt_local_all_post_constituents_makefile) $(bin)all_post_constituents_dependencies.make

install :: all_post_constituentsinstall ;

all_post_constituentsinstall :: $(all_post_constituents_dependencies) $(cmt_local_all_post_constituents_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_all_post_constituents_makefile); then \
	  $(MAKE) -f $(cmt_local_all_post_constituents_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_all_post_constituents_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : all_post_constituentsuninstall

$(foreach d,$(all_post_constituents_dependencies),$(eval $(d)uninstall_dependencies += all_post_constituentsuninstall))

all_post_constituentsuninstall : $(all_post_constituentsuninstall_dependencies) ##$(cmt_local_all_post_constituents_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_all_post_constituents_makefile); then \
	  $(MAKE) -f $(cmt_local_all_post_constituents_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_all_post_constituents_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: all_post_constituentsuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ all_post_constituents"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ all_post_constituents done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_checkreq_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_checkreq_has_target_tag

cmt_local_tagfile_checkreq = $(bin)$(TriggerMenuXML_tag)_checkreq.make
cmt_final_setup_checkreq = $(bin)setup_checkreq.make
cmt_local_checkreq_makefile = $(bin)checkreq.make

checkreq_extratags = -tag_add=target_checkreq

else

cmt_local_tagfile_checkreq = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_checkreq = $(bin)setup.make
cmt_local_checkreq_makefile = $(bin)checkreq.make

endif

not_checkreq_dependencies = { n=0; for p in $?; do m=0; for d in $(checkreq_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
checkreqdirs :
	@if test ! -d $(bin)checkreq; then $(mkdir) -p $(bin)checkreq; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)checkreq
else
checkreqdirs : ;
endif

ifdef cmt_checkreq_has_target_tag

ifndef QUICK
$(cmt_local_checkreq_makefile) : $(checkreq_dependencies) build_library_links
	$(echo) "(constituents.make) Building checkreq.make"; \
	  $(cmtexe) -tag=$(tags) $(checkreq_extratags) build constituent_config -out=$(cmt_local_checkreq_makefile) checkreq
else
$(cmt_local_checkreq_makefile) : $(checkreq_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_checkreq) ] || \
	  [ ! -f $(cmt_final_setup_checkreq) ] || \
	  $(not_checkreq_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building checkreq.make"; \
	  $(cmtexe) -tag=$(tags) $(checkreq_extratags) build constituent_config -out=$(cmt_local_checkreq_makefile) checkreq; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_checkreq_makefile) : $(checkreq_dependencies) build_library_links
	$(echo) "(constituents.make) Building checkreq.make"; \
	  $(cmtexe) -f=$(bin)checkreq.in -tag=$(tags) $(checkreq_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_checkreq_makefile) checkreq
else
$(cmt_local_checkreq_makefile) : $(checkreq_dependencies) $(cmt_build_library_linksstamp) $(bin)checkreq.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_checkreq) ] || \
	  [ ! -f $(cmt_final_setup_checkreq) ] || \
	  $(not_checkreq_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building checkreq.make"; \
	  $(cmtexe) -f=$(bin)checkreq.in -tag=$(tags) $(checkreq_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_checkreq_makefile) checkreq; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(checkreq_extratags) build constituent_makefile -out=$(cmt_local_checkreq_makefile) checkreq

checkreq :: $(checkreq_dependencies) $(cmt_local_checkreq_makefile) dirs checkreqdirs
	$(echo) "(constituents.make) Starting checkreq"
	@if test -f $(cmt_local_checkreq_makefile); then \
	  $(MAKE) -f $(cmt_local_checkreq_makefile) checkreq; \
	  fi
#	@$(MAKE) -f $(cmt_local_checkreq_makefile) checkreq
	$(echo) "(constituents.make) checkreq done"

clean :: checkreqclean ;

checkreqclean :: $(checkreqclean_dependencies) ##$(cmt_local_checkreq_makefile)
	$(echo) "(constituents.make) Starting checkreqclean"
	@-if test -f $(cmt_local_checkreq_makefile); then \
	  $(MAKE) -f $(cmt_local_checkreq_makefile) checkreqclean; \
	fi
	$(echo) "(constituents.make) checkreqclean done"
#	@-$(MAKE) -f $(cmt_local_checkreq_makefile) checkreqclean

##	  /bin/rm -f $(cmt_local_checkreq_makefile) $(bin)checkreq_dependencies.make

install :: checkreqinstall ;

checkreqinstall :: $(checkreq_dependencies) $(cmt_local_checkreq_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_checkreq_makefile); then \
	  $(MAKE) -f $(cmt_local_checkreq_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_checkreq_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : checkrequninstall

$(foreach d,$(checkreq_dependencies),$(eval $(d)uninstall_dependencies += checkrequninstall))

checkrequninstall : $(checkrequninstall_dependencies) ##$(cmt_local_checkreq_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_checkreq_makefile); then \
	  $(MAKE) -f $(cmt_local_checkreq_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_checkreq_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: checkrequninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ checkreq"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ checkreq done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_build_menu_Physics_pp_v5_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_build_menu_Physics_pp_v5_has_target_tag

cmt_local_tagfile_build_menu_Physics_pp_v5 = $(bin)$(TriggerMenuXML_tag)_build_menu_Physics_pp_v5.make
cmt_final_setup_build_menu_Physics_pp_v5 = $(bin)setup_build_menu_Physics_pp_v5.make
cmt_local_build_menu_Physics_pp_v5_makefile = $(bin)build_menu_Physics_pp_v5.make

build_menu_Physics_pp_v5_extratags = -tag_add=target_build_menu_Physics_pp_v5

else

cmt_local_tagfile_build_menu_Physics_pp_v5 = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_build_menu_Physics_pp_v5 = $(bin)setup.make
cmt_local_build_menu_Physics_pp_v5_makefile = $(bin)build_menu_Physics_pp_v5.make

endif

not_build_menu_Physics_pp_v5_dependencies = { n=0; for p in $?; do m=0; for d in $(build_menu_Physics_pp_v5_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
build_menu_Physics_pp_v5dirs :
	@if test ! -d $(bin)build_menu_Physics_pp_v5; then $(mkdir) -p $(bin)build_menu_Physics_pp_v5; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)build_menu_Physics_pp_v5
else
build_menu_Physics_pp_v5dirs : ;
endif

ifdef cmt_build_menu_Physics_pp_v5_has_target_tag

ifndef QUICK
$(cmt_local_build_menu_Physics_pp_v5_makefile) : $(build_menu_Physics_pp_v5_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_Physics_pp_v5.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_Physics_pp_v5_extratags) build constituent_config -out=$(cmt_local_build_menu_Physics_pp_v5_makefile) build_menu_Physics_pp_v5
else
$(cmt_local_build_menu_Physics_pp_v5_makefile) : $(build_menu_Physics_pp_v5_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_Physics_pp_v5) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_Physics_pp_v5) ] || \
	  $(not_build_menu_Physics_pp_v5_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_Physics_pp_v5.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_Physics_pp_v5_extratags) build constituent_config -out=$(cmt_local_build_menu_Physics_pp_v5_makefile) build_menu_Physics_pp_v5; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_build_menu_Physics_pp_v5_makefile) : $(build_menu_Physics_pp_v5_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_Physics_pp_v5.make"; \
	  $(cmtexe) -f=$(bin)build_menu_Physics_pp_v5.in -tag=$(tags) $(build_menu_Physics_pp_v5_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_Physics_pp_v5_makefile) build_menu_Physics_pp_v5
else
$(cmt_local_build_menu_Physics_pp_v5_makefile) : $(build_menu_Physics_pp_v5_dependencies) $(cmt_build_library_linksstamp) $(bin)build_menu_Physics_pp_v5.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_Physics_pp_v5) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_Physics_pp_v5) ] || \
	  $(not_build_menu_Physics_pp_v5_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_Physics_pp_v5.make"; \
	  $(cmtexe) -f=$(bin)build_menu_Physics_pp_v5.in -tag=$(tags) $(build_menu_Physics_pp_v5_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_Physics_pp_v5_makefile) build_menu_Physics_pp_v5; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(build_menu_Physics_pp_v5_extratags) build constituent_makefile -out=$(cmt_local_build_menu_Physics_pp_v5_makefile) build_menu_Physics_pp_v5

build_menu_Physics_pp_v5 :: $(build_menu_Physics_pp_v5_dependencies) $(cmt_local_build_menu_Physics_pp_v5_makefile) dirs build_menu_Physics_pp_v5dirs
	$(echo) "(constituents.make) Starting build_menu_Physics_pp_v5"
	@if test -f $(cmt_local_build_menu_Physics_pp_v5_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_Physics_pp_v5_makefile) build_menu_Physics_pp_v5; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_Physics_pp_v5_makefile) build_menu_Physics_pp_v5
	$(echo) "(constituents.make) build_menu_Physics_pp_v5 done"

clean :: build_menu_Physics_pp_v5clean ;

build_menu_Physics_pp_v5clean :: $(build_menu_Physics_pp_v5clean_dependencies) ##$(cmt_local_build_menu_Physics_pp_v5_makefile)
	$(echo) "(constituents.make) Starting build_menu_Physics_pp_v5clean"
	@-if test -f $(cmt_local_build_menu_Physics_pp_v5_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_Physics_pp_v5_makefile) build_menu_Physics_pp_v5clean; \
	fi
	$(echo) "(constituents.make) build_menu_Physics_pp_v5clean done"
#	@-$(MAKE) -f $(cmt_local_build_menu_Physics_pp_v5_makefile) build_menu_Physics_pp_v5clean

##	  /bin/rm -f $(cmt_local_build_menu_Physics_pp_v5_makefile) $(bin)build_menu_Physics_pp_v5_dependencies.make

install :: build_menu_Physics_pp_v5install ;

build_menu_Physics_pp_v5install :: $(build_menu_Physics_pp_v5_dependencies) $(cmt_local_build_menu_Physics_pp_v5_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_build_menu_Physics_pp_v5_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_Physics_pp_v5_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_build_menu_Physics_pp_v5_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : build_menu_Physics_pp_v5uninstall

$(foreach d,$(build_menu_Physics_pp_v5_dependencies),$(eval $(d)uninstall_dependencies += build_menu_Physics_pp_v5uninstall))

build_menu_Physics_pp_v5uninstall : $(build_menu_Physics_pp_v5uninstall_dependencies) ##$(cmt_local_build_menu_Physics_pp_v5_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_build_menu_Physics_pp_v5_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_Physics_pp_v5_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_Physics_pp_v5_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: build_menu_Physics_pp_v5uninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ build_menu_Physics_pp_v5"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ build_menu_Physics_pp_v5 done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_build_menu_MC_pp_v5_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_build_menu_MC_pp_v5_has_target_tag

cmt_local_tagfile_build_menu_MC_pp_v5 = $(bin)$(TriggerMenuXML_tag)_build_menu_MC_pp_v5.make
cmt_final_setup_build_menu_MC_pp_v5 = $(bin)setup_build_menu_MC_pp_v5.make
cmt_local_build_menu_MC_pp_v5_makefile = $(bin)build_menu_MC_pp_v5.make

build_menu_MC_pp_v5_extratags = -tag_add=target_build_menu_MC_pp_v5

else

cmt_local_tagfile_build_menu_MC_pp_v5 = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_build_menu_MC_pp_v5 = $(bin)setup.make
cmt_local_build_menu_MC_pp_v5_makefile = $(bin)build_menu_MC_pp_v5.make

endif

not_build_menu_MC_pp_v5_dependencies = { n=0; for p in $?; do m=0; for d in $(build_menu_MC_pp_v5_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
build_menu_MC_pp_v5dirs :
	@if test ! -d $(bin)build_menu_MC_pp_v5; then $(mkdir) -p $(bin)build_menu_MC_pp_v5; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)build_menu_MC_pp_v5
else
build_menu_MC_pp_v5dirs : ;
endif

ifdef cmt_build_menu_MC_pp_v5_has_target_tag

ifndef QUICK
$(cmt_local_build_menu_MC_pp_v5_makefile) : $(build_menu_MC_pp_v5_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_MC_pp_v5.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_MC_pp_v5_extratags) build constituent_config -out=$(cmt_local_build_menu_MC_pp_v5_makefile) build_menu_MC_pp_v5
else
$(cmt_local_build_menu_MC_pp_v5_makefile) : $(build_menu_MC_pp_v5_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_MC_pp_v5) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_MC_pp_v5) ] || \
	  $(not_build_menu_MC_pp_v5_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_MC_pp_v5.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_MC_pp_v5_extratags) build constituent_config -out=$(cmt_local_build_menu_MC_pp_v5_makefile) build_menu_MC_pp_v5; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_build_menu_MC_pp_v5_makefile) : $(build_menu_MC_pp_v5_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_MC_pp_v5.make"; \
	  $(cmtexe) -f=$(bin)build_menu_MC_pp_v5.in -tag=$(tags) $(build_menu_MC_pp_v5_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_MC_pp_v5_makefile) build_menu_MC_pp_v5
else
$(cmt_local_build_menu_MC_pp_v5_makefile) : $(build_menu_MC_pp_v5_dependencies) $(cmt_build_library_linksstamp) $(bin)build_menu_MC_pp_v5.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_MC_pp_v5) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_MC_pp_v5) ] || \
	  $(not_build_menu_MC_pp_v5_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_MC_pp_v5.make"; \
	  $(cmtexe) -f=$(bin)build_menu_MC_pp_v5.in -tag=$(tags) $(build_menu_MC_pp_v5_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_MC_pp_v5_makefile) build_menu_MC_pp_v5; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(build_menu_MC_pp_v5_extratags) build constituent_makefile -out=$(cmt_local_build_menu_MC_pp_v5_makefile) build_menu_MC_pp_v5

build_menu_MC_pp_v5 :: $(build_menu_MC_pp_v5_dependencies) $(cmt_local_build_menu_MC_pp_v5_makefile) dirs build_menu_MC_pp_v5dirs
	$(echo) "(constituents.make) Starting build_menu_MC_pp_v5"
	@if test -f $(cmt_local_build_menu_MC_pp_v5_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_MC_pp_v5_makefile) build_menu_MC_pp_v5; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_MC_pp_v5_makefile) build_menu_MC_pp_v5
	$(echo) "(constituents.make) build_menu_MC_pp_v5 done"

clean :: build_menu_MC_pp_v5clean ;

build_menu_MC_pp_v5clean :: $(build_menu_MC_pp_v5clean_dependencies) ##$(cmt_local_build_menu_MC_pp_v5_makefile)
	$(echo) "(constituents.make) Starting build_menu_MC_pp_v5clean"
	@-if test -f $(cmt_local_build_menu_MC_pp_v5_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_MC_pp_v5_makefile) build_menu_MC_pp_v5clean; \
	fi
	$(echo) "(constituents.make) build_menu_MC_pp_v5clean done"
#	@-$(MAKE) -f $(cmt_local_build_menu_MC_pp_v5_makefile) build_menu_MC_pp_v5clean

##	  /bin/rm -f $(cmt_local_build_menu_MC_pp_v5_makefile) $(bin)build_menu_MC_pp_v5_dependencies.make

install :: build_menu_MC_pp_v5install ;

build_menu_MC_pp_v5install :: $(build_menu_MC_pp_v5_dependencies) $(cmt_local_build_menu_MC_pp_v5_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_build_menu_MC_pp_v5_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_MC_pp_v5_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_build_menu_MC_pp_v5_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : build_menu_MC_pp_v5uninstall

$(foreach d,$(build_menu_MC_pp_v5_dependencies),$(eval $(d)uninstall_dependencies += build_menu_MC_pp_v5uninstall))

build_menu_MC_pp_v5uninstall : $(build_menu_MC_pp_v5uninstall_dependencies) ##$(cmt_local_build_menu_MC_pp_v5_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_build_menu_MC_pp_v5_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_MC_pp_v5_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_MC_pp_v5_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: build_menu_MC_pp_v5uninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ build_menu_MC_pp_v5"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ build_menu_MC_pp_v5 done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_build_menu_LS1_v1_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_build_menu_LS1_v1_has_target_tag

cmt_local_tagfile_build_menu_LS1_v1 = $(bin)$(TriggerMenuXML_tag)_build_menu_LS1_v1.make
cmt_final_setup_build_menu_LS1_v1 = $(bin)setup_build_menu_LS1_v1.make
cmt_local_build_menu_LS1_v1_makefile = $(bin)build_menu_LS1_v1.make

build_menu_LS1_v1_extratags = -tag_add=target_build_menu_LS1_v1

else

cmt_local_tagfile_build_menu_LS1_v1 = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_build_menu_LS1_v1 = $(bin)setup.make
cmt_local_build_menu_LS1_v1_makefile = $(bin)build_menu_LS1_v1.make

endif

not_build_menu_LS1_v1_dependencies = { n=0; for p in $?; do m=0; for d in $(build_menu_LS1_v1_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
build_menu_LS1_v1dirs :
	@if test ! -d $(bin)build_menu_LS1_v1; then $(mkdir) -p $(bin)build_menu_LS1_v1; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)build_menu_LS1_v1
else
build_menu_LS1_v1dirs : ;
endif

ifdef cmt_build_menu_LS1_v1_has_target_tag

ifndef QUICK
$(cmt_local_build_menu_LS1_v1_makefile) : $(build_menu_LS1_v1_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_LS1_v1.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_LS1_v1_extratags) build constituent_config -out=$(cmt_local_build_menu_LS1_v1_makefile) build_menu_LS1_v1
else
$(cmt_local_build_menu_LS1_v1_makefile) : $(build_menu_LS1_v1_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_LS1_v1) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_LS1_v1) ] || \
	  $(not_build_menu_LS1_v1_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_LS1_v1.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_LS1_v1_extratags) build constituent_config -out=$(cmt_local_build_menu_LS1_v1_makefile) build_menu_LS1_v1; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_build_menu_LS1_v1_makefile) : $(build_menu_LS1_v1_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_LS1_v1.make"; \
	  $(cmtexe) -f=$(bin)build_menu_LS1_v1.in -tag=$(tags) $(build_menu_LS1_v1_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_LS1_v1_makefile) build_menu_LS1_v1
else
$(cmt_local_build_menu_LS1_v1_makefile) : $(build_menu_LS1_v1_dependencies) $(cmt_build_library_linksstamp) $(bin)build_menu_LS1_v1.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_LS1_v1) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_LS1_v1) ] || \
	  $(not_build_menu_LS1_v1_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_LS1_v1.make"; \
	  $(cmtexe) -f=$(bin)build_menu_LS1_v1.in -tag=$(tags) $(build_menu_LS1_v1_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_LS1_v1_makefile) build_menu_LS1_v1; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(build_menu_LS1_v1_extratags) build constituent_makefile -out=$(cmt_local_build_menu_LS1_v1_makefile) build_menu_LS1_v1

build_menu_LS1_v1 :: $(build_menu_LS1_v1_dependencies) $(cmt_local_build_menu_LS1_v1_makefile) dirs build_menu_LS1_v1dirs
	$(echo) "(constituents.make) Starting build_menu_LS1_v1"
	@if test -f $(cmt_local_build_menu_LS1_v1_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_LS1_v1_makefile) build_menu_LS1_v1; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_LS1_v1_makefile) build_menu_LS1_v1
	$(echo) "(constituents.make) build_menu_LS1_v1 done"

clean :: build_menu_LS1_v1clean ;

build_menu_LS1_v1clean :: $(build_menu_LS1_v1clean_dependencies) ##$(cmt_local_build_menu_LS1_v1_makefile)
	$(echo) "(constituents.make) Starting build_menu_LS1_v1clean"
	@-if test -f $(cmt_local_build_menu_LS1_v1_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_LS1_v1_makefile) build_menu_LS1_v1clean; \
	fi
	$(echo) "(constituents.make) build_menu_LS1_v1clean done"
#	@-$(MAKE) -f $(cmt_local_build_menu_LS1_v1_makefile) build_menu_LS1_v1clean

##	  /bin/rm -f $(cmt_local_build_menu_LS1_v1_makefile) $(bin)build_menu_LS1_v1_dependencies.make

install :: build_menu_LS1_v1install ;

build_menu_LS1_v1install :: $(build_menu_LS1_v1_dependencies) $(cmt_local_build_menu_LS1_v1_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_build_menu_LS1_v1_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_LS1_v1_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_build_menu_LS1_v1_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : build_menu_LS1_v1uninstall

$(foreach d,$(build_menu_LS1_v1_dependencies),$(eval $(d)uninstall_dependencies += build_menu_LS1_v1uninstall))

build_menu_LS1_v1uninstall : $(build_menu_LS1_v1uninstall_dependencies) ##$(cmt_local_build_menu_LS1_v1_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_build_menu_LS1_v1_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_LS1_v1_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_LS1_v1_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: build_menu_LS1_v1uninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ build_menu_LS1_v1"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ build_menu_LS1_v1 done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_build_menu_DC14_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_build_menu_DC14_has_target_tag

cmt_local_tagfile_build_menu_DC14 = $(bin)$(TriggerMenuXML_tag)_build_menu_DC14.make
cmt_final_setup_build_menu_DC14 = $(bin)setup_build_menu_DC14.make
cmt_local_build_menu_DC14_makefile = $(bin)build_menu_DC14.make

build_menu_DC14_extratags = -tag_add=target_build_menu_DC14

else

cmt_local_tagfile_build_menu_DC14 = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_build_menu_DC14 = $(bin)setup.make
cmt_local_build_menu_DC14_makefile = $(bin)build_menu_DC14.make

endif

not_build_menu_DC14_dependencies = { n=0; for p in $?; do m=0; for d in $(build_menu_DC14_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
build_menu_DC14dirs :
	@if test ! -d $(bin)build_menu_DC14; then $(mkdir) -p $(bin)build_menu_DC14; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)build_menu_DC14
else
build_menu_DC14dirs : ;
endif

ifdef cmt_build_menu_DC14_has_target_tag

ifndef QUICK
$(cmt_local_build_menu_DC14_makefile) : $(build_menu_DC14_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_DC14.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_DC14_extratags) build constituent_config -out=$(cmt_local_build_menu_DC14_makefile) build_menu_DC14
else
$(cmt_local_build_menu_DC14_makefile) : $(build_menu_DC14_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_DC14) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_DC14) ] || \
	  $(not_build_menu_DC14_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_DC14.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_DC14_extratags) build constituent_config -out=$(cmt_local_build_menu_DC14_makefile) build_menu_DC14; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_build_menu_DC14_makefile) : $(build_menu_DC14_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_DC14.make"; \
	  $(cmtexe) -f=$(bin)build_menu_DC14.in -tag=$(tags) $(build_menu_DC14_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_DC14_makefile) build_menu_DC14
else
$(cmt_local_build_menu_DC14_makefile) : $(build_menu_DC14_dependencies) $(cmt_build_library_linksstamp) $(bin)build_menu_DC14.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_DC14) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_DC14) ] || \
	  $(not_build_menu_DC14_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_DC14.make"; \
	  $(cmtexe) -f=$(bin)build_menu_DC14.in -tag=$(tags) $(build_menu_DC14_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_DC14_makefile) build_menu_DC14; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(build_menu_DC14_extratags) build constituent_makefile -out=$(cmt_local_build_menu_DC14_makefile) build_menu_DC14

build_menu_DC14 :: $(build_menu_DC14_dependencies) $(cmt_local_build_menu_DC14_makefile) dirs build_menu_DC14dirs
	$(echo) "(constituents.make) Starting build_menu_DC14"
	@if test -f $(cmt_local_build_menu_DC14_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_makefile) build_menu_DC14; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_DC14_makefile) build_menu_DC14
	$(echo) "(constituents.make) build_menu_DC14 done"

clean :: build_menu_DC14clean ;

build_menu_DC14clean :: $(build_menu_DC14clean_dependencies) ##$(cmt_local_build_menu_DC14_makefile)
	$(echo) "(constituents.make) Starting build_menu_DC14clean"
	@-if test -f $(cmt_local_build_menu_DC14_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_makefile) build_menu_DC14clean; \
	fi
	$(echo) "(constituents.make) build_menu_DC14clean done"
#	@-$(MAKE) -f $(cmt_local_build_menu_DC14_makefile) build_menu_DC14clean

##	  /bin/rm -f $(cmt_local_build_menu_DC14_makefile) $(bin)build_menu_DC14_dependencies.make

install :: build_menu_DC14install ;

build_menu_DC14install :: $(build_menu_DC14_dependencies) $(cmt_local_build_menu_DC14_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_build_menu_DC14_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_build_menu_DC14_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : build_menu_DC14uninstall

$(foreach d,$(build_menu_DC14_dependencies),$(eval $(d)uninstall_dependencies += build_menu_DC14uninstall))

build_menu_DC14uninstall : $(build_menu_DC14uninstall_dependencies) ##$(cmt_local_build_menu_DC14_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_build_menu_DC14_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_DC14_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: build_menu_DC14uninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ build_menu_DC14"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ build_menu_DC14 done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_build_menu_Physics_HI_v3_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_build_menu_Physics_HI_v3_has_target_tag

cmt_local_tagfile_build_menu_Physics_HI_v3 = $(bin)$(TriggerMenuXML_tag)_build_menu_Physics_HI_v3.make
cmt_final_setup_build_menu_Physics_HI_v3 = $(bin)setup_build_menu_Physics_HI_v3.make
cmt_local_build_menu_Physics_HI_v3_makefile = $(bin)build_menu_Physics_HI_v3.make

build_menu_Physics_HI_v3_extratags = -tag_add=target_build_menu_Physics_HI_v3

else

cmt_local_tagfile_build_menu_Physics_HI_v3 = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_build_menu_Physics_HI_v3 = $(bin)setup.make
cmt_local_build_menu_Physics_HI_v3_makefile = $(bin)build_menu_Physics_HI_v3.make

endif

not_build_menu_Physics_HI_v3_dependencies = { n=0; for p in $?; do m=0; for d in $(build_menu_Physics_HI_v3_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
build_menu_Physics_HI_v3dirs :
	@if test ! -d $(bin)build_menu_Physics_HI_v3; then $(mkdir) -p $(bin)build_menu_Physics_HI_v3; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)build_menu_Physics_HI_v3
else
build_menu_Physics_HI_v3dirs : ;
endif

ifdef cmt_build_menu_Physics_HI_v3_has_target_tag

ifndef QUICK
$(cmt_local_build_menu_Physics_HI_v3_makefile) : $(build_menu_Physics_HI_v3_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_Physics_HI_v3.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_Physics_HI_v3_extratags) build constituent_config -out=$(cmt_local_build_menu_Physics_HI_v3_makefile) build_menu_Physics_HI_v3
else
$(cmt_local_build_menu_Physics_HI_v3_makefile) : $(build_menu_Physics_HI_v3_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_Physics_HI_v3) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_Physics_HI_v3) ] || \
	  $(not_build_menu_Physics_HI_v3_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_Physics_HI_v3.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_Physics_HI_v3_extratags) build constituent_config -out=$(cmt_local_build_menu_Physics_HI_v3_makefile) build_menu_Physics_HI_v3; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_build_menu_Physics_HI_v3_makefile) : $(build_menu_Physics_HI_v3_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_Physics_HI_v3.make"; \
	  $(cmtexe) -f=$(bin)build_menu_Physics_HI_v3.in -tag=$(tags) $(build_menu_Physics_HI_v3_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_Physics_HI_v3_makefile) build_menu_Physics_HI_v3
else
$(cmt_local_build_menu_Physics_HI_v3_makefile) : $(build_menu_Physics_HI_v3_dependencies) $(cmt_build_library_linksstamp) $(bin)build_menu_Physics_HI_v3.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_Physics_HI_v3) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_Physics_HI_v3) ] || \
	  $(not_build_menu_Physics_HI_v3_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_Physics_HI_v3.make"; \
	  $(cmtexe) -f=$(bin)build_menu_Physics_HI_v3.in -tag=$(tags) $(build_menu_Physics_HI_v3_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_Physics_HI_v3_makefile) build_menu_Physics_HI_v3; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(build_menu_Physics_HI_v3_extratags) build constituent_makefile -out=$(cmt_local_build_menu_Physics_HI_v3_makefile) build_menu_Physics_HI_v3

build_menu_Physics_HI_v3 :: $(build_menu_Physics_HI_v3_dependencies) $(cmt_local_build_menu_Physics_HI_v3_makefile) dirs build_menu_Physics_HI_v3dirs
	$(echo) "(constituents.make) Starting build_menu_Physics_HI_v3"
	@if test -f $(cmt_local_build_menu_Physics_HI_v3_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_Physics_HI_v3_makefile) build_menu_Physics_HI_v3; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_Physics_HI_v3_makefile) build_menu_Physics_HI_v3
	$(echo) "(constituents.make) build_menu_Physics_HI_v3 done"

clean :: build_menu_Physics_HI_v3clean ;

build_menu_Physics_HI_v3clean :: $(build_menu_Physics_HI_v3clean_dependencies) ##$(cmt_local_build_menu_Physics_HI_v3_makefile)
	$(echo) "(constituents.make) Starting build_menu_Physics_HI_v3clean"
	@-if test -f $(cmt_local_build_menu_Physics_HI_v3_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_Physics_HI_v3_makefile) build_menu_Physics_HI_v3clean; \
	fi
	$(echo) "(constituents.make) build_menu_Physics_HI_v3clean done"
#	@-$(MAKE) -f $(cmt_local_build_menu_Physics_HI_v3_makefile) build_menu_Physics_HI_v3clean

##	  /bin/rm -f $(cmt_local_build_menu_Physics_HI_v3_makefile) $(bin)build_menu_Physics_HI_v3_dependencies.make

install :: build_menu_Physics_HI_v3install ;

build_menu_Physics_HI_v3install :: $(build_menu_Physics_HI_v3_dependencies) $(cmt_local_build_menu_Physics_HI_v3_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_build_menu_Physics_HI_v3_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_Physics_HI_v3_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_build_menu_Physics_HI_v3_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : build_menu_Physics_HI_v3uninstall

$(foreach d,$(build_menu_Physics_HI_v3_dependencies),$(eval $(d)uninstall_dependencies += build_menu_Physics_HI_v3uninstall))

build_menu_Physics_HI_v3uninstall : $(build_menu_Physics_HI_v3uninstall_dependencies) ##$(cmt_local_build_menu_Physics_HI_v3_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_build_menu_Physics_HI_v3_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_Physics_HI_v3_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_Physics_HI_v3_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: build_menu_Physics_HI_v3uninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ build_menu_Physics_HI_v3"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ build_menu_Physics_HI_v3 done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_build_menu_DC14_tight_mc_prescale_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_build_menu_DC14_tight_mc_prescale_has_target_tag

cmt_local_tagfile_build_menu_DC14_tight_mc_prescale = $(bin)$(TriggerMenuXML_tag)_build_menu_DC14_tight_mc_prescale.make
cmt_final_setup_build_menu_DC14_tight_mc_prescale = $(bin)setup_build_menu_DC14_tight_mc_prescale.make
cmt_local_build_menu_DC14_tight_mc_prescale_makefile = $(bin)build_menu_DC14_tight_mc_prescale.make

build_menu_DC14_tight_mc_prescale_extratags = -tag_add=target_build_menu_DC14_tight_mc_prescale

else

cmt_local_tagfile_build_menu_DC14_tight_mc_prescale = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_build_menu_DC14_tight_mc_prescale = $(bin)setup.make
cmt_local_build_menu_DC14_tight_mc_prescale_makefile = $(bin)build_menu_DC14_tight_mc_prescale.make

endif

not_build_menu_DC14_tight_mc_prescale_dependencies = { n=0; for p in $?; do m=0; for d in $(build_menu_DC14_tight_mc_prescale_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
build_menu_DC14_tight_mc_prescaledirs :
	@if test ! -d $(bin)build_menu_DC14_tight_mc_prescale; then $(mkdir) -p $(bin)build_menu_DC14_tight_mc_prescale; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)build_menu_DC14_tight_mc_prescale
else
build_menu_DC14_tight_mc_prescaledirs : ;
endif

ifdef cmt_build_menu_DC14_tight_mc_prescale_has_target_tag

ifndef QUICK
$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) : $(build_menu_DC14_tight_mc_prescale_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_DC14_tight_mc_prescale.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_DC14_tight_mc_prescale_extratags) build constituent_config -out=$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) build_menu_DC14_tight_mc_prescale
else
$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) : $(build_menu_DC14_tight_mc_prescale_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_DC14_tight_mc_prescale) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_DC14_tight_mc_prescale) ] || \
	  $(not_build_menu_DC14_tight_mc_prescale_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_DC14_tight_mc_prescale.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_DC14_tight_mc_prescale_extratags) build constituent_config -out=$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) build_menu_DC14_tight_mc_prescale; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) : $(build_menu_DC14_tight_mc_prescale_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_DC14_tight_mc_prescale.make"; \
	  $(cmtexe) -f=$(bin)build_menu_DC14_tight_mc_prescale.in -tag=$(tags) $(build_menu_DC14_tight_mc_prescale_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) build_menu_DC14_tight_mc_prescale
else
$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) : $(build_menu_DC14_tight_mc_prescale_dependencies) $(cmt_build_library_linksstamp) $(bin)build_menu_DC14_tight_mc_prescale.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_DC14_tight_mc_prescale) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_DC14_tight_mc_prescale) ] || \
	  $(not_build_menu_DC14_tight_mc_prescale_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_DC14_tight_mc_prescale.make"; \
	  $(cmtexe) -f=$(bin)build_menu_DC14_tight_mc_prescale.in -tag=$(tags) $(build_menu_DC14_tight_mc_prescale_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) build_menu_DC14_tight_mc_prescale; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(build_menu_DC14_tight_mc_prescale_extratags) build constituent_makefile -out=$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) build_menu_DC14_tight_mc_prescale

build_menu_DC14_tight_mc_prescale :: $(build_menu_DC14_tight_mc_prescale_dependencies) $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) dirs build_menu_DC14_tight_mc_prescaledirs
	$(echo) "(constituents.make) Starting build_menu_DC14_tight_mc_prescale"
	@if test -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) build_menu_DC14_tight_mc_prescale; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) build_menu_DC14_tight_mc_prescale
	$(echo) "(constituents.make) build_menu_DC14_tight_mc_prescale done"

clean :: build_menu_DC14_tight_mc_prescaleclean ;

build_menu_DC14_tight_mc_prescaleclean :: $(build_menu_DC14_tight_mc_prescaleclean_dependencies) ##$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile)
	$(echo) "(constituents.make) Starting build_menu_DC14_tight_mc_prescaleclean"
	@-if test -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) build_menu_DC14_tight_mc_prescaleclean; \
	fi
	$(echo) "(constituents.make) build_menu_DC14_tight_mc_prescaleclean done"
#	@-$(MAKE) -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) build_menu_DC14_tight_mc_prescaleclean

##	  /bin/rm -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) $(bin)build_menu_DC14_tight_mc_prescale_dependencies.make

install :: build_menu_DC14_tight_mc_prescaleinstall ;

build_menu_DC14_tight_mc_prescaleinstall :: $(build_menu_DC14_tight_mc_prescale_dependencies) $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : build_menu_DC14_tight_mc_prescaleuninstall

$(foreach d,$(build_menu_DC14_tight_mc_prescale_dependencies),$(eval $(d)uninstall_dependencies += build_menu_DC14_tight_mc_prescaleuninstall))

build_menu_DC14_tight_mc_prescaleuninstall : $(build_menu_DC14_tight_mc_prescaleuninstall_dependencies) ##$(cmt_local_build_menu_DC14_tight_mc_prescale_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_DC14_tight_mc_prescale_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: build_menu_DC14_tight_mc_prescaleuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ build_menu_DC14_tight_mc_prescale"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ build_menu_DC14_tight_mc_prescale done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_build_menu_DC14_loose_mc_prescale_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_build_menu_DC14_loose_mc_prescale_has_target_tag

cmt_local_tagfile_build_menu_DC14_loose_mc_prescale = $(bin)$(TriggerMenuXML_tag)_build_menu_DC14_loose_mc_prescale.make
cmt_final_setup_build_menu_DC14_loose_mc_prescale = $(bin)setup_build_menu_DC14_loose_mc_prescale.make
cmt_local_build_menu_DC14_loose_mc_prescale_makefile = $(bin)build_menu_DC14_loose_mc_prescale.make

build_menu_DC14_loose_mc_prescale_extratags = -tag_add=target_build_menu_DC14_loose_mc_prescale

else

cmt_local_tagfile_build_menu_DC14_loose_mc_prescale = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_build_menu_DC14_loose_mc_prescale = $(bin)setup.make
cmt_local_build_menu_DC14_loose_mc_prescale_makefile = $(bin)build_menu_DC14_loose_mc_prescale.make

endif

not_build_menu_DC14_loose_mc_prescale_dependencies = { n=0; for p in $?; do m=0; for d in $(build_menu_DC14_loose_mc_prescale_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
build_menu_DC14_loose_mc_prescaledirs :
	@if test ! -d $(bin)build_menu_DC14_loose_mc_prescale; then $(mkdir) -p $(bin)build_menu_DC14_loose_mc_prescale; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)build_menu_DC14_loose_mc_prescale
else
build_menu_DC14_loose_mc_prescaledirs : ;
endif

ifdef cmt_build_menu_DC14_loose_mc_prescale_has_target_tag

ifndef QUICK
$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) : $(build_menu_DC14_loose_mc_prescale_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_DC14_loose_mc_prescale.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_DC14_loose_mc_prescale_extratags) build constituent_config -out=$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) build_menu_DC14_loose_mc_prescale
else
$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) : $(build_menu_DC14_loose_mc_prescale_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_DC14_loose_mc_prescale) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_DC14_loose_mc_prescale) ] || \
	  $(not_build_menu_DC14_loose_mc_prescale_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_DC14_loose_mc_prescale.make"; \
	  $(cmtexe) -tag=$(tags) $(build_menu_DC14_loose_mc_prescale_extratags) build constituent_config -out=$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) build_menu_DC14_loose_mc_prescale; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) : $(build_menu_DC14_loose_mc_prescale_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_menu_DC14_loose_mc_prescale.make"; \
	  $(cmtexe) -f=$(bin)build_menu_DC14_loose_mc_prescale.in -tag=$(tags) $(build_menu_DC14_loose_mc_prescale_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) build_menu_DC14_loose_mc_prescale
else
$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) : $(build_menu_DC14_loose_mc_prescale_dependencies) $(cmt_build_library_linksstamp) $(bin)build_menu_DC14_loose_mc_prescale.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_menu_DC14_loose_mc_prescale) ] || \
	  [ ! -f $(cmt_final_setup_build_menu_DC14_loose_mc_prescale) ] || \
	  $(not_build_menu_DC14_loose_mc_prescale_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_menu_DC14_loose_mc_prescale.make"; \
	  $(cmtexe) -f=$(bin)build_menu_DC14_loose_mc_prescale.in -tag=$(tags) $(build_menu_DC14_loose_mc_prescale_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) build_menu_DC14_loose_mc_prescale; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(build_menu_DC14_loose_mc_prescale_extratags) build constituent_makefile -out=$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) build_menu_DC14_loose_mc_prescale

build_menu_DC14_loose_mc_prescale :: $(build_menu_DC14_loose_mc_prescale_dependencies) $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) dirs build_menu_DC14_loose_mc_prescaledirs
	$(echo) "(constituents.make) Starting build_menu_DC14_loose_mc_prescale"
	@if test -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) build_menu_DC14_loose_mc_prescale; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) build_menu_DC14_loose_mc_prescale
	$(echo) "(constituents.make) build_menu_DC14_loose_mc_prescale done"

clean :: build_menu_DC14_loose_mc_prescaleclean ;

build_menu_DC14_loose_mc_prescaleclean :: $(build_menu_DC14_loose_mc_prescaleclean_dependencies) ##$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile)
	$(echo) "(constituents.make) Starting build_menu_DC14_loose_mc_prescaleclean"
	@-if test -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) build_menu_DC14_loose_mc_prescaleclean; \
	fi
	$(echo) "(constituents.make) build_menu_DC14_loose_mc_prescaleclean done"
#	@-$(MAKE) -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) build_menu_DC14_loose_mc_prescaleclean

##	  /bin/rm -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) $(bin)build_menu_DC14_loose_mc_prescale_dependencies.make

install :: build_menu_DC14_loose_mc_prescaleinstall ;

build_menu_DC14_loose_mc_prescaleinstall :: $(build_menu_DC14_loose_mc_prescale_dependencies) $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : build_menu_DC14_loose_mc_prescaleuninstall

$(foreach d,$(build_menu_DC14_loose_mc_prescale_dependencies),$(eval $(d)uninstall_dependencies += build_menu_DC14_loose_mc_prescaleuninstall))

build_menu_DC14_loose_mc_prescaleuninstall : $(build_menu_DC14_loose_mc_prescaleuninstall_dependencies) ##$(cmt_local_build_menu_DC14_loose_mc_prescale_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile); then \
	  $(MAKE) -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_menu_DC14_loose_mc_prescale_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: build_menu_DC14_loose_mc_prescaleuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ build_menu_DC14_loose_mc_prescale"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ build_menu_DC14_loose_mc_prescale done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_check_install_joboptions_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_check_install_joboptions_has_target_tag

cmt_local_tagfile_check_install_joboptions = $(bin)$(TriggerMenuXML_tag)_check_install_joboptions.make
cmt_final_setup_check_install_joboptions = $(bin)setup_check_install_joboptions.make
cmt_local_check_install_joboptions_makefile = $(bin)check_install_joboptions.make

check_install_joboptions_extratags = -tag_add=target_check_install_joboptions

else

cmt_local_tagfile_check_install_joboptions = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_check_install_joboptions = $(bin)setup.make
cmt_local_check_install_joboptions_makefile = $(bin)check_install_joboptions.make

endif

not_check_install_joboptions_dependencies = { n=0; for p in $?; do m=0; for d in $(check_install_joboptions_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
check_install_joboptionsdirs :
	@if test ! -d $(bin)check_install_joboptions; then $(mkdir) -p $(bin)check_install_joboptions; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)check_install_joboptions
else
check_install_joboptionsdirs : ;
endif

ifdef cmt_check_install_joboptions_has_target_tag

ifndef QUICK
$(cmt_local_check_install_joboptions_makefile) : $(check_install_joboptions_dependencies) build_library_links
	$(echo) "(constituents.make) Building check_install_joboptions.make"; \
	  $(cmtexe) -tag=$(tags) $(check_install_joboptions_extratags) build constituent_config -out=$(cmt_local_check_install_joboptions_makefile) check_install_joboptions
else
$(cmt_local_check_install_joboptions_makefile) : $(check_install_joboptions_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_check_install_joboptions) ] || \
	  [ ! -f $(cmt_final_setup_check_install_joboptions) ] || \
	  $(not_check_install_joboptions_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building check_install_joboptions.make"; \
	  $(cmtexe) -tag=$(tags) $(check_install_joboptions_extratags) build constituent_config -out=$(cmt_local_check_install_joboptions_makefile) check_install_joboptions; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_check_install_joboptions_makefile) : $(check_install_joboptions_dependencies) build_library_links
	$(echo) "(constituents.make) Building check_install_joboptions.make"; \
	  $(cmtexe) -f=$(bin)check_install_joboptions.in -tag=$(tags) $(check_install_joboptions_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_check_install_joboptions_makefile) check_install_joboptions
else
$(cmt_local_check_install_joboptions_makefile) : $(check_install_joboptions_dependencies) $(cmt_build_library_linksstamp) $(bin)check_install_joboptions.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_check_install_joboptions) ] || \
	  [ ! -f $(cmt_final_setup_check_install_joboptions) ] || \
	  $(not_check_install_joboptions_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building check_install_joboptions.make"; \
	  $(cmtexe) -f=$(bin)check_install_joboptions.in -tag=$(tags) $(check_install_joboptions_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_check_install_joboptions_makefile) check_install_joboptions; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(check_install_joboptions_extratags) build constituent_makefile -out=$(cmt_local_check_install_joboptions_makefile) check_install_joboptions

check_install_joboptions :: $(check_install_joboptions_dependencies) $(cmt_local_check_install_joboptions_makefile) dirs check_install_joboptionsdirs
	$(echo) "(constituents.make) Starting check_install_joboptions"
	@if test -f $(cmt_local_check_install_joboptions_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_joboptions_makefile) check_install_joboptions; \
	  fi
#	@$(MAKE) -f $(cmt_local_check_install_joboptions_makefile) check_install_joboptions
	$(echo) "(constituents.make) check_install_joboptions done"

clean :: check_install_joboptionsclean ;

check_install_joboptionsclean :: $(check_install_joboptionsclean_dependencies) ##$(cmt_local_check_install_joboptions_makefile)
	$(echo) "(constituents.make) Starting check_install_joboptionsclean"
	@-if test -f $(cmt_local_check_install_joboptions_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_joboptions_makefile) check_install_joboptionsclean; \
	fi
	$(echo) "(constituents.make) check_install_joboptionsclean done"
#	@-$(MAKE) -f $(cmt_local_check_install_joboptions_makefile) check_install_joboptionsclean

##	  /bin/rm -f $(cmt_local_check_install_joboptions_makefile) $(bin)check_install_joboptions_dependencies.make

install :: check_install_joboptionsinstall ;

check_install_joboptionsinstall :: $(check_install_joboptions_dependencies) $(cmt_local_check_install_joboptions_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_check_install_joboptions_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_joboptions_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_check_install_joboptions_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : check_install_joboptionsuninstall

$(foreach d,$(check_install_joboptions_dependencies),$(eval $(d)uninstall_dependencies += check_install_joboptionsuninstall))

check_install_joboptionsuninstall : $(check_install_joboptionsuninstall_dependencies) ##$(cmt_local_check_install_joboptions_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_check_install_joboptions_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_joboptions_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_check_install_joboptions_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: check_install_joboptionsuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ check_install_joboptions"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ check_install_joboptions done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_check_install_xmls_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_check_install_xmls_has_target_tag

cmt_local_tagfile_check_install_xmls = $(bin)$(TriggerMenuXML_tag)_check_install_xmls.make
cmt_final_setup_check_install_xmls = $(bin)setup_check_install_xmls.make
cmt_local_check_install_xmls_makefile = $(bin)check_install_xmls.make

check_install_xmls_extratags = -tag_add=target_check_install_xmls

else

cmt_local_tagfile_check_install_xmls = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_check_install_xmls = $(bin)setup.make
cmt_local_check_install_xmls_makefile = $(bin)check_install_xmls.make

endif

not_check_install_xmls_dependencies = { n=0; for p in $?; do m=0; for d in $(check_install_xmls_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
check_install_xmlsdirs :
	@if test ! -d $(bin)check_install_xmls; then $(mkdir) -p $(bin)check_install_xmls; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)check_install_xmls
else
check_install_xmlsdirs : ;
endif

ifdef cmt_check_install_xmls_has_target_tag

ifndef QUICK
$(cmt_local_check_install_xmls_makefile) : $(check_install_xmls_dependencies) build_library_links
	$(echo) "(constituents.make) Building check_install_xmls.make"; \
	  $(cmtexe) -tag=$(tags) $(check_install_xmls_extratags) build constituent_config -out=$(cmt_local_check_install_xmls_makefile) check_install_xmls
else
$(cmt_local_check_install_xmls_makefile) : $(check_install_xmls_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_check_install_xmls) ] || \
	  [ ! -f $(cmt_final_setup_check_install_xmls) ] || \
	  $(not_check_install_xmls_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building check_install_xmls.make"; \
	  $(cmtexe) -tag=$(tags) $(check_install_xmls_extratags) build constituent_config -out=$(cmt_local_check_install_xmls_makefile) check_install_xmls; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_check_install_xmls_makefile) : $(check_install_xmls_dependencies) build_library_links
	$(echo) "(constituents.make) Building check_install_xmls.make"; \
	  $(cmtexe) -f=$(bin)check_install_xmls.in -tag=$(tags) $(check_install_xmls_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_check_install_xmls_makefile) check_install_xmls
else
$(cmt_local_check_install_xmls_makefile) : $(check_install_xmls_dependencies) $(cmt_build_library_linksstamp) $(bin)check_install_xmls.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_check_install_xmls) ] || \
	  [ ! -f $(cmt_final_setup_check_install_xmls) ] || \
	  $(not_check_install_xmls_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building check_install_xmls.make"; \
	  $(cmtexe) -f=$(bin)check_install_xmls.in -tag=$(tags) $(check_install_xmls_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_check_install_xmls_makefile) check_install_xmls; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(check_install_xmls_extratags) build constituent_makefile -out=$(cmt_local_check_install_xmls_makefile) check_install_xmls

check_install_xmls :: $(check_install_xmls_dependencies) $(cmt_local_check_install_xmls_makefile) dirs check_install_xmlsdirs
	$(echo) "(constituents.make) Starting check_install_xmls"
	@if test -f $(cmt_local_check_install_xmls_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_xmls_makefile) check_install_xmls; \
	  fi
#	@$(MAKE) -f $(cmt_local_check_install_xmls_makefile) check_install_xmls
	$(echo) "(constituents.make) check_install_xmls done"

clean :: check_install_xmlsclean ;

check_install_xmlsclean :: $(check_install_xmlsclean_dependencies) ##$(cmt_local_check_install_xmls_makefile)
	$(echo) "(constituents.make) Starting check_install_xmlsclean"
	@-if test -f $(cmt_local_check_install_xmls_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_xmls_makefile) check_install_xmlsclean; \
	fi
	$(echo) "(constituents.make) check_install_xmlsclean done"
#	@-$(MAKE) -f $(cmt_local_check_install_xmls_makefile) check_install_xmlsclean

##	  /bin/rm -f $(cmt_local_check_install_xmls_makefile) $(bin)check_install_xmls_dependencies.make

install :: check_install_xmlsinstall ;

check_install_xmlsinstall :: $(check_install_xmls_dependencies) $(cmt_local_check_install_xmls_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_check_install_xmls_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_xmls_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_check_install_xmls_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : check_install_xmlsuninstall

$(foreach d,$(check_install_xmls_dependencies),$(eval $(d)uninstall_dependencies += check_install_xmlsuninstall))

check_install_xmlsuninstall : $(check_install_xmlsuninstall_dependencies) ##$(cmt_local_check_install_xmls_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_check_install_xmls_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_xmls_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_check_install_xmls_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: check_install_xmlsuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ check_install_xmls"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ check_install_xmls done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_check_install_scripts_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_check_install_scripts_has_target_tag

cmt_local_tagfile_check_install_scripts = $(bin)$(TriggerMenuXML_tag)_check_install_scripts.make
cmt_final_setup_check_install_scripts = $(bin)setup_check_install_scripts.make
cmt_local_check_install_scripts_makefile = $(bin)check_install_scripts.make

check_install_scripts_extratags = -tag_add=target_check_install_scripts

else

cmt_local_tagfile_check_install_scripts = $(bin)$(TriggerMenuXML_tag).make
cmt_final_setup_check_install_scripts = $(bin)setup.make
cmt_local_check_install_scripts_makefile = $(bin)check_install_scripts.make

endif

not_check_install_scripts_dependencies = { n=0; for p in $?; do m=0; for d in $(check_install_scripts_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
check_install_scriptsdirs :
	@if test ! -d $(bin)check_install_scripts; then $(mkdir) -p $(bin)check_install_scripts; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)check_install_scripts
else
check_install_scriptsdirs : ;
endif

ifdef cmt_check_install_scripts_has_target_tag

ifndef QUICK
$(cmt_local_check_install_scripts_makefile) : $(check_install_scripts_dependencies) build_library_links
	$(echo) "(constituents.make) Building check_install_scripts.make"; \
	  $(cmtexe) -tag=$(tags) $(check_install_scripts_extratags) build constituent_config -out=$(cmt_local_check_install_scripts_makefile) check_install_scripts
else
$(cmt_local_check_install_scripts_makefile) : $(check_install_scripts_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_check_install_scripts) ] || \
	  [ ! -f $(cmt_final_setup_check_install_scripts) ] || \
	  $(not_check_install_scripts_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building check_install_scripts.make"; \
	  $(cmtexe) -tag=$(tags) $(check_install_scripts_extratags) build constituent_config -out=$(cmt_local_check_install_scripts_makefile) check_install_scripts; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_check_install_scripts_makefile) : $(check_install_scripts_dependencies) build_library_links
	$(echo) "(constituents.make) Building check_install_scripts.make"; \
	  $(cmtexe) -f=$(bin)check_install_scripts.in -tag=$(tags) $(check_install_scripts_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_check_install_scripts_makefile) check_install_scripts
else
$(cmt_local_check_install_scripts_makefile) : $(check_install_scripts_dependencies) $(cmt_build_library_linksstamp) $(bin)check_install_scripts.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_check_install_scripts) ] || \
	  [ ! -f $(cmt_final_setup_check_install_scripts) ] || \
	  $(not_check_install_scripts_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building check_install_scripts.make"; \
	  $(cmtexe) -f=$(bin)check_install_scripts.in -tag=$(tags) $(check_install_scripts_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_check_install_scripts_makefile) check_install_scripts; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(check_install_scripts_extratags) build constituent_makefile -out=$(cmt_local_check_install_scripts_makefile) check_install_scripts

check_install_scripts :: $(check_install_scripts_dependencies) $(cmt_local_check_install_scripts_makefile) dirs check_install_scriptsdirs
	$(echo) "(constituents.make) Starting check_install_scripts"
	@if test -f $(cmt_local_check_install_scripts_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_scripts_makefile) check_install_scripts; \
	  fi
#	@$(MAKE) -f $(cmt_local_check_install_scripts_makefile) check_install_scripts
	$(echo) "(constituents.make) check_install_scripts done"

clean :: check_install_scriptsclean ;

check_install_scriptsclean :: $(check_install_scriptsclean_dependencies) ##$(cmt_local_check_install_scripts_makefile)
	$(echo) "(constituents.make) Starting check_install_scriptsclean"
	@-if test -f $(cmt_local_check_install_scripts_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_scripts_makefile) check_install_scriptsclean; \
	fi
	$(echo) "(constituents.make) check_install_scriptsclean done"
#	@-$(MAKE) -f $(cmt_local_check_install_scripts_makefile) check_install_scriptsclean

##	  /bin/rm -f $(cmt_local_check_install_scripts_makefile) $(bin)check_install_scripts_dependencies.make

install :: check_install_scriptsinstall ;

check_install_scriptsinstall :: $(check_install_scripts_dependencies) $(cmt_local_check_install_scripts_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_check_install_scripts_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_scripts_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_check_install_scripts_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : check_install_scriptsuninstall

$(foreach d,$(check_install_scripts_dependencies),$(eval $(d)uninstall_dependencies += check_install_scriptsuninstall))

check_install_scriptsuninstall : $(check_install_scriptsuninstall_dependencies) ##$(cmt_local_check_install_scripts_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_check_install_scripts_makefile); then \
	  $(MAKE) -f $(cmt_local_check_install_scripts_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_check_install_scripts_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: check_install_scriptsuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ check_install_scripts"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ check_install_scripts done"
endif

#-- end of constituent ------
#-- start of constituents_trailer ------

uninstall : remove_library_links ;
clean ::
	$(cleanup_echo) $(cmt_build_library_linksstamp)
	-$(cleanup_silent) \rm -f $(cmt_build_library_linksstamp)
#clean :: remove_library_links

remove_library_links ::
ifndef QUICK
	$(echo) "(constituents.make) Removing library links"; \
	  $(remove_library_links)
else
	$(echo) "(constituents.make) Removing library links"; \
	  $(remove_library_links) -f=$(bin)library_links.in -without_cmt
endif

#-- end of constituents_trailer ------
