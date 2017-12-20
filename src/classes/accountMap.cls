public class accountMap {
    public static void accountMethod(){
        map<id,account> accMap = new map<id,account>([select name from account]);
        for(id acc : accMap.keyset()){
           system.debug('name is '+accMap.get(acc)); 
        }
        
    }

}