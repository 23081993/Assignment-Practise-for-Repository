public with sharing class PM2Q4 {
    public static void singleYear(){
    	List<account> accountList =[select name from account where enrollment_year__c = '2010' ];
    	for(account accountRecord : accountList){
    		system.debug(accountRecord);
    	}
    }
    public static void doubleYear(){
    	List<account> accountList =[select name from account where enrollment_year__c includes ('2013','2014' )];
    	for(account accountRecord : accountList){
    		system.debug(accountRecord);
    	}
    }
}