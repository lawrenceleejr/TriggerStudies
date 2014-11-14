#-- start of make_header -----------------

#====================================
#  Library TrigJetHypoLib
#
#   Generated Fri Nov 14 14:30:34 2014  by leejr
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_TrigJetHypoLib_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_TrigJetHypoLib_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_TrigJetHypoLib

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoLib = $(TrigJetHypo_tag)_TrigJetHypoLib.make
cmt_local_tagfile_TrigJetHypoLib = $(bin)$(TrigJetHypo_tag)_TrigJetHypoLib.make

else

tags      = $(tag),$(CMTEXTRATAGS)

TrigJetHypo_tag = $(tag)

#cmt_local_tagfile_TrigJetHypoLib = $(TrigJetHypo_tag).make
cmt_local_tagfile_TrigJetHypoLib = $(bin)$(TrigJetHypo_tag).make

endif

include $(cmt_local_tagfile_TrigJetHypoLib)
#-include $(cmt_local_tagfile_TrigJetHypoLib)

ifdef cmt_TrigJetHypoLib_has_target_tag

cmt_final_setup_TrigJetHypoLib = $(bin)setup_TrigJetHypoLib.make
cmt_dependencies_in_TrigJetHypoLib = $(bin)dependencies_TrigJetHypoLib.in
#cmt_final_setup_TrigJetHypoLib = $(bin)TrigJetHypo_TrigJetHypoLibsetup.make
cmt_local_TrigJetHypoLib_makefile = $(bin)TrigJetHypoLib.make

else

cmt_final_setup_TrigJetHypoLib = $(bin)setup.make
cmt_dependencies_in_TrigJetHypoLib = $(bin)dependencies.in
#cmt_final_setup_TrigJetHypoLib = $(bin)TrigJetHyposetup.make
cmt_local_TrigJetHypoLib_makefile = $(bin)TrigJetHypoLib.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)TrigJetHyposetup.make

#TrigJetHypoLib :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'TrigJetHypoLib'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = TrigJetHypoLib/
#TrigJetHypoLib::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

TrigJetHypoLiblibname   = $(bin)$(library_prefix)TrigJetHypoLib$(library_suffix)
TrigJetHypoLiblib       = $(TrigJetHypoLiblibname).a
TrigJetHypoLibstamp     = $(bin)TrigJetHypoLib.stamp
TrigJetHypoLibshstamp   = $(bin)TrigJetHypoLib.shstamp

TrigJetHypoLib :: dirs  TrigJetHypoLibLIB
	$(echo) "TrigJetHypoLib ok"

#-- end of libary_header ----------------
#-- start of library_no_static ------

#TrigJetHypoLibLIB :: $(TrigJetHypoLiblib) $(TrigJetHypoLibshstamp)
TrigJetHypoLibLIB :: $(TrigJetHypoLibshstamp)
	$(echo) "TrigJetHypoLib : library ok"

$(TrigJetHypoLiblib) :: $(bin)TrigEFDPhiMetJetAllTE.o $(bin)TrigL2MultiJetHypo.o $(bin)TrigEFJetHypoNoise.o $(bin)TrigL2HTAllTE.o $(bin)TrigEFJetHypo.o $(bin)TrigL2DEtaMjjAllTE.o $(bin)TrigL2HTFullScanHypo.o $(bin)TrigEFJetMctHypo.o $(bin)TrigEFJetDphiHypo.o $(bin)TrigEFCentralJet.o $(bin)TrigDEtaHypoBase.o $(bin)TrigEFJetMassY.o $(bin)TrigDEtaFexBase.o $(bin)TrigL2CentralJetAllTE.o $(bin)TrigL2DijetCombo.o $(bin)TrigL2MultiJetAllTE.o $(bin)TrigL2JetHypoNoise.o $(bin)TrigL2DijetAllTE.o $(bin)TrigEFJetMassDEta.o $(bin)TrigL2JetHypo.o $(bin)TrigL2JetMctHypo.o $(bin)TrigL2JetDphiHypo.o $(bin)TrigEFHTHypo.o $(bin)TrigEFRazorAllTE.o
	$(lib_echo) "static library $@"
	$(lib_silent) cd $(bin); \
	  $(ar) $(TrigJetHypoLiblib) $?
	$(lib_silent) $(ranlib) $(TrigJetHypoLiblib)
	$(lib_silent) cat /dev/null >$(TrigJetHypoLibstamp)

