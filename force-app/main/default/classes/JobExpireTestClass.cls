@isTest
public class JobExpireTestClass
{
  @isTest  
 static void jobTest()
 {
     Test.startTest();
 
     Job_ashish__c job = new Job_ashish__c();
       
        job.Job_Types__c = 'Manager';
        job.Number_of_Positions__c = 8;
        job.Active__c = true;
        job.Required_Skills__c ='Team Player';
        job.Certification_Required__c='MPM (Master Project Manager)';
        job.Networking_Linux__c='Bcom';
        job.Manager__c ='0032x000005rHly';
        job.Expires_On__c=Date.newInstance( 2020, 07, 09);
        insert job;
       
      
        String crexp = '0 11 15 * * ?';
        String jobId = System.schedule('Expire Job newTest',crexp,new JobExpireSchedule());
        System.debug(jobId);
       
         CronTrigger ct = [SELECT Id, CronExpression, TimesTriggered,NextFireTime FROM CronTrigger WHERE id =:jobId];          
         
         System.assertEquals(crexp,ct.CronExpression);
         
         System.assertEquals(0, ct.TimesTriggered);

     Test.stopTest();
   
 }
 
}