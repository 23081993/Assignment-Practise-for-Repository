/***********************************************************************
* Description - Test class developed for ChangeOfDetailController_CloneCC
*
* Version            Date            Author            Description
**********************************************************************/

public with sharing class ProggramingModel1Set3Class {
    //Method which will accept integer parameter and print fibonacci series pto that number
    public static void printFibonacci(Integer enterChoice){
    Integer firstNumber = 0 ,
            secondNumber = 1 ,
            thirdNumber = 0;
    for(Integer i = 0; i < enterChoice; i++ ){
     if(i <= 1)
     system.debug(i);
     else{
     thirdNumber = firstNumber + secondNumber;
     firstNumber = secondNumber;
     secondNumber = thirdNumber;
     system.debug(thirdNumber);
    } 
  }
 }
  
 /*********************************This method will accept string parameter  and returns reverse of a string*/
    public static void ReverseString(String inputString){
        /****** reverse() is used to reverse the string*********************/ 
     system.debug('Reverse of Input String is '+inputString.reverse());
    }
    
/**********************************This method accepts string parameter and replace the occurence of @ ******
                                   character to A in a string 'Welcome to @pex Programming'******************/
     public static void replaceOccurence(String inputString){
         /****** replace(target,replacement) is used to replace the character**/ 
     system.debug('New string is'+inputString.replace('@','A'));
     }
     
/*********************************This method accepts string parameter and print the substring 'Apex Programming
                                  in a string 'Welcome to @pex Programming'***********************************/
    public static void printSubstring(String inputString){
        /********subStringAfter(seperator) is used to print substring**********/
    system.debug('Substring is '+inputString.substringAfter('to'));
    }



/*********************************This method accepts string parameter and split the string *****************/
    public static void splitString(String inputString){
        /*******split(factor) is used to split the string**********************/
    system.debug('Splited list is '+inputString.split(' '));
    }



/*********************************This method accepts string parameter and removes the space in case of a ****
                                  multi world string*********************************************************/
    public static void removeSpace(String inputString){
         /****** replace(target,replacement) is used to remove the space *****/ 
    system.debug('New string is'+inputString.replace(' ',''));     
    }



/********************************This method accepts string parameter and converts the upper case into lower**
                                 case************************************************************************/
    public static void lowerCase(String inputString){
        /*******toLowerCase() is used to converts the string into lowercase****/ 
    system.debug('The lower case string is : '+inputString.toLowerCase());
    }



/*******************************This method accepts string parameter and converts the lower case to upper ****
                                case**************************************************************************/
    public static void upperCase(String inputString){
         /*******toUpperCase() is used to converts the string into uppercase****/ 
    system.debug('The lower case string is : '+inputString.toUpperCase());
    }
 
 
 
/********************************Method takes string as a input and returns count of occurence of every ******
                                 character in a string *******************************************************/
    public static void countOccurence(String inputString){
    /**** replace method is used to remove the space in case 
          of a multiword string********/
    inputString = inputString.replace(' ','');
    /**** split mwethod is used to enter every character of a string 
          in a list****************************************************/        
    List<String> listString = new List<String>(inputString.split(''));
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