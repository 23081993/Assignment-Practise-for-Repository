public class TodaysTestClass {
public static void countOccurence(String inputString){
		String[] listString = inputString.split('');
		
		for(string str : listString){
			Integer count = 0;
		
			for(String newStr : listString ){
				if(newStr == str){
					count++;
				}
            }
				system.debug('count of '+str+ ' is' +count);
			}
		}  
}