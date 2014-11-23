# echo "cleanup TrigHLTJetHemisphereRec TrigHLTJetHemisphereRec-r611470 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms"

if test "${CMTROOT}" = ""; then
  CMTROOT=/afs/cern.ch/sw/contrib/CMT/v1r25; export CMTROOT
fi
. ${CMTROOT}/mgr/setup.sh
cmtTrigHLTJetHemisphereRectempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if test ! $? = 0 ; then cmtTrigHLTJetHemisphereRectempfile=/tmp/cmt.$$; fi
${CMTROOT}/mgr/cmt cleanup -sh -pack=TrigHLTJetHemisphereRec -version=TrigHLTJetHemisphereRec-r611470 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms  $* >${cmtTrigHLTJetHemisphereRectempfile}
if test $? != 0 ; then
  echo >&2 "${CMTROOT}/mgr/cmt cleanup -sh -pack=TrigHLTJetHemisphereRec -version=TrigHLTJetHemisphereRec-r611470 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms  $* >${cmtTrigHLTJetHemisphereRectempfile}"
  cmtcleanupstatus=2
  /bin/rm -f ${cmtTrigHLTJetHemisphereRectempfile}
  unset cmtTrigHLTJetHemisphereRectempfile
  return $cmtcleanupstatus
fi
cmtcleanupstatus=0
. ${cmtTrigHLTJetHemisphereRectempfile}
if test $? != 0 ; then
  cmtcleanupstatus=2
fi
/bin/rm -f ${cmtTrigHLTJetHemisphereRectempfile}
unset cmtTrigHLTJetHemisphereRectempfile
return $cmtcleanupstatus

