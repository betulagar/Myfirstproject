trigger CaseTrigger on Case (before insert, before update) {
    if (trigger.isInsert) {
        system.debug('before insert case trigger called');
    }
    if (trigger.isUpdate) {
        system.debug('before update trigger called');
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('# of times trigger ran: ' + CaseTriggerHandler.countTriggerExecution);
    }
   
}