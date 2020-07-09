public class DemoCLass {
    public static void TestExpiryDate()
    {
        
        LIST<Job_ashish__c> jobLst=[select id,Expires_On__c,Active__c from Job_ashish__c  where Expires_On__c < today];
       
        for(Job_ashish__c obj:jobLst)
        {
          
       
       
                obj.Active__c=false;
            
            
        }
        update jobLst;
        
    }
}