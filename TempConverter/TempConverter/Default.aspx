<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TempConverter.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperaturkonverterare</title>
</head>
<body>
    <h1>Konvertera temperaturer</h1>
    <form id="form1" runat="server">
    <div>
        <%-- Input --%>
        <label for="StartTempTextBox">Starttemperatur:</label>
        <asp:TextBox ID="StartTempTextBox" runat="server"></asp:TextBox>

        <label for="EndTempTextBox">Sluttemperatur:</label>
        <asp:TextBox ID="EndTempTextBox" runat="server"></asp:TextBox>

        <label for="TempStepTextBox">Temperatursteg:</label>
        <asp:TextBox ID="TempStepTextBox" runat="server"></asp:TextBox>


        <label for="ConvertType">Typ av konvertering: </label>
        <label for="CelToFahrRadio">Celsius till Fahrenheit:</label>
        <asp:RadioButton ID="CeltoFahrRadio" GroupName="ConvertType" runat="server" />

        <label for="FahrToCelRadio">Fahrenheit till Celsius:</label>
        <asp:RadioButton ID="FahrToCelRadio" GroupName="ConvertType" runat="server" />

        <asp:Button ID="ConvertButton" runat="server" Text="Konvertera" OnClick="ConvertButton_Click" />
    
    </div>
    </form>
</body>
</html>
