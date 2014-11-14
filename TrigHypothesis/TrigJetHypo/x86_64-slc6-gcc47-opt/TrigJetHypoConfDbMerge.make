#-- start of make_header -----------------

#====================================
#  Document TrigJetHypoConfDbMerge
#
#   Generated Fri Nov 14 14:41:20 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigJetHypoConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigJetHypoConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigJetHypoConfDbMerge

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoConfDbMerge = $(TrigJetHypo_tag)_TrigJetHypoConfDbMerge.make
cmt_local_tagfile_TrigJetHypoConfDbMerge = $(bin)$(TrigJetHypo_tag)_TrigJetHypoConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoConfDbMerge = $(TrigJetHypo_tag).make
cmt_local_tagfile_TrigJetHypoConfDbMerge = $(bin)$(TrigJetHypo_tag).make

endif

include $(cmt_local_tagfile_TrigJetHypoConfDbMerge)
#-include $(cmt_local_tagfile_TrigJetHypoConfDbMerge)

ifdef cmt_TrigJetHypoConfDbMerge_has_target_tag

cmt_final_setup_TrigJetHypoConfDbMerge = $(bin)setup_TrigJetHypoConfDbMerge.make
cmt_dependencies_in_TrigJetHypoConfDbMerge = $(bin)dependencies_TrigJetHypoConfDbMerge.in
#cmt_final_setup_TrigJetHypoConfDbMerge = $(bin)TrigJetHypo_TrigJetHypoConfDbMergesetup.make
cmt_local_TrigJetHypoConfDbMerge_makefile = $(bin)TrigJetHypoConfDbMerge.make

else

cmt_final_setup_TrigJetHypoConfDbMerge = $(bin)setup.make
cmt_dependencies_in_TrigJetHypoConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_TrigJetHypoConfDbMerge = $(bin)TrigJetHyposetup.make
cmt_local_TrigJetHypoConfDbMerge_makefile = $(bin)TrigJetHypoConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigJetHyposetup.make

#TrigJetHypoConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigJetHypoConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigJetHypoConfDbMerge/
#TrigJetHypoConfDbMerge::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/merge_genconfDb_header
# Author: Sebastien Binet (binet@cern.ch)

# Makefile fragment to merge a <library>.confdb file into a single
# <project>.confdb file in the (lib) install area

.PHONY: TrigJetHypoConfDbMerge TrigJetHypoConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis/TrigJetHypo/genConf/TrigJetHypo/TrigJetHypo.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

TrigJetHypoConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  TrigJetHypoConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

TrigJetHypoConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libTrigJetHypo_so_dependencies = ../x86_64-slc6-gcc47-opt/libTrigJetHypo.so
#-- start of cleanup_header --------------

clean :: TrigJetHypoConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigJetHypoConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigJetHypoConfDbMergeclean ::
#-- end of cleanup_header ---------------
