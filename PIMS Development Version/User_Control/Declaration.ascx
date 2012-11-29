<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Declaration.ascx.cs" Inherits="User_Control_Declaration" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="Grid_RequiredDocuments.ascx" tagname="Grid_RequiredDocuments" tagprefix="uc2" %>
<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

<style type="text/css">


.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
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
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
             <asp:Label ID="Label5"  Font-Bold="true" runat="server" Text="MEMBER DECLARATION" 
                CssClass="text"></asp:Label></td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
             &nbsp;</td>
        <td>
             &nbsp;</td>
        <td>
             &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
                         <asp:Label ID="Label24" runat="server" Text="Date of application" 
                CssClass="text"></asp:Label></td>
        <td colspan="3">
            <telerik:RadDatePicker ID="RadDatePickerDateOfApplication" Runat="server" Culture="en-US" 
                Skin="Web20" Width="295px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label9" runat="server" CssClass="text" 
                Text="Photo of member"></asp:Label>
        </td>
        <td colspan="3">
            <telerik:RadAsyncUpload ID="RadAsyncUploadmemberPhoto" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7">
                <Localization Select="Upload" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td width="280">
            
        </td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label10" runat="server" CssClass="text" 
                Text="Signature of member"></asp:Label></td>
        <td colspan="3">
            <telerik:RadAsyncUpload ID="RadAsyncUploadmemberSignature" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7">
                <Localization Select="Upload" />
            </telerik:RadAsyncUpload></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
             <asp:Label ID="Label8" Font-Bold="true" runat="server" Text="EMPLOYEE DECLARATION" 
                CssClass="text"></asp:Label></td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
             &nbsp;</td>
        <td>
             &nbsp;</td>
        <td>
             &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label26" runat="server" CssClass="text" Text="Date application was certified"></asp:Label></td>
        <td colspan="3">
            <telerik:RadDatePicker ID="RadDatePickerDateOfCertification" Runat="server" Culture="en-US" 
                Skin="Web20" Width="295px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label12" runat="server" CssClass="text" Text="Name of officer who certified the application"></asp:Label>
        </td>
        <td colspan="3">
            <telerik:RadTextBox ID="RadTextBoxnameofCertifyingOfficer" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            <asp:Label ID="Label13" runat="server" CssClass="text" Text="Title of officer who certified the application"></asp:Label>
        </td>
        <td colspan="3">
             <telerik:RadTextBox ID="RadTextBoxtitleofCertifyingOfficer" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            <asp:Label ID="Label14" runat="server" CssClass="text" Text="Signature of officer who certified the application"></asp:Label>
        </td>
        <td colspan="3">
            <telerik:RadAsyncUpload ID="RadAsyncUploadcertifyingofficerSignature" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7">
                <Localization Select="Select file" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    </table>




