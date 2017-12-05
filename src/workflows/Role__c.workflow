<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_EmpId</fullName>
        <description>Contain unique empid</description>
        <field>Emp_Id__c</field>
        <name>Update  EmpId</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Id</fullName>
        <description>Updated Id field</description>
        <field>Emp_Id__c</field>
        <formula>Employee_Name__r.ID__c</formula>
        <name>Update Id</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>One to one relation Workflow1</fullName>
        <actions>
            <name>Update_EmpId</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Id</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Role__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Maintain one to one relationship with employee2</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
