public class TetsingClass {
    public static void testing(){
        String str = 'remove this space';
String[] splitString = str.split(' ');
 
for(String s: splitString) {
   str = str+s;
}
 
system.debug('the string is: '+str);
    }

}