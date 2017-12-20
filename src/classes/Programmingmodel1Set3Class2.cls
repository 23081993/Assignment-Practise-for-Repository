public  with sharing class Programmingmodel1Set3Class2  extends AbstractMethodClass{
/**********************Declaration of non static variables*******************/
Integer firstNumber = 5,
        secondNumber = 10,
        thirdNumber = 0;
/***********************Static method for observation************************/
    public static void testStatic(){
    system.debug('Hello,this is static method');
    }



/********************Non static method to print 'Hello World **************/
    public void nonStaticMethod(){
    system.debug('Hello World'+firstNumber);
    }



/*******************Abstract method override***************************************/
     public override void myMethod(){
     system.debug('hello this is overriden method');
     }



/***************************SOQL QUERY********************************************/

public static void contactQuery(){
/*******************Query on all contact records and add to list*****************/
    List<contact> contactList = new List<contact>([select name
                                               from contact]);
    if(!contactList.isEmpty()){
    for(contact myContact :contactList )
        system.debug(myContact);
    }
    }



/*****************Method which find all associated contact record of the Account**/
public static void associatedMethod(){
    List<contact> contactList = new  List<contact>([select name ,
                                                    account.name 
                                                    from contact]);
    for(contact mycontact : contactList){
    system.debug(mycontact);
    }
} 



/***************Method to insert record into account****************************/
    public static void insertAccount(){
    List<account> accountList = new List<account>();
    Account newAccount = new Account(name = 'InsertAccount',website = 'aa@bb.com');
    accountList.add(newAccount);
   
    try{
     insert accountList;
        
     }
     catch(DmlException e){
      system.debug('Insertion Failed'+e.getMessage());
     }
}



/***********************Method to insert conatct record****************************/
    public static void insertContact(){
    List<contact> contactList = new List<contact>();
    contact newAccount = new contact(firstname = 'FirstName',lastname = 'lastname',email = 'www@google45.com');
    contactList.add(newAccount);
   
    try{
     insert contactList;
        
     }
     catch(DmlException e){
      system.debug('Insertion Failed'+e.getMessage());
     }
  }




/*****************************Method to insert Lead record********************/
    public static void insertLead(){
    List<Lead> LeadList = new List<Lead>();
    Lead newLead = new Lead(firstname = 'FirstName1',lastname = 'lastname1',company = 'Relaince');
    LeadList.add(newLead);
   
    try{
     insert LeadList;
        
     }
     catch(DmlException e){
      system.debug('Insertion Failed'+e.getMessage());
     }
}



/**************************************InsertOpportunityRecord***********************/
public static void insertOpportunity(){
    List<Opportunity> oppoList = new List<Opportunity>();
    Opportunity newLead = new Opportunity(name = 'Opportunity',closedate = system.today() , stagename = 'prospecting');
    oppoList.add(newLead);
   
    try{
     insert oppoList;
        
     }
     catch(DmlException e){
      system.debug('Insertion Failed'+e.getMessage());
     }
}



/****************************************Method to show parent child relation*****************/
    public static void parentChild(){
    List<Account> accountList = new List<Account>([Select name 
                                                        , (select name 
                                                           from contacts)
                                                   From account]);
    for(account acc : accountList){		
        system.debug(acc);
    }
} 



/************************print active users using map*******************************************/
    public static void activeUsers(){
    Map<id,user> userMap = new Map<id,user>([select name from user 
                                             where isactive = true]);
    for(id userId :userMap.keyset()){
     system.debug(userMap.get(userId));
    }
   }
   
   
//   Method to show the usage of database.query methods
   public static void dynamicQuery(){
       Account[] accList = [select name from Account where name ='Amit21'];
        Database.DeleteResult[] result = Database.Delete (accList);
        system.debug(result);
        
    }
    /*String str = 'find test in all fields returning account';
    List<List<account>> accList = search.query(str);
    for(List<account> acc1 :accList){
    system.debug(acc1);
      }
   }*/
   
    public static void deleteRecord(){
       
     List<contact> conList =[select name from contact where name Like 'Anuj%'];
        try{
            system.debug('deletion succesful');
        delete conList;
        }
        catch(DmlException e){
            system.debug('Deletion Failed'+e.getMessage());
        }
    }

}