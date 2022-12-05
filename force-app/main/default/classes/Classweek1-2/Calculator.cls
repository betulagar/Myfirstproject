public class Calculator {
    public void welcomeMessage() {
    system.debug('weelcome to apex calc');
    }
    public void printNewMessage(string msg){
        system.debug(msg);
    }
    //return string
    public string printAndReturnMessage(string msg){
string returnString=msg+'...OK Cool.';
return returnString;

    }
    public integer add(integer a,integer b){
        integer sum=a+b;
        return sum;
    }
    public integer add(integer x, integer y, integer z){
        integer sum=x+y+z;
        return sum;
    }
    public boolean leapYearCheck(date dt){
        integer year=dt.year();
        boolean lp=date.isLeapYear(year);
        return lp;
    }
}
