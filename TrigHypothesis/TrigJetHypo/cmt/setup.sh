# echo "setup TrigJetHypo TrigJetHypo-03-00-07 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/cern.ch/sw/contrib/CMT/v1r25p20140131; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTrigJetHypotempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtTrigJetHypotempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=TrigJetHypo -version=TrigJetHypo-03-00-07 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis  -quiet -without_version_directory -no_cleanup $* >${cmtTrigJetHypotempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe setup -sh -pack=TrigJetHypo -version=TrigJetHypo-03-00-07 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis  -quiet -without_version_directory -no_cleanup $* >${cmtTrigJetHypotempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtTrigJetHypotempfile}
  unset cmtTrigJetHypotempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtTrigJetHypotempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtTrigJetHypotempfile}
unset cmtTrigJetHypotempfile
return $cmtsetupstatus

