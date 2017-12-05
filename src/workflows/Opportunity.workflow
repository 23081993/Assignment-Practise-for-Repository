<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Big_Deal_Notification</fullName>
        <ccEmails>rathoresun.23@gmail.com</ccEmails>
        <description>Big Deal Notification</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Big_Deal_Notification</template>
    </alerts>
    <rules>
        <fullName>Big Deal Workflow</fullName>
        <actions>
            <name>Big_Deal_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>&quot;USD 50,000&quot;</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Apporval_routed</fullName>
        <assignedTo>rathore.sunil@eternussolutions.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Opportunity.CloseDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Apporval routed</subject>
    </tasks>
</Workflow>
