﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PersonalInformationUpdate.ascx.cs" Inherits="User_Control_PersonalInformationUpdate" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}
</style>

<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table cellpadding="0" cellspacing="0" width="500">
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
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280" 
            style="font-size: small; font-family: Arial, Helvetica, sans-serif">
            <asp:Label ID="Label17" runat="server" Text="Prefix" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
                         <telerik:RadComboBox ID="RadComboBoxprefix" Runat="server"   Width="295px" MarkFirstMatch="true"> 
            </telerik:RadComboBox>
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
            <asp:Label ID="Label3" runat="server" Text="Surname (last name)" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxlastName" Runat="server" Width="295px" 
                >
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
            <asp:Label ID="Label6" runat="server" Text="Given name (first name)" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxfirstName" Runat="server" Width="295px" 
               >
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
            <asp:Label ID="Label9" runat="server" Text="Gender" CssClass="text"></asp:Label>
        &nbsp;</td>
        <td align="left" valign="top">
         <telerik:RadComboBox ID="RadComboBoxgender" Runat="server" Width="295px" MarkFirstMatch="true">
            </telerik:RadComboBox>
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
            <asp:Label ID="Label15" runat="server" CssClass="text" 
                Text="Date of Birth"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadDatePicker ID="RadDatePickerDateOfBirth" Runat="server" Culture="en-US" 
                Skin="Vista" Width="100%" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Vista"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
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
            <asp:Label ID="Label8" runat="server" CssClass="text" 
                Text="Marital status"></asp:Label>
        </td>
        <td align="left" valign="top">
             <telerik:RadComboBox ID="RadComboBoxmaritalStatus" Runat="server"  Width="295px" MarkFirstMatch="true">
            </telerik:RadComboBox>
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
            <asp:Label ID="Label10" runat="server" Text="Nationality Certificate Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxnationalID" Runat="server" Width="295px" 
                >
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
            <asp:Label ID="Label14" runat="server" Text="Personal Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxpersonalNumber" Runat="server" Width="295px" 
              >
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
            <asp:Label ID="Label11" runat="server" Text="Payroll Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxpayrollNumber" Runat="server" Width="295px" 
              >
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
            <asp:Label ID="Label5" runat="server" Text="Establishment Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxEstablishmentNumber" Runat="server" Width="295px" 
                >
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
            <asp:Label ID="Label12" runat="server" Text="Date of First Appointment" 
                CssClass="text"></asp:Label>
            </td>
        <td align="left" valign="top">
            <telerik:RadDatePicker ID="RadDatePickerDateOfAppointment" Runat="server" Culture="en-US" 
                Skin="Vista" Width="100%" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Vista"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
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
        </td>
        <td align="left" valign="top">
 <telerik:RadComboBox ID="RadComboBoxcurrentMDA"  Width="295px" Runat="server" MarkFirstMatch="true">
            </telerik:RadComboBox>
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
            &nbsp;</td>
        <td align="left" valign="top">
            <telerik:RadButton ID="RadButtonUpdate" runat="server" Text="Update" 
                Width="150" onclick="RadButtonUpdate_Click">
            </telerik:RadButton>
        </td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>

</table>


