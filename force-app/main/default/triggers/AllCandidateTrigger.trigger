trigger AllCandidateTrigger on Candidate_ashish__c (before insert,after insert,after update)
{
    if(trigger.isbefore && trigger.isinsert)
    {
      AllCandidateTrigger.beforeinsert(Trigger.New);
      AllCandidateTrigger.beforeinsertDate(Trigger.New);
      AllCandidateTrigger.beforeinsertT1B(Trigger.New);
    }
    
    if(Trigger.isAfter )
    {
       if(Trigger.isUpdate)
       {
          AllCandidateTrigger.candidateHiredPdf(Trigger.new);
       }
        else
        {
              AllCandidateTrigger.candidateHiredPdf(Trigger.new);
        }
    }

}