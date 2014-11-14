#-- start of make_header -----------------

#====================================
#  Document build_menu_DC14_tight_mc_prescale
#
#   Generated Fri Nov 14 10:52:16 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_build_menu_DC14_tight_mc_prescale_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_build_menu_DC14_tight_mc_prescale_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_build_menu_DC14_tight_mc_prescale

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_build_menu_DC14_tight_mc_prescale = $(TriggerMenuXML_tag)_build_menu_DC14_tight_mc_prescale.make
cmt_local_tagfile_build_menu_DC14_tight_mc_prescale = $(bin)$(TriggerMenuXML_tag)_build_menu_DC14_tight_mc_prescale.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_build_menu_DC14_tight_mc_prescale = $(TriggerMenuXML_tag).make
cmt_local_tagfile_build_menu_DC14_tight_mc_prescale = $(bin)$(TriggerMenuXML_tag).make

endif

include $(cmt_local_tagfile_build_menu_DC14_tight_mc_prescale)
#-include $(cmt_local_tagfile_build_menu_DC14_tight_mc_prescale)

ifdef cmt_build_menu_DC14_tight_mc_prescale_has_target_tag

cmt_final_setup_build_menu_DC14_tight_mc_prescale = $(bin)setup_build_menu_DC14_tight_mc_prescale.make
cmt_dependencies_in_build_menu_DC14_tight_mc_prescale = $(bin)dependencies_build_menu_DC14_tight_mc_prescale.in
#cmt_final_setup_build_menu_DC14_tight_mc_prescale = $(bin)TriggerMenuXML_build_menu_DC14_tight_mc_prescalesetup.make
cmt_local_build_menu_DC14_tight_mc_prescale_makefile = $(bin)build_menu_DC14_tight_mc_prescale.make

else

cmt_final_setup_build_menu_DC14_tight_mc_prescale = $(bin)setup.make
cmt_dependencies_in_build_menu_DC14_tight_mc_prescale = $(bin)dependencies.in
#cmt_final_setup_build_menu_DC14_tight_mc_prescale = $(bin)TriggerMenuXMLsetup.make
cmt_local_build_menu_DC14_tight_mc_prescale_makefile = $(bin)build_menu_DC14_tight_mc_prescale.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenuXMLsetup.make

#build_menu_DC14_tight_mc_prescale :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'build_menu_DC14_tight_mc_prescale'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = build_menu_DC14_tight_mc_prescale/
#build_menu_DC14_tight_mc_prescale::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of cmt_action_runner_header ---------------

ifdef ONCE
build_menu_DC14_tight_mc_prescale_once = 1
endif

ifdef build_menu_DC14_tight_mc_prescale_once

build_menu_DC14_tight_mc_prescaleactionstamp = $(bin)build_menu_DC14_tight_mc_prescale.actionstamp
#build_menu_DC14_tight_mc_prescaleactionstamp = build_menu_DC14_tight_mc_prescale.actionstamp

build_menu_DC14_tight_mc_prescale :: $(build_menu_DC14_tight_mc_prescaleactionstamp)
	$(echo) "build_menu_DC14_tight_mc_prescale ok"
#	@echo build_menu_DC14_tight_mc_prescale ok

#$(build_menu_DC14_tight_mc_prescaleactionstamp) :: $(build_menu_DC14_tight_mc_prescale_dependencies)
$(build_menu_DC14_tight_mc_prescaleactionstamp) ::
	$(silent) ../scripts/XMLDumperFromAthena.sh DC14_tight_mc_prescale
	$(silent) cat /dev/null > $(build_menu_DC14_tight_mc_prescaleactionstamp)
#	@echo ok > $(build_menu_DC14_tight_mc_prescaleactionstamp)

build_menu_DC14_tight_mc_prescaleclean ::
	$(cleanup_silent) /bin/rm -f $(build_menu_DC14_tight_mc_prescaleactionstamp)

else

#build_menu_DC14_tight_mc_prescale :: $(build_menu_DC14_tight_mc_prescale_dependencies)
build_menu_DC14_tight_mc_prescale ::
	$(silent) ../scripts/XMLDumperFromAthena.sh DC14_tight_mc_prescale

endif

install ::
uninstall ::

#-- end of cmt_action_runner_header -----------------
#-- start of cleanup_header --------------

clean :: build_menu_DC14_tight_mc_prescaleclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(build_menu_DC14_tight_mc_prescale.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

build_menu_DC14_tight_mc_prescaleclean ::
#-- end of cleanup_header ---------------
