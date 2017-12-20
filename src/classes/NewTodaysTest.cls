public class NewTodaysTest {
               
       public static void methodOnCustomC(){
        List<C__c> customList = new List<C__c>([select Name ,
                                                A_Associate__r.Name,
                                                B_Associate__r.Name
                                               
                                                from C__c
                                                where name = 'John']);
    for(C__c customC : customList){
        system.debug('child name'+customC.name+'A name '+customC.A_Associate__r.name);
    }
    } 
}