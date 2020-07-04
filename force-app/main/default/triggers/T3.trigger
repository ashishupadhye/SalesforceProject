trigger T3 on Job_ashish__c (before delete) 
{

    for(Job_ashish__c aa:trigger.Old)
    {
        if(aa.Active__c==true)
        {
            aa.addError('This Job is active and can not be deleted');
        }
    }
    

}