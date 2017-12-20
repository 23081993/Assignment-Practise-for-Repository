public with sharing class PM1Q3a {
	public static void accountInsert(){
		List<account> insertList = new List<account>();
		account sobj = new account(name ='Ramesh',phone = '234223',website = 'abc@cc.com');
		insertList.add(sobj);
		try{
		insert insertList;
		}
		catch(DmlException e){
			system.debug('insertion is not done properly'+e.getMessage());
		}
		system.debug(insertList);
	}
	public static void contactInsert(){
		List<contact> insertList = new List<contact>();
		contact sobj = new contact(firstname ='Raghav',lastname = 'sharma');
		insertList.add(sobj);
		try{
		insert insertList;
		}
		catch(DmlException e){
			system.debug('insertion is not done properly'+e.getMessage());
		}
		system.debug(insertList);
	}
	public static void leadInsert(){
		List<lead> insertList = new List<lead>();
		lead sobj = new lead(company ='BSNL',lastname = 'sharma');
		insertList.add(sobj);
		try{
		insert insertList;
		}
		catch(DmlException e){
			system.debug('insertion is not done properly'+e.getMessage());
		}
		system.debug(insertList);
	}
	
	}