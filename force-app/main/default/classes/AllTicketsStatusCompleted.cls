public with sharing class AllTicketsStatusCompleted {
    @invocableMethod(
        label='Tickets status completed'
        description='salesforce projecte bagli tum ticketlarin statulerini completed yapma'
        category='salesforce project'
        //stId =update yapilan ve statusu completed olan salesforce project recordlarinin id leri var

    )
    public static void completedTickets(List<Id> spIds){
        //soql ile bu Id lere bagli ve statusu comleted olmayan tum ticketleri liste olarak getiririm.
        //bu listeyi for dongusune koyup statuleri comlete ederim
        //bu listeyi update ederim
        //methodum tek bir parametre aldi id wrappera gerek kalmadi
        list<Salesforce_Ticket__c> stList=[select id, status__c from Salesforce_Ticket__c where Salesforce_Project__c IN :spIds and status__c!='Completed'];

        for(Salesforce_Ticket__c st:stList){
            st.status__c='Completed';
        }
        try {
            update stList;
        } catch (Exception ex) {
           system.debug(ex);
        }

    }

   
}