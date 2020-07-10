public class AllCandidateTrigger 
{
    
    public static void beforeinsert(List<Candidate_ashish__c> candidateList)
    {
        for(Candidate_ashish__c candidateObject : candidateList)
        {
            if(candidateObject.Expected_salary_demo__c == NULL)
            {
                Trigger.new[0].addError('Expected Salary field is missing');
            }
        }
    }
    
    public static void beforeinsertDate(List<Candidate_ashish__c> candidateList)
    {
        for(Candidate_ashish__c candidateObject : candidateList)
        {
            
            candidateObject.Application_Date__c=date.today();   //issue fixed of system.date()+1;
        }
    }
    
    
    public static void beforeinsertT1B(list<Candidate_ashish__c> candidateList)
    {
        /* List<Job_ashish__c> jobList =  [SELECT id from Job_ashish__c WHERE Active__c !=true];           //issue solved query write outside the for loop

for(Candidate_ashish__c candidateObject :candidateList)
{
string jobName=candidateObject.Job__c;            
for(Job_ashish__c selectJob : jobList)														//
{
if(selectJob.id == jobName)
{
candidateObject.addError('This job is not active');
}
}
}*/
        
        
        //Way 1
        /*
Map<id,Job_ashish__c> mapForjob =new  Map<id,Job_ashish__c>([SELECT id from Job_ashish__c WHERE Active__c = false]);

for(Candidate_ashish__c canObj :(list<Candidate_ashish__c>) Trigger.New)
{
if(mapForjob.containsKey(canObj.Job__c))
{
canObj.addError('This job is not active');
}
}*/
        
        //Way 2
        
        for(Candidate_ashish__c candidateObject:candidateList)
        {
            System.debug('Candidate Object'+candidateObject.Job__r.Active__c);
            if(!candidateObject.Job__r.Active__c)
            {
                candidateObject.addError('This Job Is NOt Activated Reapplay When activate');
            }
            
        }
    }
    
    public static void candidateHiredPdf(list<Candidate_ashish__c> candidateList)
    {
        List<ID> ids=new List<ID>();
        for(Candidate_ashish__c data:candidateList)
        {
            if(data.Status__c=='Hired')
            {               
                ids.add(data.id);             
            }
        } 
        if(ids.size()>0)
        {
            SendEmail.SendToCandidate(ids);
        }     
    }
    
    
}