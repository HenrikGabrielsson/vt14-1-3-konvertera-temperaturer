﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TempConverter.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperaturkonverterare</title>
    <link href="~/style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="content">
        <h1>Konvertera temperaturer</h1>

 
    
        <form id="form1" runat="server">

            <asp:ValidationSummary ID="ValidationSummary" runat="server" /> 
        <div id="formDiv">
            

            <%-- Input - Starttemperatur --%>
            <label for="StartTempTextBox">Starttemperatur:</label>
            <asp:TextBox ID="StartTempTextBox" runat="server"></asp:TextBox>

            <%-- Validering --%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorStart" runat="server" ErrorMessage="Du måste fylla i Starttemperaturen." Display="Dynamic" Text="*" ControlToValidate="StartTempTextBox" CssClass="validation"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorStart" runat="server" ErrorMessage="Starttemperaturen kunde inte tolkas som ett heltal." Display="Dynamic" Text="*" ControlToValidate="StartTempTextBox" Operator="DataTypeCheck" Type="Integer" CssClass="validation"></asp:CompareValidator>


            <%-- Input - Sluttemperatur--%>
            <label for="EndTempTextBox">Sluttemperatur:</label>
            <asp:TextBox ID="EndTempTextBox" runat="server"></asp:TextBox>

            <%-- Validering --%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEnd" runat="server" ErrorMessage="Du måste fylla i Sluttemperatur." Display="Dynamic" Text="*" ControlToValidate="EndTempTextBox" CssClass="validation"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorEnd" runat="server" ErrorMessage="Sluttemperaturen kunde inte tolkas som ett heltal." Display="Dynamic" Text="*" ControlToValidate="EndTempTextBox" Operator="DataTypeCheck" Type="Integer" CssClass="validation"></asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidatorEnd2" runat="server" ErrorMessage="Sluttemperaturen måste vara högre än Starttemperaturen." Display="Dynamic" Text="*" ControlToValidate="EndTempTextBox" ControlToCompare="StartTempTextBox" Operator="GreaterThan" Type="Integer" CssClass="validation"></asp:CompareValidator>


            <%-- Input - Steg --%>
            <label for="TempStepTextBox">Temperatursteg:</label>
            <asp:TextBox ID="TempStepTextBox" runat="server"></asp:TextBox>

            <%-- Validering --%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorStep" runat="server" ErrorMessage="Du måste fylla i Temperatursteg." Display="Dynamic" Text="*" ControlToValidate="TempStepTextBox" CssClass="validation"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorStep" runat="server" ErrorMessage="Temperaturstegen kunde inte tolkas som ett heltal." Display="Dynamic" Text="*" ControlToValidate="TempStepTextBox" Operator="DataTypeCheck" Type="Integer" CssClass="validation"></asp:CompareValidator>
            <asp:RangeValidator ID="RangeValidatorStep" runat="server" ErrorMessage="Stegen måste vara ett heltal mellan 1 - 100." Text="*" ControlToValidate="TempStepTextBox" MaximumValue="100" MinimumValue="1" Type="Integer" CssClass="validation"></asp:RangeValidator>        

            <%-- Input - Konverteringstyp --%>
            <label for="ConvertType">Typ av konvertering: </label>
            <label for="CelToFahrRadio">Celsius till Fahrenheit:</label>
            <asp:RadioButton ID="CeltoFahrRadio" GroupName="ConvertType" runat="server" Checked="True" />

            <label for="FahrToCelRadio">Fahrenheit till Celsius:</label>
            <asp:RadioButton ID="FahrToCelRadio" GroupName="ConvertType" runat="server" />

            <asp:Button ID="ConvertButton" runat="server" Text="Konvertera" OnClick="ConvertButton_Click" CssClass="button" />
    
        </div>
        </form>

        <%-- Tabellen som ska fyllas på med temperaturer --%>
        <asp:Table ID="TempTable" runat="server" Visible="false"></asp:Table>
    </div>




</body>
</html>
