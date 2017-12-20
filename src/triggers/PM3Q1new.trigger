trigger PM3Q1new on A__c (before insert, before update) {
    for(A__c test : trigger.old){
        system.debug('hello');
    }
    
}