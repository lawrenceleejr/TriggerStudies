#-- start of make_header -----------------

#====================================
#  Document TrigHLTJetHemisphereRecCLIDDB
#
#   Generated Fri Nov 14 11:43:05 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigHLTJetHemisphereRecCLIDDB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigHLTJetHemisphereRecCLIDDB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigHLTJetHemisphereRecCLIDDB

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRecCLIDDB = $(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRecCLIDDB.make
cmt_local_tagfile_TrigHLTJetHemisphereRecCLIDDB = $(bin)$(TrigHLTJetHemisphereRec_tag)_TrigHLTJetHemisphereRecCLIDDB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigHLTJetHemisphereRec_tag = $(tag)

#cmt_local_tagfile_TrigHLTJetHemisphereRecCLIDDB = $(TrigHLTJetHemisphereRec_tag).make
cmt_local_tagfile_TrigHLTJetHemisphereRecCLIDDB = $(bin)$(TrigHLTJetHemisphereRec_tag).make

endif

include $(cmt_local_tagfile_TrigHLTJetHemisphereRecCLIDDB)
#-include $(cmt_local_tagfile_TrigHLTJetHemisphereRecCLIDDB)

ifdef cmt_TrigHLTJetHemisphereRecCLIDDB_has_target_tag

cmt_final_setup_TrigHLTJetHemisphereRecCLIDDB = $(bin)setup_TrigHLTJetHemisphereRecCLIDDB.make
cmt_dependencies_in_TrigHLTJetHemisphereRecCLIDDB = $(bin)dependencies_TrigHLTJetHemisphereRecCLIDDB.in
#cmt_final_setup_TrigHLTJetHemisphereRecCLIDDB = $(bin)TrigHLTJetHemisphereRec_TrigHLTJetHemisphereRecCLIDDBsetup.make
cmt_local_TrigHLTJetHemisphereRecCLIDDB_makefile = $(bin)TrigHLTJetHemisphereRecCLIDDB.make

else

cmt_final_setup_TrigHLTJetHemisphereRecCLIDDB = $(bin)setup.make
cmt_dependencies_in_TrigHLTJetHemisphereRecCLIDDB = $(bin)dependencies.in
#cmt_final_setup_TrigHLTJetHemisphereRecCLIDDB = $(bin)TrigHLTJetHemisphereRecsetup.make
cmt_local_TrigHLTJetHemisphereRecCLIDDB_makefile = $(bin)TrigHLTJetHemisphereRecCLIDDB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigHLTJetHemisphereRecsetup.make

#TrigHLTJetHemisphereRecCLIDDB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigHLTJetHemisphereRecCLIDDB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigHLTJetHemisphereRecCLIDDB/
#TrigHLTJetHemisphereRecCLIDDB::
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

.PHONY: TrigHLTJetHemisphereRecCLIDDB TrigHLTJetHemisphereRecCLIDDBclean

outname := clid.db
cliddb  := TrigHLTJetHemisphereRec_$(outname)
instdir := $(CMTINSTALLAREA)/share
result  := $(instdir)/$(cliddb)
product := $(instdir)/$(outname)
conflib := $(bin)$(library_prefix)TrigHLTJetHemisphereRec.$(shlibsuffix)

TrigHLTJetHemisphereRecCLIDDB :: $(result)

$(instdir) :
	$(mkdir) -p $(instdir)

$(result) : $(conflib) $(product)
	@$(genCLIDDB_cmd) -p TrigHLTJetHemisphereRec -i$(product) -o $(result)

$(product) : $(instdir)
	touch $(product)

TrigHLTJetHemisphereRecCLIDDBclean ::
	$(cleanup_silent) $(uninstall_command) $(product) $(result)
	$(cleanup_silent) $(cmt_uninstallarea_command) $(product) $(result)

#-- start of cleanup_header --------------

clean :: TrigHLTJetHemisphereRecCLIDDBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigHLTJetHemisphereRecCLIDDB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigHLTJetHemisphereRecCLIDDBclean ::
#-- end of cleanup_header ---------------
