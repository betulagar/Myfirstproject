public class StringDemoClass {
    public void stringDemoClass1() {
String sessionDescription='learning string metods in apex language.';
system.debug(sessionDescription);

integer lengthOfStr=sessionDescription.length();
system.debug('lenght of session description is'+lengthOfStr);

string capsSessionDescription=sessionDescription.toUppercase();
system.debug('in Caps--> '+capsSessionDescription);

boolean apexContains=sessionDescription.contains('apex');
system.debug('contains apex???? '+apexContains);

boolean apexContains2=sessionDescription.contains('Apex');
system.debug('contains Apex???? '+apexContains2);


    }
}
