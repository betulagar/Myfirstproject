
@isTest
public class AccountsBatchTest {
    @isTest
    private static void testBatch1() {
//1. prepare date
    List<Account> listAcc=new List<Account>();
    for(integer i=0;i<900;i++){
        account a=new account();
        a.name='Pi account'+ i;
        a.active__c='Yes';
        ListAcc.add(a);
    }
    insert listAcc;
    //start test
    Test.startTest();
    AccountsBatch ab=new AccountsBatch();
    database.executeBatch(ab, 900);
    test.stopTest();

    //3.assert
    List<Account> getAcc=[select id, description from account];
    system.assert(getAcc[0].Description.contains('batch'));

    }
}
