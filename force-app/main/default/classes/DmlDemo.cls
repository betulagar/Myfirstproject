public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //create a new account record using apex code (DML)
        //1. create new instance
        Account acc = new account();
        //2. set values to fields
        acc.Name = 'SoftInnovas';
        acc.phone='546883464';
        system.debug('NOT inserted ' + acc);
        //dml.
        insert acc; //booom
        system.debug('INSERTED ' + acc);
    }
    public static void dmlInserDemo_cstmObj(){
        //create new insatnce
        salesforce_project__c spNew=new  salesforce_project__c();
        //set fields value
        spNew.project_name__c='teach DML to batch 11';
        spNew.description__c='EveryBody is doing Great Keep it up';
        //Dml
        insert spNew;
    }
    public static void dmlUpdateDemo_1(){
     Account acc=new account();
     acc.Name='softinnovas';
     insert acc;
     acc.Name='softinnovas inc';
     update acc;
     system.debug(acc);
    }
}