#------------------------------------------------------------------
#  Future improvement? to empty the object files after
#  storing in the library
#
##	  for f in $?; do \
##	    rm $${f}; touch $${f}; \
##	  done
#------------------------------------------------------------------

#
# We add one level of dependency upon the true shared library 
# (rather than simply upon the stamp file)
# this is for cases where the shared library has not been built
# while the stamp was created (error??) 
#

$(TrigJetHypoLiblibname).$(shlibsuffix) :: $(bin)TrigEFDPhiMetJetAllTE.o $(bin)TrigL2MultiJetHypo.o $(bin)TrigEFJetHypoNoise.o $(bin)TrigL2HTAllTE.o $(bin)TrigEFJetHypo.o $(bin)TrigL2DEtaMjjAllTE.o $(bin)TrigL2HTFullScanHypo.o $(bin)TrigEFJetMctHypo.o $(bin)TrigEFJetDphiHypo.o $(bin)TrigEFCentralJet.o $(bin)TrigDEtaHypoBase.o $(bin)TrigEFJetMassY.o $(bin)TrigDEtaFexBase.o $(bin)TrigL2CentralJetAllTE.o $(bin)TrigL2DijetCombo.o $(bin)TrigL2MultiJetAllTE.o $(bin)TrigL2JetHypoNoise.o $(bin)TrigL2DijetAllTE.o $(bin)TrigEFJetMassDEta.o $(bin)TrigL2JetHypo.o $(bin)TrigL2JetMctHypo.o $(bin)TrigL2JetDphiHypo.o $(bin)TrigEFHTHypo.o $(bin)TrigEFRazorAllTE.o $(use_requirements) $(TrigJetHypoLibstamps)
	$(lib_echo) "shared library $@"
	$(lib_silent) $(shlibbuilder) $(shlibflags) -o $@ $(bin)TrigEFDPhiMetJetAllTE.o $(bin)TrigL2MultiJetHypo.o $(bin)TrigEFJetHypoNoise.o $(bin)TrigL2HTAllTE.o $(bin)TrigEFJetHypo.o $(bin)TrigL2DEtaMjjAllTE.o $(bin)TrigL2HTFullScanHypo.o $(bin)TrigEFJetMctHypo.o $(bin)TrigEFJetDphiHypo.o $(bin)TrigEFCentralJet.o $(bin)TrigDEtaHypoBase.o $(bin)TrigEFJetMassY.o $(bin)TrigDEtaFexBase.o $(bin)TrigL2CentralJetAllTE.o $(bin)TrigL2DijetCombo.o $(bin)TrigL2MultiJetAllTE.o $(bin)TrigL2JetHypoNoise.o $(bin)TrigL2DijetAllTE.o $(bin)TrigEFJetMassDEta.o $(bin)TrigL2JetHypo.o $(bin)TrigL2JetMctHypo.o $(bin)TrigL2JetDphiHypo.o $(bin)TrigEFHTHypo.o $(bin)TrigEFRazorAllTE.o $(TrigJetHypoLib_shlibflags)
	$(lib_silent) cat /dev/null >$(TrigJetHypoLibstamp) && \
	  cat /dev/null >$(TrigJetHypoLibshstamp)

$(TrigJetHypoLibshstamp) :: $(TrigJetHypoLiblibname).$(shlibsuffix)
	$(lib_silent) if test -f $(TrigJetHypoLiblibname).$(shlibsuffix) ; then \
	  cat /dev/null >$(TrigJetHypoLibstamp) && \
	  cat /dev/null >$(TrigJetHypoLibshstamp) ; fi

