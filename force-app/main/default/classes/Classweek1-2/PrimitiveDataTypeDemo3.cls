public  class PrimitiveDataTypeDemo3 {
    public void printNewDateTime() {
dateTime dt3=dateTime.newInstance(2033,5,18,9,4,40);
system.debug('dt3 is '+dt3);
    
Long longTime= 263539859074658757L;
dateTime dt4=dateTime.newInstance(longTime);
system.debug('dt4 is  '+dt4);

datetime dt5=datetime.now();
system.debug('dt5 is current datetime '+dt5);

datetime dt6= datetime.newInstanceGmt(1998, 8, 8, 5, 1, 4);
system.debug('dt is '+dt5);

}






}


