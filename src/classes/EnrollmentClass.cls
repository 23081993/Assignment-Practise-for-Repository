public class EnrollmentClass {
    public static void enrollMethod(){
        List<account> myList = [select name from account where Enrollment_Year__c = '2010'];
        for(account accList : myList){
            system.debug(accList);
        }
    }

}