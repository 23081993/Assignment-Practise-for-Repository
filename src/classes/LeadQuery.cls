public with sharing class LeadQuery {
	public static void myQuery(){
		Lead Lead1 = new Lead(Company = 'Microsoft', Lastname = 'Rathore');
		insert(Lead1);
	}
    
}