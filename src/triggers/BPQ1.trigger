trigger BPQ1 on Contact (before insert, before update) {
	List<account> accountList = [select email__c from account];
	for(contact emailContact :trigger.new){
		if(emailContact.email == null)
		 emailContact.email.addError('Please enter email');
	}
    
}