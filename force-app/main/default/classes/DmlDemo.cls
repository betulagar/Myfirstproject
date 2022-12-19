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
    public static void insertDemo(){
        contact cnn=new contact();
        contact cnn2=new contact();
        cnn2.firstName='fatma';
        cnn.lastName='jhgsdjfh';
     insert cnn;
        insert cnn2;
        system.debug(cnn);
        system.debug(cnn2);
    }
    public static void customdeneme(){
Salesforce_project__c spNew1=new Salesforce_project__c ();
spNew1.project_name__c='group 8';
//spNew1.project_Status__c='New';
Salesforce_project__c spNew2=new Salesforce_project__c ();
spnew2.Status__c='New';
insert spNew1;
insert spNew2;
//system.debug(spNew1);
    }
    public static void  dmlUodateDempo(){
        account acc= [select name from account where name='bety' limit 1];
        acc.Name='bety Inc';
        update acc;
        system.debug('update'+acc);
    }
    public static void dmlUpdateDemo_2(){
        account acc=[select id, name from account where name='Edge Communications' limit 1];
        contact cnt= new contact();
        cnt.LastName='Biden';
        //cnt.AccountId=acc.id;
        insert cnt;
        system.debug('contact record: '+cnt);
    }
    public static void dmlUpdateDemo_3(){
        salesforce_project__c sp=[select id ,name from salesforce_project__c order by createdDate desc limit 1];
        salesforce_ticket__c st=new salesforce_ticket__c();
        st.subject__c='Learn APEX';
        st.Priority__c='High';
        st.Requested_by_date__c=date.newInstance(2021,12,06);
        st.salesforce_Project__c = sp.id;
        insert st;
    }
    public static void dmlInsertMultiple_right(){
        list<account> listAcc=new list<account>();
        account acc1=new account();
        acc1.Name='bulk acc 1';
        listAcc.add(acc1);

        account acc2=new account();
        acc1.Name='bulk acc 2';
        listAcc.add(acc2);

        account acc3=new account();
        acc1.Name='bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
    }
public static void dmlInsertMultiple_right2(){
        list<account> listAcc=new list<account>();
    for(integer i=0; i<155;i++){
        account acc=new account();
        acc.Name='SoftInnovas'+i;
        acc.Active__c='Yes';
        //insert acc;
        listAcc.add(acc);
    }
    if(!listAcc.isEmpty()){
        insert listAcc;
    }

}
}