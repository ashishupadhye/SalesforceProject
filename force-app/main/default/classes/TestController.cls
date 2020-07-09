public class TestController 
{
    public static List<Candidate_ashish__c> getCandidates()
    {
        return [SELECT First_name__c,Last_Name__c from Candidate_ashish__c];
    }

}