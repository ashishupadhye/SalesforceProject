public class Job_all_trigger
{
    
    public static void beforeDelete(list<Job_ashish__c> jobList)
    {
        for(Job_ashish__c jobObject:jobList)
    	{
        	if(jobObject.Active__c==true)
        	{
           	 jobObject.addError('This Job is active and can not be deleted');
        	}
    }
}
    
    public static void afterInsertUpdate()
    {
        List<Job_ashish__c> jobList = New List<Job_ashish__c>();
   
       for(Job_ashish__c jobSelect:[Select Hired_Applicants__c,Number_of_Positions__c, Active__c From Job_ashish__c Where Active__c=true])
       {
           if(jobSelect.Hired_Applicants__c==jobSelect.Number_of_Positions__c)
           { 
                jobSelect.Active__c = false;
                jobList.add(jobSelect);     
           }
       }
   
   		if(jobList.size()>0)
  		 update jobList;
    }
    
    public static void afterInsertAfterUpdate(list<Job_ashish__c> jobList)
    {
       for( Job_ashish__c jobObject:jobList)
       {
          DateTime modedate=jobObject.LastModifiedDate;
          
          if(jobObject.Number_of_Positions__c==jobObject.Hired_Applicants__c)
          {
              EmailManagerNew.sendMail('upadhyeashu61195@gmail.com','No job position left','All required candidate has been hired for this job '+modedate+'.');
          }
       }
    }

    
     public static void afterUpdate()
     {
         List<Job_ashish__c> jobList= new List<Job_ashish__c>();
    
            for(Job_ashish__c jobSelect:[SELECT Number_of_Positions__c,Hired_Applicants__c,Active__c FROM Job_ashish__c WHERE Active__c!=true])
            {
                if(jobSelect.Hired_Applicants__c < jobSelect.Number_of_Positions__c)
                {
                    jobSelect.Active__c =true;
                    jobList.add(jobSelect);
                }
            }
            if(jobList.size()>0)
           {update jobList;} 
     }
    
   
}