<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Just_Demo</fullName>
        <description>Just Demo</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORTSelfServiceNewCommentNotificationSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>Status_Informing_Mail</fullName>
        <description>Status Informing Mail</description>
        <protected>true</protected>
        <recipients>
            <field>Manager_Mail__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Status_Report</template>
    </alerts>
    <fieldUpdates>
        <fullName>Criteria_Filed_Update</fullName>
        <field>First_Name__c</field>
        <formula>IF(Current_EMployee__c , &apos;Hello&apos;, &apos;Not Hello&apos;)</formula>
        <name>Criteria Filed Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Email_Field_Update</fullName>
        <description>This will update manager email.</description>
        <field>Manager_Mail__c</field>
        <formula>Manager__r.Email__c</formula>
        <name>Email Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>New_Record_Type_Assignment</fullName>
        <description>The Non Technical record type will be updated when the CurrentEmployee field contain False.</description>
        <field>RecordTypeId</field>
        <lookupValue>Non_Technical</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>New Record Type Assignment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unique_field_updation</fullName>
        <field>Unique_Field__c</field>
        <formula>Employee_Role__r.Name</formula>
        <name>Unique field updation</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Resignation_Date</fullName>
        <field>Resignation_Date__c</field>
        <formula>TODAY()</formula>
        <name>Update Resignation Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Employee Workflow</fullName>
        <actions>
            <name>Status_Informing_Mail</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Employee__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>This is for information about the employee status</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>New one to one relationship</fullName>
        <actions>
            <name>Unique_field_updation</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.First_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Record Type Assignment</fullName>
        <actions>
            <name>New_Record_Type_Assignment</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Current_EMployee__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>When  the value of CurrentEmployee Field of employee is false then the record type Non Technical will be set</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Sharing Rule</fullName>
        <actions>
            <name>Criteria_Filed_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>User.UserRoleId</field>
            <operation>equals</operation>
            <value>HR Manager</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Test</fullName>
        <actions>
            <name>Just_Demo</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Is_Active__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This mail is only for testing</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Manager Email</fullName>
        <actions>
            <name>Email_Field_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>This rule will assign the manager mail</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Resignation Date</fullName>
        <actions>
            <name>Update_Resignation_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Is_On_Notice_Period__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>If employee  will on notice period than the workflow will update the  Resignation date</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>View Validation</fullName>
        <active>false</active>
        <criteriaItems>
            <field>User.IsActive</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
