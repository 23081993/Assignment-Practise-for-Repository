trigger TestTrigger on Account (before insert, before update) {
    for(account acc :Trigger.new){
        if(acc.website == null)
        acc.website.addError('Please enter website');
    }
}