TrigJetHypoLibclean ::
	$(cleanup_echo) objects TrigJetHypoLib
	$(cleanup_silent) /bin/rm -f $(bin)TrigEFDPhiMetJetAllTE.o $(bin)TrigL2MultiJetHypo.o $(bin)TrigEFJetHypoNoise.o $(bin)TrigL2HTAllTE.o $(bin)TrigEFJetHypo.o $(bin)TrigL2DEtaMjjAllTE.o $(bin)TrigL2HTFullScanHypo.o $(bin)TrigEFJetMctHypo.o $(bin)TrigEFJetDphiHypo.o $(bin)TrigEFCentralJet.o $(bin)TrigDEtaHypoBase.o $(bin)TrigEFJetMassY.o $(bin)TrigDEtaFexBase.o $(bin)TrigL2CentralJetAllTE.o $(bin)TrigL2DijetCombo.o $(bin)TrigL2MultiJetAllTE.o $(bin)TrigL2JetHypoNoise.o $(bin)TrigL2DijetAllTE.o $(bin)TrigEFJetMassDEta.o $(bin)TrigL2JetHypo.o $(bin)TrigL2JetMctHypo.o $(bin)TrigL2JetDphiHypo.o $(bin)TrigEFHTHypo.o $(bin)TrigEFRazorAllTE.o
	$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)TrigEFDPhiMetJetAllTE.o $(bin)TrigL2MultiJetHypo.o $(bin)TrigEFJetHypoNoise.o $(bin)TrigL2HTAllTE.o $(bin)TrigEFJetHypo.o $(bin)TrigL2DEtaMjjAllTE.o $(bin)TrigL2HTFullScanHypo.o $(bin)TrigEFJetMctHypo.o $(bin)TrigEFJetDphiHypo.o $(bin)TrigEFCentralJet.o $(bin)TrigDEtaHypoBase.o $(bin)TrigEFJetMassY.o $(bin)TrigDEtaFexBase.o $(bin)TrigL2CentralJetAllTE.o $(bin)TrigL2DijetCombo.o $(bin)TrigL2MultiJetAllTE.o $(bin)TrigL2JetHypoNoise.o $(bin)TrigL2DijetAllTE.o $(bin)TrigEFJetMassDEta.o $(bin)TrigL2JetHypo.o $(bin)TrigL2JetMctHypo.o $(bin)TrigL2JetDphiHypo.o $(bin)TrigEFHTHypo.o $(bin)TrigEFRazorAllTE.o) $(patsubst %.o,%.dep,$(bin)TrigEFDPhiMetJetAllTE.o $(bin)TrigL2MultiJetHypo.o $(bin)TrigEFJetHypoNoise.o $(bin)TrigL2HTAllTE.o $(bin)TrigEFJetHypo.o $(bin)TrigL2DEtaMjjAllTE.o $(bin)TrigL2HTFullScanHypo.o $(bin)TrigEFJetMctHypo.o $(bin)TrigEFJetDphiHypo.o $(bin)TrigEFCentralJet.o $(bin)TrigDEtaHypoBase.o $(bin)TrigEFJetMassY.o $(bin)TrigDEtaFexBase.o $(bin)TrigL2CentralJetAllTE.o $(bin)TrigL2DijetCombo.o $(bin)TrigL2MultiJetAllTE.o $(bin)TrigL2JetHypoNoise.o $(bin)TrigL2DijetAllTE.o $(bin)TrigEFJetMassDEta.o $(bin)TrigL2JetHypo.o $(bin)TrigL2JetMctHypo.o $(bin)TrigL2JetDphiHypo.o $(bin)TrigEFHTHypo.o $(bin)TrigEFRazorAllTE.o) $(patsubst %.o,%.d.stamp,$(bin)TrigEFDPhiMetJetAllTE.o $(bin)TrigL2MultiJetHypo.o $(bin)TrigEFJetHypoNoise.o $(bin)TrigL2HTAllTE.o $(bin)TrigEFJetHypo.o $(bin)TrigL2DEtaMjjAllTE.o $(bin)TrigL2HTFullScanHypo.o $(bin)TrigEFJetMctHypo.o $(bin)TrigEFJetDphiHypo.o $(bin)TrigEFCentralJet.o $(bin)TrigDEtaHypoBase.o $(bin)TrigEFJetMassY.o $(bin)TrigDEtaFexBase.o $(bin)TrigL2CentralJetAllTE.o $(bin)TrigL2DijetCombo.o $(bin)TrigL2MultiJetAllTE.o $(bin)TrigL2JetHypoNoise.o $(bin)TrigL2DijetAllTE.o $(bin)TrigEFJetMassDEta.o $(bin)TrigL2JetHypo.o $(bin)TrigL2JetMctHypo.o $(bin)TrigL2JetDphiHypo.o $(bin)TrigEFHTHypo.o $(bin)TrigEFRazorAllTE.o)
	$(cleanup_silent) cd $(bin); /bin/rm -rf TrigJetHypoLib_deps TrigJetHypoLib_dependencies.make

#-----------------------------------------------------------------
#
#  New section for automatic installation
#
#-----------------------------------------------------------------

install_dir = ${CMTINSTALLAREA}/$(tag)/lib
TrigJetHypoLibinstallname = $(library_prefix)TrigJetHypoLib$(library_suffix).$(shlibsuffix)

TrigJetHypoLib :: TrigJetHypoLibinstall ;

install :: TrigJetHypoLibinstall ;

