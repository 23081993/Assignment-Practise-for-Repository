trigger PM3Q3 on Opportunity (after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
           
            TriggerHandlerClass.toCloneMethod(Trigger.new);
        }
    }
    

}