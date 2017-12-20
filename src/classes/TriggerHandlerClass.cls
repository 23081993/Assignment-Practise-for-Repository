public class TriggerHandlerClass {
    public static void toCloneMethod(List<Opportunity> oppoList){
        if(OpportunityVriable.triggerVariable == true){
         OpportunityVriable.triggerVariable = False;
        List<Opportunity>newOppoList = oppoList.deepClone();
        insert newOppoList;
        system.debug(newOppoList);
    }
    }

}