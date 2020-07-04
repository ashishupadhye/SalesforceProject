public class jobcontroller5 

{
    public Job_ashish__c  job {get;set;}
    
    public List<Job_ashish__c> getData()
    {
         return   [SELECT	Name,Job_Name__c,Description__c,Number_of_Positions__c,Expires_On__c,Salary_Offered__c,Job_Types__c,Required_Skills__c,	Networking_Linux__c,Certification_Required__c,Manager__c,Active__c from Job_ashish__c];
    }
    

}