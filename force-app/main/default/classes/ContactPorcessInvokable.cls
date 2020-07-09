public class ContactPorcessInvokable 
{
    @invocablemethod
    public static  void contactDetail(List<ID> ids)
    {
     
       List<Account> accountList =[SELECT Name,BillingCity,BillingCountry,BillingPostalCode,BillingState,BillingStreet FROM Account WHERE ID in : ids];
       List<Contact> contactList =new List<Contact>();
       
        
        for(Account AccounrVariable : accountList)
        {
            Contact contactVaraible=new Contact();
            
            contactVaraible.LastName=AccounrVariable.Name;
            contactVaraible.MailingCity= AccounrVariable.BillingCity;
            contactVaraible.MailingPostalCode=AccounrVariable.BillingPostalCode;
            contactVaraible.MailingState=AccounrVariable.BillingState;
            contactVaraible.MailingCountry=AccounrVariable.BillingCountry;
            contactVaraible.MailingStreet=AccounrVariable.BillingStreet;
            
            contactList.add(contactVaraible);
        }
        
        
        insert contactList;
    }

}