<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Assignment_Mail</fullName>
        <ccEmails>rathoresun.23@gmail.com</ccEmails>
        <description>Assignment Mail</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <recipient>rathore.sunil@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Project_Assignment_Mail</template>
    </alerts>
    <alerts>
        <fullName>Deadline_notification_Mail</fullName>
        <description>Deadline  notification Mail</description>
        <protected>false</protected>
        <recipients>
            <field>Manager_Mail__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>rathore.sunil@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Deadline_Notify_Email</template>
    </alerts>
    <alerts>
        <fullName>New_Project_Create_updation</fullName>
        <description>New Project Create updation</description>
        <protected>false</protected>
        <recipients>
            <recipient>rathore.sunil@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/New_Project_Notification</template>
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
        <formula>End_Date__c - 5  =  today()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
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
    <rules>
        <fullName>TaskCreation</fullName>
        <actions>
            <name>New_Project_Create_updation</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>CalenderTask</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Project_Detail__c.Start_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This rule will create the calender task</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>CalenderTask</fullName>
        <assignedTo>rathore.sunil@eternussolutions.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Project_Detail__c.Start_Date__c</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>CalenderTask</subject>
    </tasks>
</Workflow>
