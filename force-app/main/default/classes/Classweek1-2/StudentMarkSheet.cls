public  class StudentMarkSheet {
    public void showMarksheetUsingDatatype() {

        string firstName='Betul';
        string lastName='Kabakci';
        decimal mathematics=86.6;
        integer english=75;
        integer chemistry=90;

        system.debug(firstName+' '+lastName+' Mathematics mark is '+mathematics);
        system.debug(firstName+' '+lastName+' English  mark is '+english);
        system.debug(firstName+' '+lastName+' Chemistry mark is '+chemistry);
            }
    public void showMarksheetUsingObject(){

        string firstName='Sami';
        string lastName='Agar';
        decimal mathematics=93.6;
        integer english=89;
        integer chemistry=70;

        system.debug(firstName+' '+lastName+' Mathematics mark is '+mathematics+' English  mark is '+english+' Chemistry mark is '+chemistry);
        
    }
}
