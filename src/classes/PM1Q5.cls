public with sharing class PM1Q5 {
	public static void printUser(){
		map<id,user> userMap = new map<id,user>([select id , name  from user where isactive = true]);
		for(id userId : userMap.keyset())
		system.debug(userMap.get(userId));
	}
    
}