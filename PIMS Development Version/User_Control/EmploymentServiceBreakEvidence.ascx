<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EmploymentServiceBreakEvidence.ascx.cs" Inherits="User_Control_EmploymentServiceBreakEvidence" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

<style type="text/css">
    .style1
    {
        width: 100%;
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
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Evidence Date"></asp:Label>
        </td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerEvidenceDate" Runat="server" Culture="en-US" 
                Skin="Outlook" Width="325px" MinDate="1800-01-01">
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
            <asp:Label ID="Label2" runat="server" CssClass="text" 
                Text="Title of certifying officer"></asp:Label>
        </td>
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
            <asp:Label ID="Label3" runat="server" CssClass="text" 
                Text="Name of certifying officer"></asp:Label>
        </td>
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
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="Evidence Type"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList4" runat="server" Width="291px" 
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
            <asp:Label ID="Label5" runat="server" CssClass="text" Text="Evidence Document"></asp:Label>
        </td>
        <td>
            <telerik:RadAsyncUpload ID="RadAsyncUpload1" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7">
                <Localization Select="Select file" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label6" runat="server" CssClass="text" Text="Evidence Comment"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox1" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="295px" Skin="Outlook" BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
</table>

