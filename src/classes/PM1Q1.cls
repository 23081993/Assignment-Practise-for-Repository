public with sharing class PM1Q1 {
	public static void contactMethod(){
		List<Contact>  contactList = [select name from contact];
		for(Contact myString : contactList)
		system.debug(contactList);
	}
    
}