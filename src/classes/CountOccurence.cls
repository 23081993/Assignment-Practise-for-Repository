blic with sharing class CountOccurence {
public static void countOccurence{
	
List <String> nameArray = new List<String>{'A','B','C','D','A','B','A','A','A','A'};
Map<String,Integer> elCount = new Map<String,Integer>();

for(String key : nameArray)
{
    if(!elCount.containsKey(key)){
    elCount.put(key,0);
    }
    Integer currentInt=elCount.get(key)+1;
    elCount.put(key,currentInt);
}
}
}

