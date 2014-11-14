# echo "cleanup TrigJetHypo TrigJetHypo-03-00-07 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/cern.ch/sw/contrib/CMT/v1r25p20140131; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTrigJetHypotempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if test ! $? = 0 ; then cmtTrigJetHypotempfile=/tmp/cmt.$$; fi
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=TrigJetHypo -version=TrigJetHypo-03-00-07 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis  -quiet -without_version_directory $* >${cmtTrigJetHypotempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -sh -pack=TrigJetHypo -version=TrigJetHypo-03-00-07 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis  -quiet -without_version_directory $* >${cmtTrigJetHypotempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtTrigJetHypotempfile}
  unset cmtTrigJetHypotempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtTrigJetHypotempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtTrigJetHypotempfile}
unset cmtTrigJetHypotempfile
return $cmtcleanupstatus

