trigger LeadTrigger on Lead (before insert, after insert, before update, after update) {
    if (Trigger.isInsert && Trigger.isBefore){
        for (Lead lead : trigger.new){
            lead.email = 'triggerupdated@email.com';
        }
    }
}