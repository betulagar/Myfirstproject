public  class PrimitiveDataTypeDemo2 {
    public void printNewDate() {
system.debug('create new date instance');

Date newDate= Date.newInstance(1995,2,2);
system.debug('new date2 is '+newDate);

Date newDate2= Date.newInstance(1995,2,2);
system.debug('new date2 is '+newDate2);

Date todayDate= date.today();
system.debug('today date is '+ todayDate);



    }
    public void printTime(){
    Time myTime= time.newINstance(1,1,15,68);
    system.debug('mytime is '+myTime);
    Time meTime= time.newINstance(2,3,16,68);
    system.debug('mytime is '+meTime);
    }

public void printNewDateTime(){
    Date newDate= date.today();
    Time newTime=time.newInstance(1,1,12,56);

    DateTime dt1=DateTime.newInstance(newDate,newTime);
    system.debug('dt1 is '+dt1);

dateTime dt2=dateTime.newInstance(2000,5,16);
system.debug('dt2 is '+dt2);
}





}
