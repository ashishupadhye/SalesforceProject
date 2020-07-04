trigger t4 on Job_ashish__c (after insert, after update) 
{
   List<Job_ashish__c> jobList = New List<Job_ashish__c>();
   
       for(Job_ashish__c j:[Select Hired_Applicants__c,Number_of_Positions__c, Active__c From Job_ashish__c Where Active__c=true])
       {
           if(j.Hired_Applicants__c==j.Number_of_Positions__c)
           { 
                j.Active__c = false;
                jobList.add(j);     
           }
       }
   
   if(jobList.size()>0)
   update jobList;
}