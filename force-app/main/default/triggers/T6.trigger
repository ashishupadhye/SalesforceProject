trigger T6 on Job_ashish__c (after update) 
{
    List<Job_ashish__c> joblist= new List<Job_ashish__c>();
    
    for(Job_ashish__c job:[SELECT Number_of_Positions__c,Hired_Applicants__c,Active__c FROM Job_ashish__c WHERE Active__c!=true])
    {
        if(job.Hired_Applicants__c < job.Number_of_Positions__c)
        {
            job.Active__c =true;
            joblist.add(job);
        }
    }
    if(joblist.size()>0)
   {update joblist;} 
    
   
    
}