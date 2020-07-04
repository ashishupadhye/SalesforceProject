@isTest
public class Job_Test_Apex
{
    @isTest
    public static void insert_Job()
    {
        Job_ashish__c job=new Job_ashish__c();
        
        job.Number_of_Positions__c=5;
        job.Job_Types__c='Manager';
        job.Required_Skills__c='Team Player';
        job.Networking_Linux__c='Bcom';
        job.Certification_Required__c='MPM (Master Project Manager)';
        job.Active__c=true;
        job.Manager__c='0032x000005rHm4AAE';
        
        test.startTest();
        insert job;
        
          
                                job.Number_of_Positions__c=10;
                                update job;
        						
                                test.stopTest();
        
        List<Job_ashish__c> joblst=[select 	Job_Name__c from Job_ashish__c where Manager__c=:'0032x000005rHm4AAE'];
        system.assertEquals(1, joblst.size());
    }
    
    
    @isTest
    public static void delete_Job()
    {
        Job_ashish__c job=new Job_ashish__c();
        
        job.Number_of_Positions__c=5;
        job.Job_Types__c='Manager';
        job.Required_Skills__c='Team Player';
        job.Networking_Linux__c='Bcom';
        job.Certification_Required__c='MPM (Master Project Manager)';
        job.Active__c=true;
        job.Manager__c='0032x000005rHm4AAE';
         insert job;
        
        test.startTest();
        
        database.DeleteResult res=database.delete(job,false);
        system.assertEquals('This Job is active and can not be deleted',res.getErrors()[0].getMessage());
               test.stopTest();
        
    }

}