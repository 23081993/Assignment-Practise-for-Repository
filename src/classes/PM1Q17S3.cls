public with sharing class PM1Q17S3 {
	public static void parentChild(){
		List<Account> accountList = [select name ,(select name from contacts)from account];
		for(Account myAccount : accountList){
			system.debug(myAccount);
		}
	}
    
}