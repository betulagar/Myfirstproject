Calculator c2= new Calculator();
integer c2sum33= c2.add(10,15,25);
system.debug(c2sum33);
//leap year
Date date1=date.newInstance(2020, 6, 22);
boolean dateLp=c2.leapYearCheck(date1);
System.debug(dateLp);


integer c2Sum1=c2.add(10,15);
system.debug('c2Sum1 is '+c2Sum1);
integer c2Sum2=c2.add(16,55);
system.debug(c2Sum2);
integer x=88;
integer y=99;
integer c2Sum3=c2.add(x,y);
system.debug(c2Sum3);

//methodname ,parameter,retuentype
Calculator c3= new Calculator();
string returnC2=c3.printAndReturnMessage('print this asap');
system.debug(returnC2);
Calculator c1= new Calculator();
c1.welcomeMessage();

String message ='print this message';
c1.printNewMessage(message);

c1.printNewMessage('now print this');
//integer msg=15;
//c1.printNewMessage(msg);
 