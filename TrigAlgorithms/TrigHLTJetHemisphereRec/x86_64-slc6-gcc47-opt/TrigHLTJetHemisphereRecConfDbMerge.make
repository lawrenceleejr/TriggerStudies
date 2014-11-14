#-- start of make_header -----------------

#====================================
#  Document TrigHLTJetHemisphereRecConfDbMerge
#
#   Generated Fri Nov 14 11:43:09 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigHLTJetHemisphereRecConfDbMerge_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigHLTJetHemisphereRecConfDbMerge_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigHLTJetHemisphereRecConfDbMerge

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRecConfDbMerge = $(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRecConfDbMerge.make
cmt_local_tagfile_TrigHLTJetHemisphereRecConfDbMerge = $(bin)$(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRecConfDbMerge.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRecConfDbMerge = $(TrigHLTJetHemisphereRec_tag).make
cmt_local_tagfile_TrigHLTJetHemisphereRecConfDbMerge = $(bin)$(TrigHLTJetHemisphereRec_tag).make

endif

include $(cmt_local_tagfile_TrigHLTJetHemisphereRecConfDbMerge)
#-include $(cmt_local_tagfile_TrigHLTJetHemisphereRecConfDbMerge)

ifdef cmt_TrigHLTJetHemisphereRecConfDbMerge_has_target_tag

cmt_final_setup_TrigHLTJetHemisphereRecConfDbMerge = $(bin)setup_TrigHLTJetHemisphereRecConfDbMerge.make
cmt_dependencies_in_TrigHLTJetHemisphereRecConfDbMerge = $(bin)dependencies_TrigHLTJetHemisphereRecConfDbMerge.in
#cmt_final_setup_TrigHLTJetHemisphereRecConfDbMerge = $(bin)TrigHLTJetHemisphereRec_TrigHLTJetHemisphereRecConfDbMergesetup.make
cmt_local_TrigHLTJetHemisphereRecConfDbMerge_makefile = $(bin)TrigHLTJetHemisphereRecConfDbMerge.make

else

cmt_final_setup_TrigHLTJetHemisphereRecConfDbMerge = $(bin)setup.make
cmt_dependencies_in_TrigHLTJetHemisphereRecConfDbMerge = $(bin)dependencies.in
#cmt_final_setup_TrigHLTJetHemisphereRecConfDbMerge = $(bin)TrigHLTJetHemisphereRecsetup.make
cmt_local_TrigHLTJetHemisphereRecConfDbMerge_makefile = $(bin)TrigHLTJetHemisphereRecConfDbMerge.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigHLTJetHemisphereRecsetup.make

#TrigHLTJetHemisphereRecConfDbMerge :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigHLTJetHemisphereRecConfDbMerge'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigHLTJetHemisphereRecConfDbMerge/
#TrigHLTJetHemisphereRecConfDbMerge::
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

.PHONY: TrigHLTJetHemisphereRecConfDbMerge TrigHLTJetHemisphereRecConfDbMergeclean

# default is already '#'
#genconfDb_comment_char := "'#'"

instdir      := ${CMTINSTALLAREA}/$(tag)
confDbRef    := /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms/TrigHLTJetHemisphereRec/genConf/TrigHLTJetHemisphereRec/TrigHLTJetHemisphereRec.confdb
stampConfDb  := $(confDbRef).stamp
mergedConfDb := $(instdir)/lib/$(project).confdb

TrigHLTJetHemisphereRecConfDbMerge :: $(stampConfDb) $(mergedConfDb)
	@:

.NOTPARALLEL : $(stampConfDb) $(mergedConfDb)

$(stampConfDb) $(mergedConfDb) :: $(confDbRef)
	@echo "Running merge_genconfDb  TrigHLTJetHemisphereRecConfDbMerge"
	$(merge_genconfDb_cmd) \
          --do-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)

TrigHLTJetHemisphereRecConfDbMergeclean ::
	$(cleanup_silent) $(merge_genconfDb_cmd) \
          --un-merge \
          --input-file $(confDbRef) \
          --merged-file $(mergedConfDb)	;
	$(cleanup_silent) $(remove_command) $(stampConfDb)
libTrigHLTJetHemisphereRec_so_dependencies = ../x86_64-slc6-gcc47-opt/libTrigHLTJetHemisphereRec.so
#-- start of cleanup_header --------------

clean :: TrigHLTJetHemisphereRecConfDbMergeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigHLTJetHemisphereRecConfDbMerge.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigHLTJetHemisphereRecConfDbMergeclean ::
#-- end of cleanup_header ---------------
