public with sharing class PM2Q8 {
	public static void relationQuery(){
		List<A__c> parentList = [select name from A__c];
		for(A__c name : parentList)
		system.debug(name);
	}
    
}