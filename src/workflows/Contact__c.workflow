<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Update address</fullName>
        <active>false</active>
        <criteriaItems>
            <field>User.AccountId</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>This workflow will synchronise the address of the contact.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
