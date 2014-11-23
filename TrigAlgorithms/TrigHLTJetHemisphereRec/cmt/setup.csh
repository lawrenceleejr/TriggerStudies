# echo "setup TrigHLTJetHemisphereRec TrigHLTJetHemisphereRec-r611470 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/cern.ch/sw/contrib/CMT/v1r25
endif
source ${CMTROOT}/mgr/setup.csh
set cmtTrigHLTJetHemisphereRectempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtTrigHLTJetHemisphereRectempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt setup -csh -pack=TrigHLTJetHemisphereRec -version=TrigHLTJetHemisphereRec-r611470 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms  -no_cleanup $* >${cmtTrigHLTJetHemisphereRectempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt setup -csh -pack=TrigHLTJetHemisphereRec -version=TrigHLTJetHemisphereRec-r611470 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms  -no_cleanup $* >${cmtTrigHLTJetHemisphereRectempfile}"
  set cmtsetupstatus=2
  /bin/rm -f ${cmtTrigHLTJetHemisphereRectempfile}
  unset cmtTrigHLTJetHemisphereRectempfile
  exit $cmtsetupstatus
endif
set cmtsetupstatus=0
source ${cmtTrigHLTJetHemisphereRectempfile}
if ( $status != 0 ) then
  set cmtsetupstatus=2
endif
/bin/rm -f ${cmtTrigHLTJetHemisphereRectempfile}
unset cmtTrigHLTJetHemisphereRectempfile
exit $cmtsetupstatus

