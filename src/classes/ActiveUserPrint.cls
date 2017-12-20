public class ActiveUserPrint {
    public static void printMethod(){
        map<id,user> myMap = new  map<id,user>([select name from user where isActive = true ]);
        for(id userID : myMap.keyset()) {
            system.debug('user Id is '+userID+'Name of user is '+myMap.get(userID));
        }
    }

}