TrigJetHypoLibinstall :: $(install_dir)/$(TrigJetHypoLibinstallname)
ifdef CMTINSTALLAREA
	$(echo) "installation done"
endif

$(install_dir)/$(TrigJetHypoLibinstallname) :: $(bin)$(TrigJetHypoLibinstallname)
ifdef CMTINSTALLAREA
	$(install_silent) $(cmt_install_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(TrigJetHypoLibinstallname)" \
	    -out "$(install_dir)" \
	    -cmd "$(cmt_installarea_command)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

##TrigJetHypoLibclean :: TrigJetHypoLibuninstall

uninstall :: TrigJetHypoLibuninstall ;

TrigJetHypoLibuninstall ::
ifdef CMTINSTALLAREA
	$(cleanup_silent) $(cmt_uninstall_action) \
	    -source "`(cd $(bin); pwd)`" \
	    -name "$(TrigJetHypoLibinstallname)" \
	    -out "$(install_dir)" \
	    -cmtpath "$($(package)_cmtpath)"
endif

#-- end of library_no_static ------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFDPhiMetJetAllTE.d

$(bin)$(binobj)TrigEFDPhiMetJetAllTE.d :

$(bin)$(binobj)TrigEFDPhiMetJetAllTE.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFDPhiMetJetAllTE.o : $(src)TrigEFDPhiMetJetAllTE.cxx
	$(cpp_echo) $(src)TrigEFDPhiMetJetAllTE.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFDPhiMetJetAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFDPhiMetJetAllTE_cppflags) $(TrigEFDPhiMetJetAllTE_cxx_cppflags)  $(src)TrigEFDPhiMetJetAllTE.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFDPhiMetJetAllTE_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFDPhiMetJetAllTE.cxx

$(bin)$(binobj)TrigEFDPhiMetJetAllTE.o : $(TrigEFDPhiMetJetAllTE_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFDPhiMetJetAllTE.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFDPhiMetJetAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFDPhiMetJetAllTE_cppflags) $(TrigEFDPhiMetJetAllTE_cxx_cppflags)  $(src)TrigEFDPhiMetJetAllTE.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2MultiJetHypo.d

$(bin)$(binobj)TrigL2MultiJetHypo.d :

$(bin)$(binobj)TrigL2MultiJetHypo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2MultiJetHypo.o : $(src)TrigL2MultiJetHypo.cxx
	$(cpp_echo) $(src)TrigL2MultiJetHypo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2MultiJetHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2MultiJetHypo_cppflags) $(TrigL2MultiJetHypo_cxx_cppflags)  $(src)TrigL2MultiJetHypo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2MultiJetHypo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2MultiJetHypo.cxx

$(bin)$(binobj)TrigL2MultiJetHypo.o : $(TrigL2MultiJetHypo_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2MultiJetHypo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2MultiJetHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2MultiJetHypo_cppflags) $(TrigL2MultiJetHypo_cxx_cppflags)  $(src)TrigL2MultiJetHypo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFJetHypoNoise.d

$(bin)$(binobj)TrigEFJetHypoNoise.d :

$(bin)$(binobj)TrigEFJetHypoNoise.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFJetHypoNoise.o : $(src)TrigEFJetHypoNoise.cxx
	$(cpp_echo) $(src)TrigEFJetHypoNoise.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetHypoNoise_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetHypoNoise_cppflags) $(TrigEFJetHypoNoise_cxx_cppflags)  $(src)TrigEFJetHypoNoise.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFJetHypoNoise_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFJetHypoNoise.cxx

$(bin)$(binobj)TrigEFJetHypoNoise.o : $(TrigEFJetHypoNoise_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFJetHypoNoise.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetHypoNoise_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetHypoNoise_cppflags) $(TrigEFJetHypoNoise_cxx_cppflags)  $(src)TrigEFJetHypoNoise.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2HTAllTE.d

$(bin)$(binobj)TrigL2HTAllTE.d :

$(bin)$(binobj)TrigL2HTAllTE.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2HTAllTE.o : $(src)TrigL2HTAllTE.cxx
	$(cpp_echo) $(src)TrigL2HTAllTE.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2HTAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2HTAllTE_cppflags) $(TrigL2HTAllTE_cxx_cppflags)  $(src)TrigL2HTAllTE.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2HTAllTE_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2HTAllTE.cxx

$(bin)$(binobj)TrigL2HTAllTE.o : $(TrigL2HTAllTE_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2HTAllTE.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2HTAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2HTAllTE_cppflags) $(TrigL2HTAllTE_cxx_cppflags)  $(src)TrigL2HTAllTE.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFJetHypo.d

