public with sharing class ChildtoParent {
	
	public static void soqlMethod(){
		
		List<contact> myList = [select name,id,account.name from contact];
		system.debug(myList);
		
	}
    
}