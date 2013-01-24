<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RegisterDeath.ascx.cs" Inherits="User_Control_RegisterDeath" %>
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

.RadPicker_Outlook .rcCalPopup
{
	background-position:0 0;
}

.RadPicker_Outlook .rcCalPopup
{
	background-image:url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Outlook.Calendar.sprite.gif');
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

    </style>
<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
             <telerik:RadTextBox ID="RadTextBoxPensionID" Width="325px" Runat="server" 
                 Enabled="False" Visible="False">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label6" runat="server" Text="Member Scheme ID" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxSchemeID" Runat="server" Width="325px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="Member Full Name"></asp:Label></td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxMemberFullName" Runat="server" Width="325px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label14" runat="server" CssClass="text" Text="Date of Death"></asp:Label></td>
        <td align="left" valign="top">
            <telerik:RadDatePicker ID="RadDatePickerDateOfDeath" Runat="server" Culture="en-US" 
                Skin="Web20" Width="325px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" EmptyMessage="DD/MM/YYYY"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDateOfDeath" 
                runat="server" ControlToValidate="RadDatePickerDateOfDeath" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Place of Death"></asp:Label>
        </td>
        <td>
             <telerik:RadTextBox ID="RadTextBoxPlaceOfDeath" Width="325px" Runat="server" 
                Enabled="True">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
             <asp:Label ID="Label12" runat="server" CssClass="text" 
                 Text="Is Death Certificate presented?"></asp:Label></td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxEvidencePresented" Runat="server" 
                Width="80px" MarkFirstMatch="True">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Selected="True" 
                        Owner="RadComboBoxEvidencePresented" />
                    <telerik:RadComboBoxItem runat="server" Text="Yes" Value="True" 
                        Owner="RadComboBoxEvidencePresented" />
                    <telerik:RadComboBoxItem runat="server" Text="No" Value="False" 
                        Owner="RadComboBoxEvidencePresented" />
                </Items>
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidencePresented" 
                runat="server" ControlToValidate="RadComboBoxEvidencePresented" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
             <asp:Label ID="Label13" runat="server" CssClass="text" 
                Text="Is Death Certificate accepted?"></asp:Label></td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxRadComboBoxEvidenceAccepted" Runat="server" 
                Width="80px" MarkFirstMatch="True">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Selected="True" 
                        Owner="RadComboBoxRadComboBoxEvidenceAccepted" />
                    <telerik:RadComboBoxItem runat="server" Text="Yes" Value="True" 
                        Owner="RadComboBoxRadComboBoxEvidenceAccepted" />
                    <telerik:RadComboBoxItem runat="server" Text="No" Value="False" 
                        Owner="RadComboBoxRadComboBoxEvidenceAccepted" />
                </Items>
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceAccepted" 
                runat="server" ControlToValidate="RadComboBoxRadComboBoxEvidenceAccepted" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label11" runat="server" CssClass="text" 
                Text="Death Certificate Number"></asp:Label></td>
        <td>
                <telerik:RadTextBox ID="RadTextBoxDeathCertificateNumber" Width="325px" 
                    Runat="server">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDeathCertNo" 
                runat="server" ControlToValidate="RadTextBoxDeathCertificateNumber" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label8" runat="server" CssClass="text" 
                Text="Evidence verified by"></asp:Label></td>
        <td>
             <telerik:RadTextBox ID="RadTextBoxEvidenceVerifiedBy" Width="325px" Runat="server" 
                Enabled="True">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceVerifiedBy" 
                runat="server" ControlToValidate="RadTextBoxEvidenceVerifiedBy" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="Evidence verified on"></asp:Label></td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerVerifiedOn" Runat="server" Culture="en-US" 
                Skin="Web20" Width="325px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" EmptyMessage="DD/MM/YYYY"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
    </tr>

    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceVerfiedOn" 
                runat="server" ControlToValidate="RadDatePickerVerifiedOn" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label5" runat="server" CssClass="text" 
                Text="Death Certificate"></asp:Label>
        &nbsp;</td>
        <td>
            <telerik:RadButton ID="RadButtonDownloadFile" runat="server" 
                ButtonType="LinkButton" onclick="RadButtonDownloadFile_Click" Visible="False">
            </telerik:RadButton>
            <telerik:RadAsyncUpload ID="RadAsyncUpload1" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7" 
                onfileuploaded="RadAsyncUpload1_FileUploaded">
                <Localization Select="Select file" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td>
            <asp:Label ID="LabelUploadedFile" runat="server" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td>
            &nbsp;<asp:Button ID="RadButtonRegisterDeath" runat="server" 
                onclick="RadButtonRegisterDeath_Click" onload="RadButtonRegisterDeath_Load" 
                Text="Register Death" ValidationGroup="MemberEvidence1" />
            
            </td>
    </tr>
</table>

