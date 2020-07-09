public class JobExpireSchedule  implements Schedulable
{
      public void execute(SchedulableContext contexts){
        List<Job_ashish__c> updatedList=new List<Job_ashish__c>();
        List<Job_ashish__c> jobList = [SELECT Expires_On__c ,Active__c FROM Job_ashish__c];
        for(Job_ashish__c data : jobList )
        {            

            if(data.Expires_On__c < System.today())
            {
                data.Active__c=false;

            }
            updatedList.add(data);
        }
        if(updatedList.size()>0)
        {
            update updatedList;
        }
       
    }

}