public with sharing class QueryOnContact {
	public static void queryMethod(){
		List<Contact> myQuery = [select FirstName ,LastName from Contact ];
		if(myQuery.isEmpty()){
			system.debug(myQuery);
			
		}
	}
    
}