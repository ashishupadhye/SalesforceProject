trigger AC1 on Account (before insert) {


if(!TriggerActivateDeactivate__c.getInstance().Activate_Trigger__c)
    {
    Account acc=Trigger.New[0];
    
    if(acc.AnnualRevenue==NULL)
    {
    acc.addError('AnnualRevenue cannot be null');
    }
}
}