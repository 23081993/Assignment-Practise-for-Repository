public with sharing class PM1Q4 {
	public static void parentMethod(){
		list<account> parentList = [select name ,id ,(select name,id from contacts)from account];
		for(account myAccount : parentList )
			system.debug(myAccount);
	}
    
}