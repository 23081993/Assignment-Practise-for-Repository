public with sharing class PM2Q7 {
	public static void calculateSum(){
		map<Integer,opportunity> mapSum = new map<Integer,opportunity>([select sum(amount) from opportunity where stagename = 'Closed' 
		order by calender_year(closedate)]);
		for(Integer currentYear : mapSum.keyset()){
			system.debug(mapSum.get(currentYear));
		}
	}
    
}