
@Istest
public class DmlDemoTest {
    @istest
    private static void dmlInsert1Test(){
        DmlDemo.dmlInsertDemo_stndObj();
        List<Account> listAcc=[select id,name from account where name='SoftInnovas'];
        system.assertEquals(1,ListAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
       
    }
    @istest
    private static void dmlInsert4Test(){
        Account acc=new account();
        acc.name='SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlInsertDemo_4();

        List<Contact> listContact=[select id, lastName from contact where lastName='Biden'];
        system.assertEquals(1, Listcontact.size());
}
@istest
private static void dmlInsert5Test(){
    Salesforce_Project__c sp=new Salesforce_Project__c();
    sp.Project_Name__c='Test SP';
    sp.Status__c='New';
    insert sp;
    DmlDemo.dmlInsertDemo_5();

    list<Salesforce_Ticket__c> listST=[select id, name, subject__c,Salesforce_Project__c from SalesForce_Ticket__c where Salesforce_Project__c=:sp.id and subject__c='Learn Apex dmls'];
    system.assertEquals('Learn Apex dmls', listST[0].subject__c);
}
}