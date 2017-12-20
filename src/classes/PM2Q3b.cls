public with sharing class PM2Q3b {
	public static void accountClass(){
		map<id,account> accountMap = new map<id,account>([select name from account ]);
		for(id accID : accountMap.keyset()){
			system.debug(accountMap.get(accID));
			
		}
	}
    
}