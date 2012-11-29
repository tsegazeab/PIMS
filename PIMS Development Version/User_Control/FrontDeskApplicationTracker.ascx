<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FrontDeskApplicationTracker.ascx.cs" Inherits="FrontDeskApplicationTracker" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

<%@ Register src="Grid_RequiredDocuments.ascx" tagname="Grid_RequiredDocuments" tagprefix="uc2" %>

<link href="Styles/UserCtrlSheet.css" rel="stylesheet" type="text/css" />
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

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
    display: -moz-inline-stack;
    display: inline-block;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
    display: -moz-inline-stack;
    display: inline-block;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
    display: -moz-inline-stack;
    display: inline-block;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
    display: -moz-inline-stack;
    display: inline-block;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
    display: -moz-inline-stack;
    display: inline-block;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

    .style1
    {
        width: 100%;
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
            <asp:Label ID="Label1" runat="server" Text="Date request/ form was received" 
                CssClass="text"></asp:Label>
        </td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerFormReceiptDate" Runat="server" Culture="en-US" 
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
            <asp:Label ID="Label2" runat="server" Text="Applicant National ID Number" 
                CssClass="text"></asp:Label>
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
            <asp:Label ID="Label3" runat="server" Text="Applicant Establishment Number" 
                CssClass="text"></asp:Label>
        </td>
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
            <asp:Label ID="Label4" runat="server" Text="Type of application" 
                CssClass="text"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="291px">
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
        <td colspan="2" width="280">
            <asp:Label ID="Label11" runat="server" 
                Text="Required documents/ evidence seen or verified" CssClass="textB"></asp:Label>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" width="280">
            <uc2:Grid_RequiredDocuments ID="Grid_RequiredDocuments1" runat="server" />
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    </table>


