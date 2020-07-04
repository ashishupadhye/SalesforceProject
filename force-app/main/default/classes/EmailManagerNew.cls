public class EmailManagerNew

{
    public static void sendMail(String address,String subject,String body)
    {
//Createanemailmessageobject
Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
String[] toAddresses=new String[]{address};
mail.setToAddresses(toAddresses);
mail.setSubject(subject);
mail.setPlainTextBody(body);
//Passthisemailmessagetothebuilt-insendEmailmethod
//oftheMessagingclass
Messaging.SendEmailResult[] results=Messaging.sendEmail(
new Messaging.SingleEmailMessage[] {mail});
        
        //Callahelpermethodtoinspectthereturnedresults
inspectResults(results);
}
//Helpermethod
private static Boolean inspectResults(Messaging.SendEmailResult[] results){
Boolean sendResult=true;
//sendEmaileturnsanarrayofresultobjects.
//Iteratethroughthelisttoinspectresults.
//Inthisclass,themethodssendonlyoneemail,
//soweshouldhaveonlyoneresult.
for(Messaging.SendEmailResult res:results){
if(res.isSuccess()){
System.debug('Email sent successfully');
}
else{
sendResult=false;
System.debug('The following errors occurred:'+res.getErrors());
}
}
return sendResult;
}
}