<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PersonalInformation.ascx.cs" Inherits="User_Control_PersonalInformation" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>


<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}

.RadPicker
{
	vertical-align:middle;
}

.RadPicker .rcTable
{
	table-layout:auto;
}

.RadPicker_Vista .rcCalPopup
{
	background-position:0 -2000px;
}

.RadPicker_Vista .rcCalPopup
{
	background-image:url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Vista.Calendar.sprite.gif');
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

<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />


<table cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxPensionID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Visible="False">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label1" runat="server" Text="Scheme ID" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxSchemeID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280" 
            style="font-size: small; font-family: Arial, Helvetica, sans-serif">
            <asp:Label ID="Label17" runat="server" Text="Prefix" 
                CssClass="text"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
                         <telerik:RadComboBox ID="RadComboBoxprefix" Runat="server"   Width="295px" MarkFirstMatch="true"> 
            </telerik:RadComboBox>
        </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrefix" runat="server" 
                ControlToValidate="RadComboBoxprefix" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
      <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label3" runat="server" Text="Surname (last name)" 
                CssClass="text"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
          </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxlastName" Runat="server" Width="295px" 
                >
            </telerik:RadTextBox>
          </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSurname" runat="server" 
                ControlToValidate="RadTextBoxlastName" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
          </td>
    </tr>
      <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label6" runat="server" Text="Given name (first name)" 
                CssClass="text"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxfirstName" Runat="server" Width="295px">
            </telerik:RadTextBox>
        </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" 
                ControlToValidate="RadTextBoxfirstName" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label9" runat="server" Text="Gender" CssClass="text"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
         <telerik:RadComboBox ID="RadComboBoxgender" Runat="server" Width="295px" MarkFirstMatch="true">
            </telerik:RadComboBox>
        </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" 
                ControlToValidate="RadComboBoxgender" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label15" runat="server" Text="Date of Birth" CssClass="text"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
            <telerik:RadDatePicker ID="RadDatePickerDateOfBirth" Runat="server" Culture="en-US" 
                Skin="Web20" Width="100%" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" EmptyMessage="DD/MM/YYYY" 
                    CausesValidation="True"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDoB" runat="server" 
                ControlToValidate="RadDatePickerDateOfBirth" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
       <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label8" runat="server" CssClass="text" 
                Text="Marital status"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
             <telerik:RadComboBox ID="RadComboBoxmaritalStatus" Runat="server"  Width="295px" MarkFirstMatch="true">
            </telerik:RadComboBox>
        </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMaritalStatus" 
                runat="server" ControlToValidate="RadComboBoxmaritalStatus" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label10" runat="server" Text="Nationality Certificate Number" 
                CssClass="text"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
            <telerik:RadMaskedTextBox ID="RadTextBoxnationalID" Runat="server" 
                DisplayMask="#########" DisplayPromptChar=" " Mask="#########" PromptChar=" " 
                Width="295px">
            </telerik:RadMaskedTextBox>
        </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNationalID" 
                runat="server" ControlToValidate="RadTextBoxnationalID" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label14" runat="server" Text="Personal Number" 
                CssClass="text"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
            <telerik:RadMaskedTextBox ID="RadTextBoxpersonalNumber" Runat="server" 
                Mask="##############" PromptChar=" " Width="295px">
            </telerik:RadMaskedTextBox>
        </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPersonalNumber" 
                runat="server" ControlToValidate="RadTextBoxpersonalNumber" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label11" runat="server" Text="Payroll Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxpayrollNumber" Runat="server" Width="295px" 
              >
            </telerik:RadTextBox>
        </td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label5" runat="server" Text="Establishment Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxEstablishmentNumber" Runat="server" Width="295px" 
                >
            </telerik:RadTextBox>
        </td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
        <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
        <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label12" runat="server" Text="Date of first appointment" 
                CssClass="text"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
            </td>
        <td align="left" valign="top">
            <telerik:RadDatePicker ID="RadDatePickerDateOfAppointment" Runat="server" Culture="en-US" 
                Skin="Web20" Width="100%" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" EmptyMessage="DD/MM/YYYY"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
            </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDateOfAppointment" runat="server" 
                ControlToValidate="RadDatePickerDateOfAppointment" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
            </td>
    </tr>
   
 
   
   
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
  
  
   
   
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label16" runat="server" Text="Current or Last RSS Agency/MDA" 
                CssClass="text"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
 <telerik:RadComboBox ID="RadComboBoxcurrentMDA"  Width="295px" Runat="server" MarkFirstMatch="true">
            </telerik:RadComboBox>
        </td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCurrentMDA" runat="server" 
                ControlToValidate="RadComboBoxcurrentMDA" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
  
  
    </table>


