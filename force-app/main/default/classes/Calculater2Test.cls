@isTest

public class Calculater2Test {
    @istest

    public static void testMessage(){
        Calculater2.welcomeMessage();
        Calculater2.printNewMessage('this is from testmethod');
    }
    @istest
    private static void addTest(){
        integer i=10;
        integer j=15;
        integer sum1= Calculater2.add(i,j);
        system.assertEquals(25, sum1);
    }
    @istest
    private static void addTest1(){
       
        integer sum2= Calculater2.add(10,15,25);
        system.assertEquals(50, sum2);
    }
}