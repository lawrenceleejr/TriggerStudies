# echo "setup TrigJetHypo TrigJetHypo-03-00-07 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/cern.ch/sw/contrib/CMT/v1r25p20140131
endif
source ${CMTROOT}/mgr/setup.csh
set cmtTrigJetHypotempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtTrigJetHypotempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=TrigJetHypo -version=TrigJetHypo-03-00-07 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis  -quiet -without_version_directory -no_cleanup $* >${cmtTrigJetHypotempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe setup -csh -pack=TrigJetHypo -version=TrigJetHypo-03-00-07 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis  -quiet -without_version_directory -no_cleanup $* >${cmtTrigJetHypotempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtTrigJetHypotempfile}
  unset cmtTrigJetHypotempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtTrigJetHypotempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtTrigJetHypotempfile}
unset cmtTrigJetHypotempfile
exit $cmtsetupstatus

