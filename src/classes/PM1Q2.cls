public with sharing class PM1Q2 {
	public static void associatedRecordMethod(){
		List<contact> contactList = [select name ,id,account.name from contact];
		for(contact contactRecord : contactList ){
			system.debug(contactRecord);
		}
	}
    
}