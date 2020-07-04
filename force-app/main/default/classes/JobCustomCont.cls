public class JobCustomCont 

{
    
     public Job_ashish__c job {get; private set;}
    
    public JobCustomCont()
    {
        ID id=ApexPages.currentPage().getParameters().get('id');
        job =(id==null)?new Job_ashish__c():
        [SELECT	Name,Job_Name__c,Description__c,Number_of_Positions__c,Expires_On__c,Salary_Offered__c,Job_Types__c,Required_Skills__c,	Networking_Linux__c,Certification_Required__c,Manager__c from Job_ashish__c where id=:id];
    }
    
    
    public PageReference save()
    {
        try
        {
            upsert(job);
        }
        catch(System.DmlException ex)
        {
            ApexPages.addMessages(ex);
            return null;
        }
        
        PageReference redirectSuccess=new ApexPages.StandardController(job).view();
        return(redirectSuccess);
    }

}