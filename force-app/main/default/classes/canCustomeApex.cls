public class canCustomeApex 

{
    
    public Candidate_ashish__c candidate {get; private set;}
    
    public canCustomeApex()
    {
        ID id=ApexPages.currentPage().getParameters().get('id');
        candidate =(id==null)?new Candidate_ashish__c():
        [SELECT	Salutation__c,First_Name__c,Last_Name__c,Date_of_Birth__c,Email__c,Expected_Salary__c,Application_Date__c,Country__c,
         State__c,Status__c,JOB__c from Candidate_ashish__c where id=:id];
    }
    
    
    public PageReference save()
    {
        try
        {
            upsert(candidate);
        }
        catch(System.DmlException ex)
        {
            ApexPages.addMessages(ex);
            return null;
        }
        
        PageReference redirectSuccess=new ApexPages.StandardController(candidate).view();
        return(redirectSuccess);
    }
  
}