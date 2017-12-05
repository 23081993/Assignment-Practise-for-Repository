<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Deadline_notification_Mail</fullName>
        <description>Deadline  notification Mail</description>
        <protected>false</protected>
        <recipients>
            <field>Manager_Mail__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Deadline_Notify_Email</template>
    </alerts>
    <alerts>
        <fullName>Notification_Email_alert</fullName>
        <description>Notification Email alert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Notification_Mail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Field_Updation</fullName>
        <field>Status__c</field>
        <literalValue>Close</literalValue>
        <name>Field Updation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Deadline workflow</fullName>
        <actions>
            <name>Deadline_notification_Mail</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>End_Date__c  + 5 = today()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Notification Mail</fullName>
        <actions>
            <name>Notification_Email_alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Project_Detail__c.Project_code__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This is for notification when any new project is created</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Status Update</fullName>
        <actions>
            <name>Field_Updation</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>End_Date__c  = today()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
