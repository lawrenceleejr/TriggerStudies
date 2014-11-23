# echo "setup TrigHLTJetHemisphereRec TrigHLTJetHemisphereRec-r611470 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/cern.ch/sw/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTrigHLTJetHemisphereRectempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtTrigHLTJetHemisphereRectempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt setup -sh -pack=TrigHLTJetHemisphereRec -version=TrigHLTJetHemisphereRec-r611470 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms  -no_cleanup $* >${cmtTrigHLTJetHemisphereRectempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt setup -sh -pack=TrigHLTJetHemisphereRec -version=TrigHLTJetHemisphereRec-r611470 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms  -no_cleanup $* >${cmtTrigHLTJetHemisphereRectempfile}"
  cmtsetupstatus=2
  /bin/rm -f ${cmtTrigHLTJetHemisphereRectempfile}
  unset cmtTrigHLTJetHemisphereRectempfile
  return $cmtsetupstatus
fi
cmtsetupstatus=0
. ${cmtTrigHLTJetHemisphereRectempfile}
if test $? != 0 ; then
  cmtsetupstatus=2
fi
/bin/rm -f ${cmtTrigHLTJetHemisphereRectempfile}
unset cmtTrigHLTJetHemisphereRectempfile
return $cmtsetupstatus

