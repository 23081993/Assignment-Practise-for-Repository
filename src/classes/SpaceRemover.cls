public with sharing class SpaceRemover {
	public static void queryMethod(){
		List<Account> aa = [SELECT Id, Name FROM Account WHERE Name = 'Acme'];
        if(aa.isEmpty()){
            system.debug(aa);
        }
	}
    
}