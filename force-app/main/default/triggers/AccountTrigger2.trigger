trigger AccountTrigger2 on Account (before insert, before update) {
    //before insert
    system.debug('account before insert trigger called.');
    system.debug('account before UPDATE trigger called.');
    /*
    if(trigger.isBefore){
        system.debug('account before insert trigger');
    }
    if(trigger.isAfter){
        system.debug('account after insert trigger called.');
    }*/
    

}