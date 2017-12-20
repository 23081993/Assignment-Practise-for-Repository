public class ListContact {
    public static void listContact(){
        List<contact> myList = [select name,id from contact];
        for(contact con :myList)
        system.debug(con);
        
        
        
        
        
        
  
    }

}