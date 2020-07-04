trigger t5 on Job_ashish__c (after insert,after update) 
{

  Job_ashish__c aa=Trigger.New[0];
  
  DateTime modedate=aa.LastModifiedDate;
  
  if(aa.Number_of_Positions__c==aa.Hired_Applicants__c)
  {
      EmailManagerNew.sendMail('upadhyeashu61195@gmail.com','No job position left','All required candidate has been hired for this job '+modedate+'.');
  }


}