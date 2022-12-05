public  class Candidate {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidate=0;
    public Candidate(){
        Candidate.countCandidate++;
    }
    public void printCandidateInfo(){
        system.debug('Candidate Name is '+Name+'('+Gender+')');
        system.debug('Company name is '+CompanyName);
    }

    public static void printCandidate(){
        system.debug('Company name is '+CompanyName);
        //we can not acces non static members inside static members
        //system.debug('Name is '+ Name);
        //we can access static members only static method
    }
}