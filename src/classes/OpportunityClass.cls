public class OpportunityClass {
    public static void oppClass(){
        List<opportunity>myList = [select name from opportunity where amount > 10000 ];
    }

}