$(bin)$(binobj)TrigEFJetHypo.d :

$(bin)$(binobj)TrigEFJetHypo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFJetHypo.o : $(src)TrigEFJetHypo.cxx
	$(cpp_echo) $(src)TrigEFJetHypo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetHypo_cppflags) $(TrigEFJetHypo_cxx_cppflags)  $(src)TrigEFJetHypo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFJetHypo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFJetHypo.cxx

$(bin)$(binobj)TrigEFJetHypo.o : $(TrigEFJetHypo_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFJetHypo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetHypo_cppflags) $(TrigEFJetHypo_cxx_cppflags)  $(src)TrigEFJetHypo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2DEtaMjjAllTE.d

$(bin)$(binobj)TrigL2DEtaMjjAllTE.d :

$(bin)$(binobj)TrigL2DEtaMjjAllTE.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2DEtaMjjAllTE.o : $(src)TrigL2DEtaMjjAllTE.cxx
	$(cpp_echo) $(src)TrigL2DEtaMjjAllTE.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2DEtaMjjAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2DEtaMjjAllTE_cppflags) $(TrigL2DEtaMjjAllTE_cxx_cppflags)  $(src)TrigL2DEtaMjjAllTE.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2DEtaMjjAllTE_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2DEtaMjjAllTE.cxx

$(bin)$(binobj)TrigL2DEtaMjjAllTE.o : $(TrigL2DEtaMjjAllTE_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2DEtaMjjAllTE.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2DEtaMjjAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2DEtaMjjAllTE_cppflags) $(TrigL2DEtaMjjAllTE_cxx_cppflags)  $(src)TrigL2DEtaMjjAllTE.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2HTFullScanHypo.d

$(bin)$(binobj)TrigL2HTFullScanHypo.d :

$(bin)$(binobj)TrigL2HTFullScanHypo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2HTFullScanHypo.o : $(src)TrigL2HTFullScanHypo.cxx
	$(cpp_echo) $(src)TrigL2HTFullScanHypo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2HTFullScanHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2HTFullScanHypo_cppflags) $(TrigL2HTFullScanHypo_cxx_cppflags)  $(src)TrigL2HTFullScanHypo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2HTFullScanHypo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2HTFullScanHypo.cxx

$(bin)$(binobj)TrigL2HTFullScanHypo.o : $(TrigL2HTFullScanHypo_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2HTFullScanHypo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2HTFullScanHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2HTFullScanHypo_cppflags) $(TrigL2HTFullScanHypo_cxx_cppflags)  $(src)TrigL2HTFullScanHypo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFJetMctHypo.d

$(bin)$(binobj)TrigEFJetMctHypo.d :

$(bin)$(binobj)TrigEFJetMctHypo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFJetMctHypo.o : $(src)TrigEFJetMctHypo.cxx
	$(cpp_echo) $(src)TrigEFJetMctHypo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetMctHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetMctHypo_cppflags) $(TrigEFJetMctHypo_cxx_cppflags)  $(src)TrigEFJetMctHypo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFJetMctHypo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFJetMctHypo.cxx

$(bin)$(binobj)TrigEFJetMctHypo.o : $(TrigEFJetMctHypo_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFJetMctHypo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetMctHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetMctHypo_cppflags) $(TrigEFJetMctHypo_cxx_cppflags)  $(src)TrigEFJetMctHypo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFJetDphiHypo.d

$(bin)$(binobj)TrigEFJetDphiHypo.d :

$(bin)$(binobj)TrigEFJetDphiHypo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFJetDphiHypo.o : $(src)TrigEFJetDphiHypo.cxx
	$(cpp_echo) $(src)TrigEFJetDphiHypo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetDphiHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetDphiHypo_cppflags) $(TrigEFJetDphiHypo_cxx_cppflags)  $(src)TrigEFJetDphiHypo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFJetDphiHypo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFJetDphiHypo.cxx

$(bin)$(binobj)TrigEFJetDphiHypo.o : $(TrigEFJetDphiHypo_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFJetDphiHypo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetDphiHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetDphiHypo_cppflags) $(TrigEFJetDphiHypo_cxx_cppflags)  $(src)TrigEFJetDphiHypo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFCentralJet.d

$(bin)$(binobj)TrigEFCentralJet.d :

