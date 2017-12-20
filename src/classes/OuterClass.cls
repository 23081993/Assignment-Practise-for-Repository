public with sharing class OuterClass {
	public static void outerClass(){
		system.debug('Hello Users');
	}
}

public class InnerClass{
	OuterClass Object = new OuterClass();
	
}