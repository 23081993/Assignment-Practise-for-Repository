public with sharing class ProgrammingModule2Class {
/***********************Method for contact record*********************/
    public static void contactRecord(){
	    List<contact> contactList = new List<contact>([select name from contact]);
	    for(contact contactLoop : contactList){
	    system.debug(contactLoop);
	    }
    }




/***********************Method to print all active user record********/
    public static void printUser(){
        Map<id,user> userMap = new Map<id,user>([select name 
                                                 from user 
                                                 where isactive = true]);
        for(id userID : userMap.keyset() ){
            system.debug(userMap.get(userID));
        }
    }



/********************Account id as key and account  as value*******/
    public static void accountIdKey(){
        Map<id,account> myMap = new Map<id,account>([select name from account]);
        for(id mapId : myMap.keyset()){
            system.debug(myMap.get(mapId));
        }
    } 




/*****************Account name as key and account id as value**********/
    public static void accountNameKey(){
       Map<String,id> newMap = new Map<String,id>();
        for(account acc : [select name from account]){
          newMap.put(acc.name,acc.id);
          system.debug(newMap.get(acc.name));
        }
    } 



/****************Get all account record where enrollment year is 2010**/
    public static void enrollmentMethod(){
        List<account> enrolList = new List<account>([select name from account
                                                     where  Enrollment_Year__c = '2010']);
        for(account newacc : enrolList ){
            system.debug(newacc);
        }
        
    }



/******************Get all account record where enrollment year is 2013 and 2014*/ 
    public static void newEnrollmentMethod(){
        List<account> enrolList = new List<account>([select name from account
                                                     where  Enrollment_Year__c  includes('2013','2014')]);
        for(account newacc : enrolList ){
            system.debug(newacc);
        }
        
    } 



/*************Get all account records where billing station is not Kerala*********
               and maharashtra***************************************************/
    public static void accountRecordMethod(){
        List<account> accountList = new List<account>([select name from account
                                                      where billingstate NOT IN ('Maharashtra','Kerala')
                                                      order by billingstate DESC NULLS LAST 
                                                      limit 1000]);
        for(account stateList : accountList){
            system.debug(stateList);
        }
    } 




/************Display opportunity 100 records whose amount is greter than 10000**/
    public static void opportunityRecord(){
        List<opportunity> oppoList = new List<opportunity>([select name from opportunity
                                                           where Amount > 10000
                                                           order by  createddate
                                                           limit 100
                                                           OFFSET 51 ALL ROWS]);
        for(opportunity opp : oppoList){
            system.debug(opp);
        }
    }
    
    
    
/*************child to parent relationship************************************/

/*********************Query on contact to retrive all active contact***********/
    public static void activeContact(){
        List<contact> ConList = new  List<contact>([select name,account.name from contact
                                                    where account.Active__c = 'Yes' and
                                                     account.Industry = 'Media'    
                                                     ]);
        for(contact newCon : ConList ){
            system.debug(newCon);
        }
    }



/*****************Query on C to retrieve all records of C of name = John********/
  
  
    public static void methodOnCustomC(){
        List<C__c> customList = new List<C__c>([select Name ,
                                               A_Associate__r.Name,
                                               B_Associate__r.Name
                                               
                                                from C__c
                                                where name = 'John']);
    for(C__c customC : customList){
        system.debug('Name of C is '+customC.name+'A name is'
                     +customC.A_Associate__r.Name+'B name is '+ customC.B_Associate__r.Name);
    }
    } 




/********************Parent to child query*****************************************************/

/**************query on Account to retrieve all associated contact record name =John********/

public static void parentsMethod(){
    List<account> accList = new List<account>([select name ,
                                              (select name from contacts 
                                              where firstname = 'John ')
                                              from account]);
    for(account acc : accList){
        for(contact con :acc.contacts)
        system.debug('Account name is '+acc.name+' Contact name is '+con.name);
    }
}



/**************Find all account records which have opportunity record 'close won'**********/
    public static void parentAccountMethod(){
        List<account> accList = new List<account>([select name ,
                                              (select name from Opportunities 
                                              where StageName = 'Closed Won')
                                              from account]);
        for(account acc1 : accList){
            for(Opportunity opp1 : acc1.Opportunities)
          system.debug('Account name is '+acc1.name+' opportunity name is '+opp1.name);
        }
    }   



/**************Query on A to retrive all the account record whose child name is john********/
    public static void ParentAMethod(){
        List<A__c> customList = new List<A__c>([select name ,
                                                (select name from Cs__r
                                                 where name ='John')
                                                from A__c]);
        for(A__c customA : customList){
            for(C__c recorsOfC : customA.Cs__r )
            system.debug('A record name is '+customA.name+' Child record name is '+recorsOfC.name);
        }
    }
   
    
/**************SOSL Query*****************************************************************/
    
/********************Find test in all name fields returning account,contact,lead and use*/
    public static void SoslMethod(){
        List<List<SObject>> sObjectList =new List<List<SObject>> 
            							([Find 'Test' IN Name fields returning 
                                         Account(name),contact(firstname,Lastname),
                                         Lead(firstname,lastname),
                                         opportunity(name)]);
        for(List<SObject> sObj :sObjectList){
            for(SObject sObjNew :sObj){
                system.debug(sObjNew);
            }
                
        }
    }
    
/*******************Insert 100 Lead records***********************************************/
    public static void insertLeadRecords(){
        List<Lead> leadList = new List<Lead>();
        for(Integer i =0; i <= 100 ; i++){
            Lead leadObject = new Lead(firstname = 'Lakshya' + i , lastname ='Bhatnagar' + i);
            leadList.add(leadObject);
        }
        try{
            insert leadList;
        }
        catch(DmlException e){
            system.debug('Insertion failed'+e.getMessage());
        }
    }
    
    
    
/**********************Delete Inactive accounts****************************************/
    public static void deleteInactiveAccount(){
        List<account>accountList = new  List<account>([select name from account
                                                       where active__c = 'No' AND
                                                       createddate > LAST_N_DAYS:90 ]);
        for(account acc:accountList){
            system.debug(acc);
        }
        try{
            delete accountList ;
        }
        catch(DmlException s){
            system.debug('Deletion Failed'+s.getMessage());
        }
                                                     
    }
    
    
    
/*****************************Aggregate Query**************************************/
/********************Query to retrieve sum of all closed opportunity for current **
 					 Fiscal year**************************************************/
      public static void closedOpportunity(){
         Map<Integer,Integer> oppMap = new  Map<Integer,Integer>();
        List<AggregateResult>totalSum =[select sum(amount) sm,FiscalYear
                                         from opportunity
                                         where stagename = 'Closed'
                                         group by FiscalYear ];
        for(AggregateResult agg : totalSum){
           oppMap.put(agg.get('FiscalYear'),agg.get('sm'));
        }
    }
    
    
    
/********************Find total number of lead Records****************************/
    /*public static void leadRecords(){
        List<AggregateResult> leadList = [select  count() from lead 
                                          having count(LeadSource)>10
                                           group by LeadSource];    }
    }*/