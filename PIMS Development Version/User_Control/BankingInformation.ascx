<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BankingInformation.ascx.cs" Inherits="User_Control_BankingInformation" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<style type="text/css">


.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}


.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

</style>
<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table style="width: 590px">
    <tr>
        <td width="280">
            <span class="text">Name of Bank Account</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxBankAccountName" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <span class="text">Name of Bank</span></td>
        <td>
            <asp:DropDownList ID="DropDownListBankName" runat="server" Width="291px" 
                BackColor="WhiteSmoke">
            </asp:DropDownList>
            </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <span class="text">Branch</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxBankBranch" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <span class="text">Account Number</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxAccountNumber" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
</table>

