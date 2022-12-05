public class String_Assignment {
    public void stringAssignment1() {

            string localString='Thanks for the session on the string';
            system.debug(localString);
        
            integer lenghtOfLocalStr=localString.length();
            system.debug('lenght of local string '+lenghtOfLocalStr);
            
                string capsLocalStr=localString.toUpperCase();
                system.debug(capsLocalStr);
        
                boolean sessionContains=localString.contains('session');
                system.debug('contains session??? '+ sessionContains);
        
                boolean sessionContains1=localString.contains('Session');
                system.debug('contains session??? '+ sessionContains1);
        
                boolean sessionContains2=localString.contains('SESSION');
                system.debug('contains ignore case session??? '+ sessionContains2);
            }
            }     