$(bin)$(binobj)TrigEFCentralJet.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFCentralJet.o : $(src)TrigEFCentralJet.cxx
	$(cpp_echo) $(src)TrigEFCentralJet.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFCentralJet_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFCentralJet_cppflags) $(TrigEFCentralJet_cxx_cppflags)  $(src)TrigEFCentralJet.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFCentralJet_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFCentralJet.cxx

$(bin)$(binobj)TrigEFCentralJet.o : $(TrigEFCentralJet_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFCentralJet.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFCentralJet_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFCentralJet_cppflags) $(TrigEFCentralJet_cxx_cppflags)  $(src)TrigEFCentralJet.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigDEtaHypoBase.d

$(bin)$(binobj)TrigDEtaHypoBase.d :

$(bin)$(binobj)TrigDEtaHypoBase.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigDEtaHypoBase.o : $(src)TrigDEtaHypoBase.cxx
	$(cpp_echo) $(src)TrigDEtaHypoBase.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigDEtaHypoBase_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigDEtaHypoBase_cppflags) $(TrigDEtaHypoBase_cxx_cppflags)  $(src)TrigDEtaHypoBase.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigDEtaHypoBase_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigDEtaHypoBase.cxx

$(bin)$(binobj)TrigDEtaHypoBase.o : $(TrigDEtaHypoBase_cxx_dependencies)
	$(cpp_echo) $(src)TrigDEtaHypoBase.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigDEtaHypoBase_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigDEtaHypoBase_cppflags) $(TrigDEtaHypoBase_cxx_cppflags)  $(src)TrigDEtaHypoBase.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFJetMassY.d

$(bin)$(binobj)TrigEFJetMassY.d :

$(bin)$(binobj)TrigEFJetMassY.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFJetMassY.o : $(src)TrigEFJetMassY.cxx
	$(cpp_echo) $(src)TrigEFJetMassY.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetMassY_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetMassY_cppflags) $(TrigEFJetMassY_cxx_cppflags)  $(src)TrigEFJetMassY.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFJetMassY_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFJetMassY.cxx

$(bin)$(binobj)TrigEFJetMassY.o : $(TrigEFJetMassY_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFJetMassY.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetMassY_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetMassY_cppflags) $(TrigEFJetMassY_cxx_cppflags)  $(src)TrigEFJetMassY.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigDEtaFexBase.d

$(bin)$(binobj)TrigDEtaFexBase.d :

$(bin)$(binobj)TrigDEtaFexBase.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigDEtaFexBase.o : $(src)TrigDEtaFexBase.cxx
	$(cpp_echo) $(src)TrigDEtaFexBase.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigDEtaFexBase_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigDEtaFexBase_cppflags) $(TrigDEtaFexBase_cxx_cppflags)  $(src)TrigDEtaFexBase.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigDEtaFexBase_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigDEtaFexBase.cxx

$(bin)$(binobj)TrigDEtaFexBase.o : $(TrigDEtaFexBase_cxx_dependencies)
	$(cpp_echo) $(src)TrigDEtaFexBase.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigDEtaFexBase_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigDEtaFexBase_cppflags) $(TrigDEtaFexBase_cxx_cppflags)  $(src)TrigDEtaFexBase.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2CentralJetAllTE.d

$(bin)$(binobj)TrigL2CentralJetAllTE.d :

$(bin)$(binobj)TrigL2CentralJetAllTE.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2CentralJetAllTE.o : $(src)TrigL2CentralJetAllTE.cxx
	$(cpp_echo) $(src)TrigL2CentralJetAllTE.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2CentralJetAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2CentralJetAllTE_cppflags) $(TrigL2CentralJetAllTE_cxx_cppflags)  $(src)TrigL2CentralJetAllTE.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2CentralJetAllTE_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2CentralJetAllTE.cxx

$(bin)$(binobj)TrigL2CentralJetAllTE.o : $(TrigL2CentralJetAllTE_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2CentralJetAllTE.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2CentralJetAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2CentralJetAllTE_cppflags) $(TrigL2CentralJetAllTE_cxx_cppflags)  $(src)TrigL2CentralJetAllTE.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2DijetCombo.d

$(bin)$(binobj)TrigL2DijetCombo.d :

$(bin)$(binobj)TrigL2DijetCombo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2DijetCombo.o : $(src)TrigL2DijetCombo.cxx
	$(cpp_echo) $(src)TrigL2DijetCombo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2DijetCombo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2DijetCombo_cppflags) $(TrigL2DijetCombo_cxx_cppflags)  $(src)TrigL2DijetCombo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2DijetCombo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2DijetCombo.cxx

