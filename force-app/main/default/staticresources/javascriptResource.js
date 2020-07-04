 <script>
          		function validate()
                {
                    var Salutation__c=document.getElementById('{!$Component.Salutation__c}').value;
                    var First_Name__c=document.getElementById('{!$Component.First_Name__c}').value;
                    var Last_Name__c=document.getElementById('{!$Component.Last_Name__c}').value;
                    var Date_of_Birth__c=document.getElementById('{!$Component.Date_of_Birth__c}').value;
                    var Email__c=document.getElementById('{!$Component.Email__c}').value;
                    var Country__c=document.getElementById('{!$Component.Country__c}').value;
                    var State__c=document.getElementById('{!$Component.State__c}').value;
                    var Application_Date__c=document.getElementById('{!$Component.Application_Date__c}').value;
                    var Status__c=document.getElementById('{!$Component.Status__c}').value;
                    var Expected_Salary__c=document.getElementById('{!$Component.Expected_Salary__c}').value;
                    var JOB__c=document.getElementById('{!$Component.JOB__c}').value;
                    
                    
                    if(Salutation__c=="" || First_Name__c=="" || Last_Name__c=="" || Date_of_Birth__c=="" || Email__c=="" || Country__c=="" || State__c=="" || Application_Date__c=="" || Status__c=="" || Expected_Salary__c=="" || JOB__c=="")
                        {
                            document.getElementById('{!$Component.btn}').disabled=true;
                        }
                    else
                        {
                           document.getElementById('{!$Component.btn}').disabled=false;  
                        }
                }
          
                function click()
                {
                    alert("data submied");
                }
          </script>