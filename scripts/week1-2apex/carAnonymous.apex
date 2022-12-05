Caar tesla = new Caar();//apex insensitive
//classname car ,tesla varaiable name
//new instance created and stored in variable named 'tesla'
tesla.carColor='Black';
tesla.carName='xyz';
tesla.switchOn();//call method yani swit hep ( alir)
system.debug('tesla->'+tesla);
tesla.drive();

caar bmw=new caar();
bmw.carColor='white';
bmw.carName='model s';
bmw.switchOn();
bmw.drive();
bmw.driveAtMaxSpeed();
system.debug('bmw car color '+bmw.carColor);
system.debug('bmw '+ bmw);
//bmw.maxSpeed=149;private class disi ulasamazsin
caar toyota=new caar();
toyota.switchOn();
toyota.drive();deal