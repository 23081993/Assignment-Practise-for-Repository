trigger CloneTrigger on Opportunity (after insert) {
	for(Opportunity opp : trigger.new){
		if(opp.name != null)
		opp.clone();
		TriggerHandlerS3Q1.handlerVarible = false;
	}
    
}