#-- start of make_header -----------------

#====================================
#  Document TrigJetHypoMergeComponentsList
#
#   Generated Fri Nov 14 14:41:19 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigJetHypoMergeComponentsList_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigJetHypoMergeComponentsList_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigJetHypoMergeComponentsList

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoMergeComponentsList = $(TrigJetHypo_tag)_TrigJetHypoMergeComponentsList.make
cmt_local_tagfile_TrigJetHypoMergeComponentsList = $(bin)$(TrigJetHypo_tag)_TrigJetHypoMergeComponentsList.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoMergeComponentsList = $(TrigJetHypo_tag).make
cmt_local_tagfile_TrigJetHypoMergeComponentsList = $(bin)$(TrigJetHypo_tag).make

endif

include $(cmt_local_tagfile_TrigJetHypoMergeComponentsList)
#-include $(cmt_local_tagfile_TrigJetHypoMergeComponentsList)

ifdef cmt_TrigJetHypoMergeComponentsList_has_target_tag

cmt_final_setup_TrigJetHypoMergeComponentsList = $(bin)setup_TrigJetHypoMergeComponentsList.make
cmt_dependencies_in_TrigJetHypoMergeComponentsList = $(bin)dependencies_TrigJetHypoMergeComponentsList.in
#cmt_final_setup_TrigJetHypoMergeComponentsList = $(bin)TrigJetHypo_TrigJetHypoMergeComponentsListsetup.make
cmt_local_TrigJetHypoMergeComponentsList_makefile = $(bin)TrigJetHypoMergeComponentsList.make

else

cmt_final_setup_TrigJetHypoMergeComponentsList = $(bin)setup.make
cmt_dependencies_in_TrigJetHypoMergeComponentsList = $(bin)dependencies.in
#cmt_final_setup_TrigJetHypoMergeComponentsList = $(bin)TrigJetHyposetup.make
cmt_local_TrigJetHypoMergeComponentsList_makefile = $(bin)TrigJetHypoMergeComponentsList.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigJetHyposetup.make

#TrigJetHypoMergeComponentsList :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigJetHypoMergeComponentsList'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigJetHypoMergeComponentsList/
#TrigJetHypoMergeComponentsList::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/merge_componentslist_header
# Author: Sebastien Binet (binet@cern.ch)

# Makefile fragment to merge a <library>.components file into a single
# <project>.components file in the (lib) install area
# If no InstallArea is present the fragment is dummy


.PHONY: TrigJetHypoMergeComponentsList TrigJetHypoMergeComponentsListclean

# default is already '#'
#genmap_comment_char := "'#'"

componentsListRef    := ../$(tag)/TrigJetHypo.components

ifdef CMTINSTALLAREA
componentsListDir    := ${CMTINSTALLAREA}/$(tag)/lib
mergedComponentsList := $(componentsListDir)/$(project).components
stampComponentsList  := $(componentsListRef).stamp
else
componentsListDir    := ../$(tag)
mergedComponentsList :=
stampComponentsList  :=
endif

TrigJetHypoMergeComponentsList :: $(stampComponentsList) $(mergedComponentsList)
	@:

.NOTPARALLEL : $(stampComponentsList) $(mergedComponentsList)

$(stampComponentsList) $(mergedComponentsList) :: $(componentsListRef)
	@echo "Running merge_componentslist  TrigJetHypoMergeComponentsList"
	$(merge_componentslist_cmd) --do-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList)

TrigJetHypoMergeComponentsListclean ::
	$(cleanup_silent) $(merge_componentslist_cmd) --un-merge \
         --input-file $(componentsListRef) --merged-file $(mergedComponentsList) ;
	$(cleanup_silent) $(remove_command) $(stampComponentsList)
libTrigJetHypo_so_dependencies = ../x86_64-slc6-gcc47-opt/libTrigJetHypo.so
#-- start of cleanup_header --------------

clean :: TrigJetHypoMergeComponentsListclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigJetHypoMergeComponentsList.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigJetHypoMergeComponentsListclean ::
#-- end of cleanup_header ---------------
