public class ScheduleDemo Implements Schedulable 
{
    
	public void execute(SchedulableContext SC)
    {
        update[SELECT id,Name from Candidate_ashish__c where Name='testallApexBatchApexBatch' ];   
    }
}