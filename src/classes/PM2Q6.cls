public with sharing class PM2Q6 {
	public static void opportunityRecord(){
		List<opportunity> OpportunityList = [select name from opportunity where amount > 10000 
		 order by createddate  limit 100 OFFSET 51 all rows];
		 for(opportunity oppoRecord : OpportunityList){
		 	system.debug(oppoRecord);
		 }
	}
    
}