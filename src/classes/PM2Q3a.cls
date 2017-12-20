public with sharing class PM2Q3a {
	 public static  void accountMap(){
		
		map<String,id> accountMap = new map<String,id>();
		for(account accountRecord : [select name from account]){
			accountMap.put(accountRecord.name ,accountRecord.id);
			system.debug(accountMap.get(accountRecord.name));
		}
	
	}
    
}