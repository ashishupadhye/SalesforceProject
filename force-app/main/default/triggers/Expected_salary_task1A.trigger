trigger Expected_salary_task1A on Candidate_ashish__c (before insert)
{

 Candidate_ashish__c aa=trigger.new[0];

  if(aa.Expected_salary_demo__c==NULL)
  {
     Trigger.new[0].addError('Expected Salary field is missing');
  }
}