# echo "cleanup TrigHLTJetHemisphereRec TrigHLTJetHemisphereRec-r611470 in /afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/cern.ch/sw/contrib/CMT/v1r25p20140131
endif
source ${CMTROOT}/mgr/setup.csh
set cmtTrigHLTJetHemisphereRectempfile=`${CMTROOT}/${CMTBIN}/cmt.exe -quiet build temporary_name`
if $status != 0 then
  set cmtTrigHLTJetHemisphereRectempfile=/tmp/cmt.$$
endif
${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=TrigHLTJetHemisphereRec -version=TrigHLTJetHemisphereRec-r611470 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms  $* >${cmtTrigHLTJetHemisphereRectempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/${CMTBIN}/cmt.exe cleanup -csh -pack=TrigHLTJetHemisphereRec -version=TrigHLTJetHemisphereRec-r611470 -path=/afs/cern.ch/user/l/leejr/work/NightlyTest/Trigger/TrigAlgorithms  $* >${cmtTrigHLTJetHemisphereRectempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtTrigHLTJetHemisphereRectempfile}
  unset cmtTrigHLTJetHemisphereRectempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtTrigHLTJetHemisphereRectempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtTrigHLTJetHemisphereRectempfile}
unset cmtTrigHLTJetHemisphereRectempfile
exit $cmtcleanupstatus

