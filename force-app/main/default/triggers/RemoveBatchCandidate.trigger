trigger RemoveBatchCandidate on Candidate_ashish__c (after insert,after update)
{
    List<Candidate_ashish__c > candidateList=[SELECT Name,id FROM Candidate_ashish__c WHERE Name like '%ApexBatch%'];
    
    List<Candidate_ashish__c > candidateListNew = new List<Candidate_ashish__c >();
    
    for(Candidate_ashish__c  candidate : candidateList)
    {
        
        String removeT = candidate.Name.replace('ApexBatch','');
        
        if(!removeT.contains('ApexBatch'))   
        {
            candidate.Name = removeT;
            candidateListNew.add(candidate);
        }
        
    }
    update candidateListNew;
    
    
}