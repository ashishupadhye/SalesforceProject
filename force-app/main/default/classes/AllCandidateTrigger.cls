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
            
            candidateObject.Application_Date__c=System.today()+1;   
        }
    }
    
    
    public static void beforeinsertT1B(list<Candidate_ashish__c> candidateList)
    {
        for(Candidate_ashish__c candidateObject :candidateList)
        {
            string jobName=candidateObject.Job__c;
            
            for(Job_ashish__c selectJob:[SELECT id from Job_ashish__c WHERE Active__c !=true])
            {
                if(selectJob.id==jobName)
                {
                    candidateObject.addError('This job is not active');
                }
                
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