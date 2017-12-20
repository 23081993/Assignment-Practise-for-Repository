public class ProgrammingModel1Set2 extends PM1S3VirtualClass {
/******************Method which accepts Integer as parameter and determine the number ********
 				   is prime or not***********************************************************/
    public static void primeNumber(Integer enterChoice){
        Integer flag = 0 ;
        if(enterChoice < 2)
            system.debug(enterChoice + ' Is neither prime nor composite');
        else{
        for(Integer i = 2; i <= enterChoice/2; i++  ){
            if(Math.mod(enterChoice , i) == 0){
                flag =1 ;
                break;
            }
            else{
               flag = 0;
            }
          }
        
        if(flag == 0)
            system.debug(enterChoice+' is prime no');
        else
            system.debug(enterChoice+' is not prime ');
        }
    }
    
    
    
/*******************Accept String as parameter and check whether the String are *********************
 					Pallindrome or not**************************************************************/
    public static void pallindromeMethod(String firstString){
        String secondString = firstString.reverse();
        if(firstString ==secondString ){
            system.debug('String is pallindrome');
        }
        else
            system.debug('String is not pallindrome');
    }
    
    
    
/*****************Method to replace every occurence of 'a' in each string****************************/
     public static void replaceCharacter(String[] inputString , String ch){
        List<String> secondInputString = new List<String>();
       
        for(Integer i = 0 ; i<=1 ; i++){
         	system.debug(inputString[i]);
        }
        
    }
    
    
/*****************Method to count the length of a string******************************************/
    public static void stringLength(String inputString){
        Integer count = 0;
        for(Integer i = 0;i <= inputString.length();i++ ){
            count++;
        }
        system.debug('Length of string '+inputString+' is'+(count- 1));
    }
    
    
/***************Method to find only unoque characters of string**********************************/
    public static void uniqueStorage(List<Integer> inputArray){
        Set<Integer>newSet = new Set<Integer>();
          newSet.addAll(inputArray);
        for(Integer newSetOfInteger : newSet){
            system.debug('New set is'+newSetOfInteger);
          
        }
      }
    
    
    
/***************Parametrised constructor*********************************************************/
    
      public  ProgrammingModel1Set2(Integer enterIneger){
            system.debug('this is constructor');
      }
        

    
    
/****************Overriding of virtual method***********************************************/
    public override void demoMethod(){
        system.debug('this is overriden method');
    }
 
    
/***********************SOQL query*****************************************************/
/***********************************Query on Account***********************************/
    public static void accountMethod(){
        List<account> accountList =[select id from account 
                                    where name ='Gaurav'];
        
        for(Integer i=0 ;i<1 ; i++){
            system.debug(accountList);
        }
        for(account newAccount :accountList )
            system.debug(newAccount);
    }
    
    
/******************************Query on Opportunity**************************************/
    public static void opportunityMethod(){
        List<Opportunity> oppList =[select id ,account.id from opportunity 	
                                    where account.id !=null AND stagename = 'Closed'];
        Set<id>accountSet = new Set<id>();
        Map<id,id>newMap = new Map<id,id>();
     
        for(opportunity newList :oppList){
            system.debug('Opportunity Id is'+newList.id+' Account id is '+newList.Account.id);
            accountSet.add(newList.account.id);
            newMap.put(newList.id,newList.account.id);
        }
        for(id accID :accountSet) {
            system.debug(accID);
        }       
    }
    
    
    
 /**********************Query on account to print all name statring with 'a'***************/
    public static void accountName(){
        List<account> accountName = [select name from account 
                                     where name LIKE 'a%' ];
        for(account newAcc:accountName ){
            system.debug(newAcc);
          
        }
        
    } 
    
}