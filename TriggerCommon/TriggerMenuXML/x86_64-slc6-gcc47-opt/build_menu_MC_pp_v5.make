#-- start of make_header -----------------

#====================================
#  Document build_menu_MC_pp_v5
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

cmt_build_menu_MC_pp_v5_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_build_menu_MC_pp_v5_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_build_menu_MC_pp_v5

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_build_menu_MC_pp_v5 = $(TriggerMenuXML_tag)_build_menu_MC_pp_v5.make
cmt_local_tagfile_build_menu_MC_pp_v5 = $(bin)$(TriggerMenuXML_tag)_build_menu_MC_pp_v5.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_build_menu_MC_pp_v5 = $(TriggerMenuXML_tag).make
cmt_local_tagfile_build_menu_MC_pp_v5 = $(bin)$(TriggerMenuXML_tag).make

endif

include $(cmt_local_tagfile_build_menu_MC_pp_v5)
#-include $(cmt_local_tagfile_build_menu_MC_pp_v5)

ifdef cmt_build_menu_MC_pp_v5_has_target_tag

cmt_final_setup_build_menu_MC_pp_v5 = $(bin)setup_build_menu_MC_pp_v5.make
cmt_dependencies_in_build_menu_MC_pp_v5 = $(bin)dependencies_build_menu_MC_pp_v5.in
#cmt_final_setup_build_menu_MC_pp_v5 = $(bin)TriggerMenuXML_build_menu_MC_pp_v5setup.make
cmt_local_build_menu_MC_pp_v5_makefile = $(bin)build_menu_MC_pp_v5.make

else

cmt_final_setup_build_menu_MC_pp_v5 = $(bin)setup.make
cmt_dependencies_in_build_menu_MC_pp_v5 = $(bin)dependencies.in
#cmt_final_setup_build_menu_MC_pp_v5 = $(bin)TriggerMenuXMLsetup.make
cmt_local_build_menu_MC_pp_v5_makefile = $(bin)build_menu_MC_pp_v5.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenuXMLsetup.make

#build_menu_MC_pp_v5 :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'build_menu_MC_pp_v5'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = build_menu_MC_pp_v5/
#build_menu_MC_pp_v5::
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
build_menu_MC_pp_v5_once = 1
endif

ifdef build_menu_MC_pp_v5_once

build_menu_MC_pp_v5actionstamp = $(bin)build_menu_MC_pp_v5.actionstamp
#build_menu_MC_pp_v5actionstamp = build_menu_MC_pp_v5.actionstamp

build_menu_MC_pp_v5 :: $(build_menu_MC_pp_v5actionstamp)
	$(echo) "build_menu_MC_pp_v5 ok"
#	@echo build_menu_MC_pp_v5 ok

#$(build_menu_MC_pp_v5actionstamp) :: $(build_menu_MC_pp_v5_dependencies)
$(build_menu_MC_pp_v5actionstamp) ::
	$(silent) ../scripts/XMLDumperFromAthena.sh MC_pp_v5
	$(silent) cat /dev/null > $(build_menu_MC_pp_v5actionstamp)
#	@echo ok > $(build_menu_MC_pp_v5actionstamp)

build_menu_MC_pp_v5clean ::
	$(cleanup_silent) /bin/rm -f $(build_menu_MC_pp_v5actionstamp)

else

#build_menu_MC_pp_v5 :: $(build_menu_MC_pp_v5_dependencies)
build_menu_MC_pp_v5 ::
	$(silent) ../scripts/XMLDumperFromAthena.sh MC_pp_v5

endif

install ::
uninstall ::

#-- end of cmt_action_runner_header -----------------
#-- start of cleanup_header --------------

clean :: build_menu_MC_pp_v5clean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(build_menu_MC_pp_v5.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

build_menu_MC_pp_v5clean ::
#-- end of cleanup_header ---------------