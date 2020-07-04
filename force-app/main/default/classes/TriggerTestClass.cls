@isTest

private class TriggerTestClass
 {
     static testmethod void MyUnitTest()
     {
       Candidate_ashish__c objcandidate=new Candidate_ashish__c();
       
       objcandidate.Name='Test Candidate';
       objcandidate.first_name__c='TestName1';
       
       insert objcandidate;
       
       Test.startTest();
         objcandidate.first_name__c='TestName2';
          update objcandidate;
           Test.stopTest();
         
     } 
 }