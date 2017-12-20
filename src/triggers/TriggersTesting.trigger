trigger TriggersTesting on A__c (after delete, after insert, after undelete,
 after update, before delete, before insert, before update) {
 	for(A__c ATrigger : trigger.new){
 		system.debug('hello');
 	}
    
}