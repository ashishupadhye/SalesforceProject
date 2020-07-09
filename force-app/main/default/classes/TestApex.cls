@isTest
public class TestApex 
{
 @isTest(seeAllData=true)
    static void cadidateTest()
    {
       // List<Job_ashish__c> joblist=[SELECT id,Name from Job_ashish__c];
        List<Candidate_ashish__c>candList=TestController.getCandidates();
        System.assertEquals(11, candList.size());
       
    }
}