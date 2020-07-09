public class NotContactInvokable {



    @invocablemethod
    public static  void NOtcontactDetail(List<ID> notids)
    {
     
       List<Account> accountList =[SELECT Name,BillingCity,BillingCountry,BillingPostalCode,BillingState,BillingStreet FROM Account WHERE ID in : notids];
       List<Contact> contactList =new List<Contact>();
       
        
        for(Account AccounrVariable : accountList)
        {
            Contact contactVaraible=new Contact();
            
            contactVaraible.LastName=NULL;
            contactVaraible.MailingCity=NULL;
            contactVaraible.MailingPostalCode=NULL;
            contactVaraible.MailingState=NULL;
            contactVaraible.MailingCountry=NULL;
            contactVaraible.MailingStreet=NULL;
            
            contactList.add(contactVaraible);
        }
        
        
        insert contactList;
    }

}