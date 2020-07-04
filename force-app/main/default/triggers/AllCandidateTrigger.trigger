trigger AllCandidateTrigger on Candidate_ashish__c (before insert)
{
    if(trigger.isbefore && trigger.isinsert)
    {
      AllCandidateTrigger.beforeinsert(Trigger.New);
      AllCandidateTrigger.beforeinsertDate(Trigger.New);
      AllCandidateTrigger.beforeinsertT1B(Trigger.New);
    }

}