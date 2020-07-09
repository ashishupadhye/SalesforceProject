public class QueueableDemo implements Queueable
{
    public void execute(QueueableContext QC)
    {
        update[SELECT id,Name from Candidate_ashish__c where Name='testallApexBatchApexBatch' ];   
    }

}