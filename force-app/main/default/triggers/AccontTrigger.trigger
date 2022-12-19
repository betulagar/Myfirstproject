trigger AccontTrigger on Account (before insert) {
system.debug('account before insert trggercalled.');
}