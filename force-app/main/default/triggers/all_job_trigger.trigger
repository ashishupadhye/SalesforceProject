trigger all_job_trigger on Job_ashish__c (before delete,after insert,after update) 
{
    if(Trigger.isbefore && Trigger.isdelete)
    {
        job_all_trigger.beforeDelete(trigger.Old);
    } 
        if(Trigger.isafter)
        {
            if(Trigger.isupdate)
            {
            job_all_trigger.afterUpdate();    /*T6*/
            job_all_trigger.afterInsertUpdate();
            }
            else
            {
            job_all_trigger.afterInsertUpdate();
            }     
        }
        
    if(Trigger.isafter)
    {
       if(trigger.isinsert)
        {
           job_all_trigger.afterInsertAfterUpdate(Trigger.New);  /*T5*/
        }
        if(trigger.isupdate)
        {
           job_all_trigger.afterInsertAfterUpdate(Trigger.New);
        }
    }
}