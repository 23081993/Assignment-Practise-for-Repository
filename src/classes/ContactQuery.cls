public with sharing class ContactQuery {
	public static void contactMethod(){
		List<contact> myContact = [select name from contact];
		system.debug(myContact);
	}
    
}