/*string firstName='betul';
string lastName='kabakci';
system.debug(firstName);
system.debug(lastName);

string fullName= firstName +' '+ lastName;
system.debug(fullname);

integer a=11;
integer b=22;
decimal c=(a+b)/2;
system.debug('a= '+a);
system.debug('c= '+c);
system.debug('b= '+b);
//assign etme yollari
string cumle1='salesforce ogreniyorum';
cumle1.capitalize();
string cumle2=cumle1.capitalize();
system.debug('assign etme '+cumle2);
system.debug(cumle1.capitalize());

boolean control1=cumle1.contains('Salesforce');
system.debug('contain method;Salesforce kelimesi '+cumle1+control1);
*/
StringDateAssignment sda=new StringDateAssignment();
sda.stringMethods();

//yas hesaplama
//dogum tsrihi 11.11 2000
//dogumtarihini bir degiskene ata
date birthday=date.newInstance(2000,11,11);
//bugunun tarihi
date bugun=date.today();
//2 tarih arasi gunu bul
integer gunSayisi=birthday.daysBetween(bugun);
decimal yas=gunsayisi/365;
system.debug(birthday+'tarihinde dogan kisi ' + yas+' yasindadir');

Datetime zaman=Datetime.now();
system.debug(zaman);