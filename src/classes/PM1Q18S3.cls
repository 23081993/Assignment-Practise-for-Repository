public with sharing class PM1Q18S3 {
    public static void userRecord(){
    	map<id,user> userMap = new map<id,user>([select name from user where isactive = true ]);
    	for(id userId : userMap.keyset()){
    		system.debug(userMap.get(userId));
    	}
    }
}