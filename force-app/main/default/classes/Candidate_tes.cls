@isTest
public class Candidate_tes {
    
    @isTest
    public static void insertData()
    {
        candidate_ashish__c candidate = new candidate_ashish__c();
        candidate.Name='john';
        candidate.Salutation__c='Mr.';
        candidate.First_Name__c='amit';
        candidate.Last_Name__c='gangurde';
        candidate.Country__c='India';
        candidate.State__c='Maharashtra';
        candidate.Expected_Salary__c=23000;
        candidate.Expected_salary_demo__c=23000;
        candidate.Status__c='Hired';
        candidate.Email__c='amitCEO@gmail.com';
        candidate.JOB__c='a022x00000AC8yV';
        
        test.startTest();
        insert candidate;
        test.stopTest();

        List<candidate_ashish__c> lis=[select name from candidate_ashish__c where job__c=:'a022x00000AC8yV'];
        System.assertEquals(1, lis.size());
    }

}