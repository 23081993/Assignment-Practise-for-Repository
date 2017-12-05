<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Follow_Up_Mail</fullName>
        <description>Follow Up Mail</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/FoolowUp_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>DNC_Record_Type_Layout</fullName>
        <field>RecordTypeId</field>
        <lookupValue>DNC_Record_Layout</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>DNC Record Type Layout</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LandLine_Recod_Type_Layout</fullName>
        <field>RecordTypeId</field>
        <lookupValue>LandLine_Record_Layout</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>LandLine Recod Type Layout</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Mobile_REcord_Type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Mobile_Record_Type</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Mobile REcord Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>No_Number_Record_Type_Layout</fullName>
        <field>RecordTypeId</field>
        <lookupValue>No_Number_record_Layout</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>No Number Record Type Layout</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Check Follow Up</fullName>
        <actions>
            <name>Follow_Up_Mail</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>Follow_Up_Date__c  = today()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>DNC Record Type Layout</fullName>
        <actions>
            <name>DNC_Record_Type_Layout</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.DoNotCall</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LandLine Record Type Layout</fullName>
        <actions>
            <name>LandLine_Recod_Type_Layout</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Phone</field>
            <operation>notEqual</operation>
            <value></value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Mobile</fullName>
        <actions>
            <name>Mobile_REcord_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.MobilePhone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>No Number Record Type Layout</fullName>
        <actions>
            <name>No_Number_Record_Type_Layout</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.MobilePhone</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
