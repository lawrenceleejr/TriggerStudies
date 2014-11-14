#-- start of make_header -----------------

#====================================
#  Document TrigJetHypoCLIDDB
#
#   Generated Fri Nov 14 14:41:12 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigJetHypoCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigJetHypoCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigJetHypoCLIDDB

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoCLIDDB = $(TrigJetHypo_tag)_TrigJetHypoCLIDDB.make
cmt_local_tagfile_TrigJetHypoCLIDDB = $(bin)$(TrigJetHypo_tag)_TrigJetHypoCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoCLIDDB = $(TrigJetHypo_tag).make
cmt_local_tagfile_TrigJetHypoCLIDDB = $(bin)$(TrigJetHypo_tag).make

endif

include $(cmt_local_tagfile_TrigJetHypoCLIDDB)
#-include $(cmt_local_tagfile_TrigJetHypoCLIDDB)

ifdef cmt_TrigJetHypoCLIDDB_has_target_tag

cmt_final_setup_TrigJetHypoCLIDDB = $(bin)setup_TrigJetHypoCLIDDB.make
cmt_dependencies_in_TrigJetHypoCLIDDB = $(bin)dependencies_TrigJetHypoCLIDDB.in
#cmt_final_setup_TrigJetHypoCLIDDB = $(bin)TrigJetHypo_TrigJetHypoCLIDDBsetup.make
cmt_local_TrigJetHypoCLIDDB_makefile = $(bin)TrigJetHypoCLIDDB.make

else

cmt_final_setup_TrigJetHypoCLIDDB = $(bin)setup.make
cmt_dependencies_in_TrigJetHypoCLIDDB = $(bin)dependencies.in
#cmt_final_setup_TrigJetHypoCLIDDB = $(bin)TrigJetHyposetup.make
cmt_local_TrigJetHypoCLIDDB_makefile = $(bin)TrigJetHypoCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigJetHyposetup.make

#TrigJetHypoCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigJetHypoCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigJetHypoCLIDDB/
#TrigJetHypoCLIDDB::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
# File: cmt/fragments/genCLIDDB_header
# Author: Paolo Calafiura
# derived from genconf_header

# Use genCLIDDB_cmd to create package clid.db files

.PHONY: TrigJetHypoCLIDDB TrigJetHypoCLIDDBclean

outname := clid.db
cliddb  := TrigJetHypo_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)TrigJetHypo.$(shlibsuffix)

TrigJetHypoCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p TrigJetHypo -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

TrigJetHypoCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: TrigJetHypoCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigJetHypoCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigJetHypoCLIDDBclean ::
#-- end of cleanup_header ---------------
