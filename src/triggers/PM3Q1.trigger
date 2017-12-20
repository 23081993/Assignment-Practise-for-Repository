trigger PM3Q1 on Account (before insert,after insert ,before delete,after delete,before update,after update,after undelete) 
{
  /*  if(Trigger.isBefore){
        if(Trigger.isInsert){
            system.debug('This is new'+trigger.new);//working
            system.debug('This is newMap'+trigger.newMap);
            system.debug('This is old'+trigger.old);
            system.debug('This is oldMap'+trigger.oldMap);
        }
        if(Trigger.isUpdate){
            system.debug('This is new'+trigger.new);//working
            system.debug('This is newMap'+trigger.newMap);//working
            system.debug('This is old'+trigger.old);//working
            system.debug('This is oldMap'+trigger.oldMap);//working
        }
        if(Trigger.isDelete){
            system.debug('This is newDelete'+trigger.new);
            system.debug('This is newMapDelete'+trigger.newMap);
            system.debug('This is oldDelete'+trigger.old);//working
            system.debug('This is oldMapDelete'+trigger.oldMap);//working
        }
       }*/
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            system.debug('This is new'+trigger.new);
            system.debug('This is newMap'+trigger.newMap);
            system.debug('This is old'+trigger.old);
            system.debug('This is oldMap'+trigger.oldMap);
        }
        if(Trigger.isUpdate){
            system.debug('This is new'+trigger.new);
            system.debug('This is newMap'+trigger.newMap);
            system.debug('This is old'+trigger.old);
            system.debug('This is oldMap'+trigger.oldMap);
        }
        if(Trigger.isDelete){
            system.debug('This is newDelete'+trigger.new);
            system.debug('This is newMapDelete'+trigger.newMap);
            system.debug('This is oldDelete'+trigger.old);
            system.debug('This is oldMapDelete'+trigger.oldMap);
        }
         if(Trigger.isUndelete){
            system.debug('This is newUnDelete'+trigger.new);
            system.debug('This is newMapUnDelete'+trigger.newMap);
            system.debug('This is oldUnDelete'+trigger.old);
            system.debug('This is oldMapUnDelete'+trigger.oldMap);
        }


}
}