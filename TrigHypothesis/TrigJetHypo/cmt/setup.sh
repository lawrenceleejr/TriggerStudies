# echo "setup TrigJetHypo TrigJetHypo-03-00-07 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/cern.ch/sw/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTrigJetHypotempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtTrigJetHypotempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt setup -sh -pack=TrigJetHypo -version=TrigJetHypo-03-00-07 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis  -no_cleanup $* >${cmtTrigJetHypotempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt setup -sh -pack=TrigJetHypo -version=TrigJetHypo-03-00-07 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigHypothesis  -no_cleanup $* >${cmtTrigJetHypotempfile}"
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

