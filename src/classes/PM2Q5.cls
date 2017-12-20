public with sharing class PM2Q5 {
	public static void accountMethod(){
		List<account> accountList = [select name , billingstate from account where billingstate  NOT IN ('Maharashtra','Kerala') 
		order by  name DESC NULLS last limit 1000];
		for(account accRecord :accountList){
			system.debug(accRecord);
		}
	}
    
}