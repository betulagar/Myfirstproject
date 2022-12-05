public with sharing class Calculator3 {
    //method name add
    //parameter list<integer
    //returntype integer(return addition of allthe elementsin the list)
    public static integer add(List<integer>listInt){
        integer returnInt=0;

        for(integer eachInt: listInt){
            system.debug('eachInt '+eachInt);
            returnInt+=eachInt;
            system.debug('retunInt '+returnInt);
        }
        return returnInt;
    }
   
}
