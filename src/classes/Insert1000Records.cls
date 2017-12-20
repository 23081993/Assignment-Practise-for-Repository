public with sharing class Insert1000Records {
	public static void inserMaharashtratRecord(){
		List<account> maharashtraList = new List<account>();
		for(Integer i = 0; i <= 100; i++){
			Account TestObject = new Account(Name = 'Sunil' + i ,billingstate = 'Maharashtra',website = 'aas'+ i + 'a.com');
			maharashtraList.add(TestObject);
		}
		try{
		insert maharashtraList;
		
		}
		catch(DmlException e){
			system.debug('Insertion Failed'+e.getMessage());
		}
	}
	public static void inserKeralaRecord(){
		List<account> keralaList = new List<account>();
		for(Integer i = 0; i <= 100; i++){
			Account TestObject1 = new Account(Name = 'Anuj' + i ,billingstate = 'Kerala',website = 'bbc'+ i + 'd.com');
			keralaList.add(TestObject1);
		}
		try{
		insert keralaList;
		
		}
		catch(DmlException e){
			system.debug('Insertion Failed'+e.getMessage());
		}
	}
	public static void inserOtherStateRecord(){
		List<account> otherStateList = new List<account>();
		for(Integer i = 0; i <= 900; i++){
			Account TestObject2 = new Account(Name = 'Amit' + i ,billingstate = 'Madhya Pradesh',website = 'ddc'+ i + 'd.com');
			otherStateList.add(TestObject2);
		}
		try{
		insert otherStateList;
		
		}
		catch(DmlException e){
			system.debug('Insertion Failed'+e.getMessage());
		}
	}
    
}