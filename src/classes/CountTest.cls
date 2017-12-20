public class CountTest {
    public static void countMethod(String str){
        List<String> myString =  new LIst<String>();
        myString.add(str);
        //myString = str;
        Integer count = 0;
        for(String s : myString){
            if(s == 'a')
                count++;
        }
        system.debug(count);
    }

}