public class BatchApex Implements Database.Batchable<sObject>
{
    public Database.QueryLocator start(Database.BatchableContext BC)
    {
        return Database.getQueryLocator('SELECT Name from Candidate_ashish__c');
        
    }
    public void execute(Database.BatchableContext BC,List<Candidate_ashish__c> slist)
    {
        for(Candidate_ashish__c obj:slist)
        {
            obj.Name=obj.Name+'ApexBatch';
        }
        update slist;
    }
    public void finish(Database.BatchableContext Bc)
    {
        system.debug('finished');
        
    }
    
}