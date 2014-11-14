from collections import Counter
from copy import deepcopy
from AthenaCommon.Logging import logging
log = logging.getLogger( 'TriggerMenu.menu.MenuUtils' )


def splitInterSignatureChainDict(chainDict):
    listOfSplitChainDicts = []
    for chainPart in chainDict['chainParts']:
        thisSignature = chainPart['signature']
        chainPartAdded = False
        for splitChainDict in listOfSplitChainDicts:
            if thisSignature == splitChainDict['chainParts'][0]['signature']:
                splitChainDict['chainParts'] += [chainPart]
                chainPartAdded = True
                break
        if not chainPartAdded:
            newSplitChainDict = deepcopy(chainDict)
            newSplitChainDict['chainParts'] = [chainPart]
            newSplitChainDict['signature'] = chainPart['signature']
            listOfSplitChainDicts += [newSplitChainDict]
        
    #oder the splitted dicts
    orderedListOfSplitChainDicts = []
    if not chainDict.has_key("mergingOrder"):
        log.debug("No merging order given for chain %s." % (chainDict['chainName']))
    elif chainDict["mergingOrder"] == []:
        log.info("No merging order given for chain %s." % (chainDict['chainName']))
    else:
        for chainPartName in chainDict["mergingOrder"]:
            for splitChainDict in listOfSplitChainDicts:
                if splitChainDict['chainParts'][0]['chainPartName'] == chainPartName:
                    orderedListOfSplitChainDicts += [splitChainDict]
            
        if not len(orderedListOfSplitChainDicts) == len(listOfSplitChainDicts):
            log.error("Ordering of split chain dicts failed. Please check that orderedListOfSplitChainDicts and listOfSplitChainDicts contain the same elements!!")
      
        return orderedListOfSplitChainDicts

    return listOfSplitChainDicts


def splitChainDict(chainDict):
    listOfChainDicts = []
    for chainPart in chainDict['chainParts']:
        newChainDict = deepcopy(chainDict)
        newChainDict['chainParts'] = chainPart
        listOfChainDicts += [newChainDict]
    return listOfChainDicts


def _addSequence(chainDef,sequenceToAdd):
    """
    Check if sequence is already in chainDef, if not add it
    """
    for chainDefSequence in chainDef.sequenceList:
        if chainDefSequence['output'] == sequenceToAdd['output']:
            return chainDef
    chainDef.sequenceList += [sequenceToAdd]
    return chainDef        


def _getSigList(chainDef,sigType="HLT"):
    """
    Little helper function to get the list of signatures associated to a trigger level (L2/EF/HLT)
    """
    sigList = []
    for signature in chainDef.signatureList:
        if signature['listOfTriggerElements'][0][0:len(sigType)] == sigType:
            sigList += [signature]
    return sigList


def _replicateMissingSignatures(listOfChainDefs,unevenSigs,level):
    """
    Loops over the listOfChainDefs, and fills up those ChainDefs that have a shorter signature list at a given level than the largest one with dummy signatures
    """

    for chainDef in listOfChainDefs:

        # if this is already the chainDef with the longest signatureList nothing has to be done
        if len(_getSigList(chainDef,level)) == max(unevenSigs):
            continue
        else:
            maxSignatureCounter = -1
            numberOfSignatures = 0      
            maxSignatureIndex = -1
            for signatureIndex,signature in enumerate(chainDef.signatureList):
                if signature['listOfTriggerElements'][0][0:len(level)] == level:
                    maxSignatureCounter = max(maxSignatureCounter,signature['signature_counter'])
                    numberOfSignatures += 1
                    maxSignatureIndex = signatureIndex
                    
            if maxSignatureIndex == -1:
                log.error('maxSignatureIndex has not been set. Maybe there is no sequence at this level? CHECK IN CODE - fix in work. ')
                
            listOfLastTEs = chainDef.signatureList[maxSignatureIndex]['listOfTriggerElements']   

            for i in range(maxSignatureCounter+1, maxSignatureCounter+1+max(unevenSigs)-numberOfSignatures):  
                if level in ["EF","HLT"]:
                    chainDef.signatureList += deepcopy([{'signature_counter': i, 'listOfTriggerElements': listOfLastTEs}])
                elif level == "L2":
                    chainDef.addSignatureL2(deepcopy(listOfLastTEs))
                log.info("Added %s signature with TEs %s to ChainDef of chain %s in preparation for parallel merging." % (level,str(listOfLastTEs),chainDef.chain_name))
                log.debug("ChainDef with replicated signatures at %s: %s" % (str(level),str(chainDef)))
                



