Candidate.CompanyName='SoftInnovas';
Candidate.printCandidate();
system.debug('Start count of candidates = ' +Candidate.countCandidate);
Candidate c1=new Candidate() ;

c1.Name='Jerry';
c1.Gender='Male';
c1.printCandidateInfo();
//count candidate i clastan otomatikte saydiririz
Candidate c2=new Candidate();
c2.Name='Elanie';
c2.Gender='Female';
c2.printCandidateInfo();

Candidate.CompanyName='Vandelay Industries';

Candidate c3=new Candidate();
c3.Name='George';
c3.Gender='Female';
c3.printCandidateInfo();

system.debug('-------');
c1.printCandidateInfo();
system.debug('-------');
c2.printCandidateInfo();
Candidate.printCandidate();
system.debug('End count of candiddates= '+Candidate.countCandidate);