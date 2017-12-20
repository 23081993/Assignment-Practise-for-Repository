public class NewTestClass {
    public static void relationQuery(){
		List<contact> contactList = [select name from contact];
		  for(contact contactRecord : contactList)
		  system.debug(contactRecord);
}


}