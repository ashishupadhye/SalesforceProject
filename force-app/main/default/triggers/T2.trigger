trigger T2 on Candidate_ashish__c (before insert)
{
    for(Candidate_ashish__c cc:Trigger.New)
    {
     cc.Application_Date__c=System.today()+1;   
    }
}