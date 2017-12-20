public with sharing class HandlerClassTest {
	public static void handleTrigger(List<A__c>  triggerList){
		for(A__c tri : triggerList)
		system.debug(tri);
		
	}
    
}