def mergeChainDefs(listOfChainDefs,strategy="parallel",offset=-1,preserveL2EFOrder=True,removeDuplicateTEs=False):

    log.info("Combine using %s  merging" %(strategy))

    if strategy=="parallel":
        return _mergeChainDefsParallel(listOfChainDefs,offset,removeDuplicateTEs)
    elif strategy=="serial":
        return _mergeChainDefsSerial(listOfChainDefs,offset)
    else:
        log.error("Merging failed for chain %s. Merging strategy '%s' not known." % (level, chainDef.chain_name))
        return -1





def _mergeChainDefsSerial(listOfChainDefs,offset,preserveL2EFOrder=True):

    """
    serial merging of chain def objects for combined chains
    """
    
    listOfChainDefs = deepcopy(listOfChainDefs) 

    # copy the chaindef into which we want to merge the other chaindefs
    mergedChainDef = deepcopy(listOfChainDefs[0])
    

    #remove the first chaindef from the list
    listOfChainDefs.pop(0)
    
    # Loop remaining chain defs to be merged

    
    for chainDef in listOfChainDefs:  
        for sequence in chainDef.sequenceList:
            mergedChainDef = _addSequence(mergedChainDef,sequence)

        for signatureIdx,signature in enumerate(chainDef.signatureList):
            if preserveL2EFOrder:
                if not offset == -1:
                    log.error("L2/EF preserving serial merging with offset not yet implemented.")
                else:
                    if signature['listOfTriggerElements'][0].startswith("L2"):
                        mergedChainDef.addSignatureL2(signature['listOfTriggerElements'])
                    elif signature['listOfTriggerElements'][0].startswith("EF") or signature['listOfTriggerElements'][0].startswith("HLT"):
                        mergedChainDef.appendSignature(signature['listOfTriggerElements'])
                    else:
                        log.error("Unknown TE naming :",str(signature['listOfTriggerElements'][0]))
            else:
                if offset ==-1:
                    mergedChainDef.appendSignature(signature['listOfTriggerElements'])
                else:
                    if offset+signatureIdx > len(mergedChainDef.signatureList):
                        mergedChainDef.signatureList[offset+signatureIdx]['listOfTriggerElements'] += signature['listOfTriggerElements']
                    else:
                        mergedChainDef.appendSignature(signature['listOfTriggerElements'])


    return mergedChainDef
        


