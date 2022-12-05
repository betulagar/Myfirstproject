public class PrimitiveDataTypeDemo {
public void printBasicDataType(){
    system.debug('print data type');
    string batchName='Batch11';
    integer totalCandidates=80;
    boolean isAdminCompleted=true;
    system.debug('batch name is  '+ batchName);
    system.debug('total candidates are '+totalCandidates );
    system.debug(' isAdminCompleted '+isAdminCompleted );

    Decimal decValue=27.01;
    system.debug('decimal value is '+decValue);

    long l=21466780L;
}
public void printBasicDataType2(){
    Object ob1='asign string to object.allowed?';
    object ob2=5000;
    object ob3=false;

    system.debug(ob1);
    system.debug(ob2);
    system.debug(ob3);

    ID accountId='001Do000003CS0nIAG';
    system.debug('id--.'+ accountId);
}
}