$(bin)$(binobj)TrigL2DijetCombo.o : $(TrigL2DijetCombo_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2DijetCombo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2DijetCombo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2DijetCombo_cppflags) $(TrigL2DijetCombo_cxx_cppflags)  $(src)TrigL2DijetCombo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2MultiJetAllTE.d

$(bin)$(binobj)TrigL2MultiJetAllTE.d :

$(bin)$(binobj)TrigL2MultiJetAllTE.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2MultiJetAllTE.o : $(src)TrigL2MultiJetAllTE.cxx
	$(cpp_echo) $(src)TrigL2MultiJetAllTE.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2MultiJetAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2MultiJetAllTE_cppflags) $(TrigL2MultiJetAllTE_cxx_cppflags)  $(src)TrigL2MultiJetAllTE.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2MultiJetAllTE_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2MultiJetAllTE.cxx

$(bin)$(binobj)TrigL2MultiJetAllTE.o : $(TrigL2MultiJetAllTE_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2MultiJetAllTE.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2MultiJetAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2MultiJetAllTE_cppflags) $(TrigL2MultiJetAllTE_cxx_cppflags)  $(src)TrigL2MultiJetAllTE.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2JetHypoNoise.d

$(bin)$(binobj)TrigL2JetHypoNoise.d :

$(bin)$(binobj)TrigL2JetHypoNoise.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2JetHypoNoise.o : $(src)TrigL2JetHypoNoise.cxx
	$(cpp_echo) $(src)TrigL2JetHypoNoise.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2JetHypoNoise_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2JetHypoNoise_cppflags) $(TrigL2JetHypoNoise_cxx_cppflags)  $(src)TrigL2JetHypoNoise.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2JetHypoNoise_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2JetHypoNoise.cxx

$(bin)$(binobj)TrigL2JetHypoNoise.o : $(TrigL2JetHypoNoise_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2JetHypoNoise.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2JetHypoNoise_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2JetHypoNoise_cppflags) $(TrigL2JetHypoNoise_cxx_cppflags)  $(src)TrigL2JetHypoNoise.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2DijetAllTE.d

$(bin)$(binobj)TrigL2DijetAllTE.d :

$(bin)$(binobj)TrigL2DijetAllTE.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2DijetAllTE.o : $(src)TrigL2DijetAllTE.cxx
	$(cpp_echo) $(src)TrigL2DijetAllTE.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2DijetAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2DijetAllTE_cppflags) $(TrigL2DijetAllTE_cxx_cppflags)  $(src)TrigL2DijetAllTE.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2DijetAllTE_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2DijetAllTE.cxx

$(bin)$(binobj)TrigL2DijetAllTE.o : $(TrigL2DijetAllTE_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2DijetAllTE.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2DijetAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2DijetAllTE_cppflags) $(TrigL2DijetAllTE_cxx_cppflags)  $(src)TrigL2DijetAllTE.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFJetMassDEta.d

$(bin)$(binobj)TrigEFJetMassDEta.d :

$(bin)$(binobj)TrigEFJetMassDEta.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFJetMassDEta.o : $(src)TrigEFJetMassDEta.cxx
	$(cpp_echo) $(src)TrigEFJetMassDEta.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetMassDEta_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetMassDEta_cppflags) $(TrigEFJetMassDEta_cxx_cppflags)  $(src)TrigEFJetMassDEta.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFJetMassDEta_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFJetMassDEta.cxx

$(bin)$(binobj)TrigEFJetMassDEta.o : $(TrigEFJetMassDEta_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFJetMassDEta.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFJetMassDEta_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFJetMassDEta_cppflags) $(TrigEFJetMassDEta_cxx_cppflags)  $(src)TrigEFJetMassDEta.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2JetHypo.d

$(bin)$(binobj)TrigL2JetHypo.d :

$(bin)$(binobj)TrigL2JetHypo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2JetHypo.o : $(src)TrigL2JetHypo.cxx
	$(cpp_echo) $(src)TrigL2JetHypo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2JetHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2JetHypo_cppflags) $(TrigL2JetHypo_cxx_cppflags)  $(src)TrigL2JetHypo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2JetHypo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2JetHypo.cxx

$(bin)$(binobj)TrigL2JetHypo.o : $(TrigL2JetHypo_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2JetHypo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2JetHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2JetHypo_cppflags) $(TrigL2JetHypo_cxx_cppflags)  $(src)TrigL2JetHypo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2JetMctHypo.d

$(bin)$(binobj)TrigL2JetMctHypo.d :

