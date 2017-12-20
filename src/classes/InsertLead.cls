public with sharing class InsertLead {
	public static void webStage(){
		for(Integer i = 0; i <= 15 ; i++){
		List<lead> l = new List<lead >(lastname = 'Rathore' + i,company = 'TATA',Leadsource = 'Web');
		}
		insert l;
	}
}