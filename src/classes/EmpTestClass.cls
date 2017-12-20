public with sharing class EmpTestClass {
	public static void myMethod(){
		List<Account> myValue =[select Name from Account];
		system.debug(myValue);
    
}
    
}