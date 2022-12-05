public class Caar {
    public string carColor='';
    public string carName;
    //yazmazsan bisi default private olur
    integer maxSpeed=150;
    public void switchOn() {
        datetime switchOnTime=datetime.now();//bu sadece method icinde kullanilir local var
system.debug('starting the car');
    }
    public void drive(){
        system.debug('driving '+carName+' of color '+carColor);

    }
    public void driveAtMaxSpeed(){
      string drivingDescription='driving ' +carName+ 'at '+maxSpeed +' km';
      system.debug(drivingDescription);
    }
}
