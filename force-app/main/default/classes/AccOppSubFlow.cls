public with sharing class AccOppSubFlow {
   
    public static void AccOppFlow(){
        account newAcc=new account();
        newAcc.Name='Defoult Account';
        newAcc.AnnualRevenue=12000000;
        insert newAcc;

        if(newAcc.AnnualRevenue>1000000){
            Map<String,String> newmap=new Map<String,String>();

            newmap.put('OppName',newAcc.Name);
            newmap.put('oppRecordId',newAcc.Id);
            flow.Interview.Create_opp_Autolanched newFlow=new flow.Interview.Create_opp_Autolanched(newmap);
            newFlow.start();
        }
    }





}