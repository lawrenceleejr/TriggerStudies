#-- start of make_header -----------------

#====================================
#  Document build_menu_LS1_v1
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

cmt_build_menu_LS1_v1_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_build_menu_LS1_v1_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_build_menu_LS1_v1

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_build_menu_LS1_v1 = $(TriggerMenuXML_tag)_build_menu_LS1_v1.make
cmt_local_tagfile_build_menu_LS1_v1 = $(bin)$(TriggerMenuXML_tag)_build_menu_LS1_v1.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TriggerMenuXML_tag = $(tag)

#cmt_local_tagfile_build_menu_LS1_v1 = $(TriggerMenuXML_tag).make
cmt_local_tagfile_build_menu_LS1_v1 = $(bin)$(TriggerMenuXML_tag).make

endif

include $(cmt_local_tagfile_build_menu_LS1_v1)
#-include $(cmt_local_tagfile_build_menu_LS1_v1)

ifdef cmt_build_menu_LS1_v1_has_target_tag

cmt_final_setup_build_menu_LS1_v1 = $(bin)setup_build_menu_LS1_v1.make
cmt_dependencies_in_build_menu_LS1_v1 = $(bin)dependencies_build_menu_LS1_v1.in
#cmt_final_setup_build_menu_LS1_v1 = $(bin)TriggerMenuXML_build_menu_LS1_v1setup.make
cmt_local_build_menu_LS1_v1_makefile = $(bin)build_menu_LS1_v1.make

else

cmt_final_setup_build_menu_LS1_v1 = $(bin)setup.make
cmt_dependencies_in_build_menu_LS1_v1 = $(bin)dependencies.in
#cmt_final_setup_build_menu_LS1_v1 = $(bin)TriggerMenuXMLsetup.make
cmt_local_build_menu_LS1_v1_makefile = $(bin)build_menu_LS1_v1.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TriggerMenuXMLsetup.make

#build_menu_LS1_v1 :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'build_menu_LS1_v1'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = build_menu_LS1_v1/
#build_menu_LS1_v1::
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
build_menu_LS1_v1_once = 1
endif

ifdef build_menu_LS1_v1_once

build_menu_LS1_v1actionstamp = $(bin)build_menu_LS1_v1.actionstamp
#build_menu_LS1_v1actionstamp = build_menu_LS1_v1.actionstamp

build_menu_LS1_v1 :: $(build_menu_LS1_v1actionstamp)
	$(echo) "build_menu_LS1_v1 ok"
#	@echo build_menu_LS1_v1 ok

#$(build_menu_LS1_v1actionstamp) :: $(build_menu_LS1_v1_dependencies)
$(build_menu_LS1_v1actionstamp) ::
	$(silent) ../scripts/XMLDumperFromAthena.sh LS1_v1
	$(silent) cat /dev/null > $(build_menu_LS1_v1actionstamp)
#	@echo ok > $(build_menu_LS1_v1actionstamp)

build_menu_LS1_v1clean ::
	$(cleanup_silent) /bin/rm -f $(build_menu_LS1_v1actionstamp)

else

#build_menu_LS1_v1 :: $(build_menu_LS1_v1_dependencies)
build_menu_LS1_v1 ::
	$(silent) ../scripts/XMLDumperFromAthena.sh LS1_v1

endif

install ::
uninstall ::

#-- end of cmt_action_runner_header -----------------
#-- start of cleanup_header --------------

clean :: build_menu_LS1_v1clean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(build_menu_LS1_v1.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

build_menu_LS1_v1clean ::
#-- end of cleanup_header ---------------