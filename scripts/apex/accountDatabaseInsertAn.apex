account ac1=new account();
ac1.Name='Abc test';
ac1.Industry='Energy';

account ac2=new account();
ac2.Name='xyx test';

account ac3=new account();
account ac4=new account();

List<Account> listAcc=new List<Account>{ac1,ac2,ac3,ac4};
List<database.SaveResult> results=database.insert(listAcc,false);

for(database.saveResult r:results){
    if(r.isSuccess()){
        system.debug('Inserted successfully, record id is '+r.getid());
    }else{
        system.debug('error out ,errors are '+ r.getErrors());
    }
}
