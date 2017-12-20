public with sharing class InsertOpportunityRecord {
	public static void insertOpportunity(){
		List<Opportunity> OppoList = new List<Opportunity>();
		for(Integer i = 0 ; i <= 150; i++ ){
			Opportunity testObject = new Opportunity(name = 'Rishabh' + i , amount = 10000 + i , stagename = 'Prospecting' ,
			 closedate =System.today());
			OppoList.add(testObject);			
		}
		try{
		insert OppoList ;
	}
	catch(DmlException e){
		system.debug('Insertion Failed'+e.getMessage());
	}
	}
    
}