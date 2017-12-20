public class ActiveUser {
    public static void activeUser(){
        map<id,account> myMap = new map<id,account>([select  id ,name from account]);
        for(id myId : myMap.keyset()){
            system.debug(myId+'value is'+myMap.get(myId));
        }
    }

}