def _mergeChainDefsParallel(listOfChainDefs,offset=-1,removeDuplicateTEs=False):

    """
    merge chain def objects for combined chains
    the order of signatures corresponds to the signature counters in the constituent chainDefs
    """

    listOfChainDefs = deepcopy(listOfChainDefs) 

    for chainDef in listOfChainDefs:
        log.debug("List of ChainDefs to be merged %s " % str(chainDef))
        
    newSequenceList = []

    if offset!=-1:
        log.warning("Parallel merging with offset has been tested only for EF-only chains. If you're doing something different, check it works ok!!")
    
    # check length of signature list in each chain def
    # if not even, take measures as the sig of the short chain
    # needs to be propagated to the end

    nL2sigs = []
    nEFsigs = []
    nHLTsigs = []

    for cD in listOfChainDefs:
        
        nL2sigs += [len(_getSigList(cD,"L2"))]
        nEFsigs += [len(_getSigList(cD,"EF"))]
        nHLTsigs += [len(_getSigList(cD,"HLT"))]

        ##Hardocode that the offset is only applied to the second chain in the list
        if cD==listOfChainDefs[1] and offset!=-1:
            nL2sigs[-1] = nL2sigs[-1]+offset if nL2sigs[-1]!=0 else nL2sigs[-1]
            nEFsigs[-1] = nEFsigs[-1]+offset if nEFsigs[-1]!=0 else nEFsigs[-1]
            nHLTsigs[-1]= nHLTsigs[-1]+offset if nHLTsigs[-1]!=0 else nHLTsigs[-1]

    countsL2 = Counter(nL2sigs)
    unevenL2Sigs = [val for val, count in countsL2.items() if count <= 1]
    countsEF = Counter(nEFsigs)
    unevenEFSigs = [val for val, count in countsEF.items() if count <= 1]
    countsHLT = Counter(nHLTsigs)
    unevenHLTSigs = [val for val, count in countsHLT.items() if count <= 1]

    log.debug("nL2sigs " + str(nL2sigs))
    log.debug("countsL2 " + str(countsL2))
    log.debug("unevenL1Sigs " + str(unevenL2Sigs))
    log.debug("nEFsigs " + str(nEFsigs))
    log.debug("countsEF " + str(countsEF))
    log.debug("unevenEFSigs " + str(unevenEFSigs))
    log.debug("nHLTsigs " + str(nHLTsigs))
    log.debug("countsHLT " + str(countsHLT))
    log.debug("unevenHLTSigs " + str(unevenHLTSigs))

    nL2sigs = []
    nEFsigs = []
    nHLTsigs = []

    if unevenL2Sigs:
        _replicateMissingSignatures(listOfChainDefs,unevenL2Sigs,"L2")
    if unevenEFSigs:
        _replicateMissingSignatures(listOfChainDefs,unevenEFSigs,"EF")
    if unevenHLTSigs:
        _replicateMissingSignatures(listOfChainDefs,unevenHLTSigs,"HLT")

    # Now check if the replication of missing signatures worked and all chains have same length signature list

    for cD in listOfChainDefs:
        nL2sigs += [len(_getSigList(cD,"L2"))]
        nEFsigs += [len(_getSigList(cD,"EF"))]
        nHLTsigs += [len(_getSigList(cD,"HLT"))]

        if cD==listOfChainDefs[1] and offset!=-1:
            #print "Second Chain ",cD.chain_name, _getSigList(cD,"EF")
            nL2sigs[-1] = nL2sigs[-1]+offset if nL2sigs[-1]!=0 else nL2sigs[-1]
            nEFsigs[-1] = nEFsigs[-1]+offset if nEFsigs[-1]!=0 else nEFsigs[-1]
            nHLTsigs[-1]= nHLTsigs[-1]+offset if nHLTsigs[-1]!=0 else nHLTsigs[-1]

    countsL2 = Counter(nL2sigs)
    unevenL2Sigs = [val for val, count in countsL2.items() if count <= 1]
    countsEF = Counter(nEFsigs)
    unevenEFSigs = [val for val, count in countsEF.items() if count <= 1]
    countsHLT = Counter(nHLTsigs)
    unevenHLTSigs = [val for val, count in countsHLT.items() if count <= 1]
    

    if unevenL2Sigs or unevenEFSigs or unevenHLTSigs:
        log.error("Replication of trigger elements failed. There is still an uneven number of signatures in the ChainDefs of this combined chain.")


    # Loop over all chain defs to be merged


    
    mergedChainDef = listOfChainDefs[0]
    listOfChainDefs.pop(0)

    log.debug("mergedChainDef prior to merging:"+str(mergedChainDef))


    for chainDef in listOfChainDefs:
        for sequence in chainDef.sequenceList:
            mergedChainDef = _addSequence(mergedChainDef,sequence)

        for chainDefSignature in chainDef.signatureList:
            for mergedChainDefSignature in mergedChainDef.signatureList: 
                if int(chainDefSignature['signature_counter']) == int(mergedChainDefSignature['signature_counter']):
                    log.debug("mergedChainDef signatureList before a step:"+str(mergedChainDef.signatureList))
                    mergedChainDefSignature['listOfTriggerElements'] += chainDefSignature['listOfTriggerElements']
                    log.debug("mergedChainDef signatureList after a step:"+str(mergedChainDef.signatureList))



    if removeDuplicateTEs:
        for signature in mergedChainDef.signatureList:
            signature['listOfTriggerElements'] = list(set(signature['listOfTriggerElements']))

        
    return mergedChainDef
        
