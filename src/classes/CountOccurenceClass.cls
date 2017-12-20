/*******Program to count the occurrence of a character in a string****/
public with sharing class CountOccurenceClass {
    /******Method takes string as a input and returns count of 
           occurence of every character in a string ******************/
	public static void countOccurence(String inputString){
	/**** replace method is used to remove the space in case 
	      of a multiword string********/
	inputString = inputString.replace(' ','');
	/**** split mwethod is used to enter every character of a string 
	      in a list****************************************************/	    
    String[] listString = new List<String>(inputString.split(''));
    /**** Map is declared to contain the count of every character******/
	Map<String, Integer> mapLetter_Count = new Map<String, Integer>();
	Integer count = 1;
    for(string str : listString){
	    if(mapLetter_Count.keyset().contains(str) )
	       mapLetter_Count.put(str,mapLetter_Count.get(str) + 1);
	    else
	       mapLetter_Count.put(str,count);
	 }
	system.debug(mapLetter_Count);
	}
}