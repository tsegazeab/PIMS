<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ChangeOfCircumstance_BankAccount.ascx.cs" Inherits="User_Control_ChangeOfCircumstance_BankAccount" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

<style type="text/css">
    
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

.RadInput
{
	vertical-align:middle;
}


.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadPicker
{
	vertical-align:middle;
}

.RadPicker
{
	vertical-align:middle;
}

.RadPicker .rcTable
{
	table-layout:auto;
}

.RadPicker .rcTable
{
	table-layout:auto;
}

.RadPicker .rcCalPopup
{
	display:block;
	overflow:hidden;
	width:22px;
	height:22px;
	background-color:transparent;
	background-repeat:no-repeat;
	text-indent:-2222px;
	text-align:center;
}

.RadPicker .rcCalPopup
{
	display:block;
	overflow:hidden;
	width:22px;
	height:22px;
	background-color:transparent;
	background-repeat:no-repeat;
	text-indent:-2222px;
	text-align:center;
}

.RadPicker_Outlook .rcCalPopup
{
	background-image:url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Outlook.Calendar.sprite.gif');
}

.RadPicker_Outlook .rcCalPopup
{
	background-position:0 0;
}

</style>
<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table>
    <tr>
        <td width="280">
            <span class="text">Pension Identification Number</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox3" Runat="server" Width="295px" 
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
            <span class="text">First Name</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox4" Runat="server" Width="295px" 
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
            <span class="text">Last Name</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox5" Runat="server" Width="295px" 
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
            <span class="text">New Bank Account Name</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox6" Runat="server" Width="295px" 
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
            <span class="text">New Bank Name</span></td>
        <td>
            <asp:DropDownList ID="DropDownList8" runat="server" Width="291px" 
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
            <span class="text">New Bank Branch</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox7" Runat="server" Width="295px" 
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
            <span class="text">Old Account Number</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox8" Runat="server" Width="295px" 
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
            <span class="text">
            <br />
            Date</span></td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerDate" Runat="server" Culture="en-US" 
                Skin="Outlook" Width="295px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Outlook"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
    </tr>
</table>

