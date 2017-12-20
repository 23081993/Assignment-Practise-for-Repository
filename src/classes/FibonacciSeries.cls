public with sharing class FibonacciSeries{
	public static void fibonacci (Integer enterChoice) {
		Integer firstNumber = 0 , secondNumber = 1 , thirdNumber;
		
		for(Integer i = 0; i < enterChoice; i++ ){
			
			if(i <= 1){
				system.debug(i);
			}
				
				else{
					thirdNumber = firstNumber + secondNumber;
					firstNumber = secondNumber;
					secondNumber = thirdNumber;
						system.debug(thirdNumber);
					}
		}

	}
    
}