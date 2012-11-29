<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DetailsOfPersonApplying.ascx.cs" Inherits="User_Control_DetailsOfPersonApplying" %>
<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<style type="text/css">
    .style1
    {
        width: 100%;
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

<table class="style1">
    <tr>
        <td width="280">
            <span class="text">Relationship with deceased</span></td>
        <td>
            <asp:DropDownList ID="DropDownList10" runat="server" Width="291px" 
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
            <span class="text">National ID/ Passport Number</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox18" Runat="server" Width="295px" 
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
            <telerik:RadTextBox ID="RadTextBox17" Runat="server" Width="295px" 
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
            <telerik:RadTextBox ID="RadTextBox16" Runat="server" Width="295px" 
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
            <span class="text">Gender</span></td>
        <td>
            <asp:DropDownList ID="DropDownList9" runat="server" Width="291px" 
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
            <span class="text">
            <br />
            Date of Birth</span></td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerDateOfBirth" Runat="server" Culture="en-US" 
                Skin="Outlook" Width="295px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Outlook"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
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
            <span class="text">Marital Status</span></td>
        <td>
            <asp:DropDownList ID="DropDownList11" runat="server" Width="291px" 
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
            <span class="text">Email Address</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox15" Runat="server" Width="295px" 
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
            <span class="text">Phone Number (Mobile)</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox14" Runat="server" Width="295px" 
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
            <span class="text">Phone Number (Landline)</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox10" Runat="server" Width="295px" 
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
            <span class="text">Postal Address</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox12" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Height="40px">
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
            <span class="text">Physical/ Residential Address</span></td>
        <td>
            <telerik:RadTextBox ID="RadTextBox13" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Height="40px">
            </telerik:RadTextBox>
        </td>
    </tr>
</table>