$(bin)$(binobj)TrigL2JetMctHypo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2JetMctHypo.o : $(src)TrigL2JetMctHypo.cxx
	$(cpp_echo) $(src)TrigL2JetMctHypo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2JetMctHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2JetMctHypo_cppflags) $(TrigL2JetMctHypo_cxx_cppflags)  $(src)TrigL2JetMctHypo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2JetMctHypo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2JetMctHypo.cxx

$(bin)$(binobj)TrigL2JetMctHypo.o : $(TrigL2JetMctHypo_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2JetMctHypo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2JetMctHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2JetMctHypo_cppflags) $(TrigL2JetMctHypo_cxx_cppflags)  $(src)TrigL2JetMctHypo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigL2JetDphiHypo.d

$(bin)$(binobj)TrigL2JetDphiHypo.d :

$(bin)$(binobj)TrigL2JetDphiHypo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigL2JetDphiHypo.o : $(src)TrigL2JetDphiHypo.cxx
	$(cpp_echo) $(src)TrigL2JetDphiHypo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2JetDphiHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2JetDphiHypo_cppflags) $(TrigL2JetDphiHypo_cxx_cppflags)  $(src)TrigL2JetDphiHypo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigL2JetDphiHypo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigL2JetDphiHypo.cxx

$(bin)$(binobj)TrigL2JetDphiHypo.o : $(TrigL2JetDphiHypo_cxx_dependencies)
	$(cpp_echo) $(src)TrigL2JetDphiHypo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigL2JetDphiHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigL2JetDphiHypo_cppflags) $(TrigL2JetDphiHypo_cxx_cppflags)  $(src)TrigL2JetDphiHypo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFHTHypo.d

$(bin)$(binobj)TrigEFHTHypo.d :

$(bin)$(binobj)TrigEFHTHypo.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFHTHypo.o : $(src)TrigEFHTHypo.cxx
	$(cpp_echo) $(src)TrigEFHTHypo.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFHTHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFHTHypo_cppflags) $(TrigEFHTHypo_cxx_cppflags)  $(src)TrigEFHTHypo.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFHTHypo_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFHTHypo.cxx

$(bin)$(binobj)TrigEFHTHypo.o : $(TrigEFHTHypo_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFHTHypo.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFHTHypo_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFHTHypo_cppflags) $(TrigEFHTHypo_cxx_cppflags)  $(src)TrigEFHTHypo.cxx

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (-MMD -MP -MF $*.d -MQ $@,)

ifneq ($(MAKECMDGOALS),TrigJetHypoLibclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)TrigEFRazorAllTE.d

$(bin)$(binobj)TrigEFRazorAllTE.d :

$(bin)$(binobj)TrigEFRazorAllTE.o : $(cmt_final_setup_TrigJetHypoLib)

$(bin)$(binobj)TrigEFRazorAllTE.o : $(src)TrigEFRazorAllTE.cxx
	$(cpp_echo) $(src)TrigEFRazorAllTE.cxx
	$(cpp_silent) $(cppcomp) -MMD -MP -MF $*.d -MQ $@ -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFRazorAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFRazorAllTE_cppflags) $(TrigEFRazorAllTE_cxx_cppflags)  $(src)TrigEFRazorAllTE.cxx
endif
endif

else
$(bin)TrigJetHypoLib_dependencies.make : $(TrigEFRazorAllTE_cxx_dependencies)

$(bin)TrigJetHypoLib_dependencies.make : $(src)TrigEFRazorAllTE.cxx

$(bin)$(binobj)TrigEFRazorAllTE.o : $(TrigEFRazorAllTE_cxx_dependencies)
	$(cpp_echo) $(src)TrigEFRazorAllTE.cxx
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(TrigJetHypoLib_pp_cppflags) $(lib_TrigJetHypoLib_pp_cppflags) $(TrigEFRazorAllTE_pp_cppflags) $(use_cppflags) $(TrigJetHypoLib_cppflags) $(lib_TrigJetHypoLib_cppflags) $(TrigEFRazorAllTE_cppflags) $(TrigEFRazorAllTE_cxx_cppflags)  $(src)TrigEFRazorAllTE.cxx

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: TrigJetHypoLibclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(TrigJetHypoLib.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

TrigJetHypoLibclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library TrigJetHypoLib
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)TrigJetHypoLib$(library_suffix).a $(library_prefix)TrigJetHypoLib$(library_suffix).$(shlibsuffix) TrigJetHypoLib.stamp TrigJetHypoLib.shstamp
#-- end of cleanup_library ---------------
