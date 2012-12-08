<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberBenefitEligibility.ascx.cs" Inherits="User_Control_Life_Benefit_Application_MemberBenefitEligibility" %>

<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}
</style>

<link href="../../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table cellpadding="10" cellspacing="0" width="575">
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
            <asp:Label ID="Label3" runat="server" Text="Scheme ID:" 
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
        <td valign="top">
            <asp:Label ID="Label4" runat="server" Text="Payroll No.:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxPayrollNo" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
            </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="Label5" runat="server" Text="Member Name:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxMemberFullName" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" colspan="2">
            <asp:Label ID="Label13" runat="server" Text="BENEFITS ELIGIBILITY" 
                CssClass="text" Font-Bold="True" Font-Size="Large"></asp:Label>
          </td>
    </tr>
    <tr>
        <td valign="top" colspan="2">
            <table width="100%" cellpadding="0" cellspacing="0" class="benefitsDisplayTab">
                <tr>
                    <td width="75%">
                        <asp:Label ID="Label1" runat="server" Text="Checklist" 
                            CssClass="text" Font-Bold="True"></asp:Label>
                    </td>
                    <td width="12.5%" align="center">
                        &nbsp;
                        <asp:Label ID="Label14" runat="server" Text="Yes" 
                            CssClass="text" Font-Bold="True"></asp:Label>
                    </td>
                    <td width="12.5%" align="center">
                        &nbsp;
                        <asp:Label ID="Label15" runat="server" Text="No" 
                            CssClass="text" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="75%">
            <asp:Label ID="Label6" runat="server" Text="Date of Birth record exists?" 
                CssClass="text" Font-Italic="True"></asp:Label>
                    </td>
                    <td width="12.5%" align="center">
                        &nbsp;
                        <asp:Image ID="ImageDoBYes" runat="server" 
                            ImageUrl="~/images/Icons/button_ok.png" Width="32px" />
                    </td>
                    <td width="12.5%" align="center">
                        &nbsp;<asp:Image 
                            ID="ImageDoBNo" runat="server" ImageUrl="~/images/Icons/button_cancel.png" 
                            Width="32px" />
&nbsp;</td>
                </tr>
                <tr>
                    <td width="75%">
            <asp:Label ID="Label7" runat="server" Text="Date of Birth Evidence presented and accepted?" 
                CssClass="text" Font-Italic="True"></asp:Label>
                    </td>
                    <td width="12.5%" align="center">
                        &nbsp;
                        <asp:Image ID="ImageDoBEvidenceYes" runat="server" 
                            ImageUrl="~/images/Icons/button_ok.png" Width="32px" />
                    </td>
                    <td width="12.5%" align="center">
                        &nbsp;
                        <asp:Image ID="ImageDoBEvidenceNo" runat="server" 
                            ImageUrl="~/images/Icons/button_cancel.png" Width="32px" />
                    </td>
                </tr>
                <tr>
                    <td width="75%">
            <asp:Label ID="Label8" runat="server" Text="Date of Appointment record exists?" 
                CssClass="text" Font-Italic="True"></asp:Label>
                    </td>
                    <td width="12.5%" align="center">
                        &nbsp;
                        <asp:Image ID="ImageDoAYes" runat="server" 
                            ImageUrl="~/images/Icons/button_ok.png" Width="32px" />
                    </td>
                    <td width="12.5%" align="center">
                        <asp:Image ID="ImageDoANo" runat="server" 
                            ImageUrl="~/images/Icons/button_cancel.png" Width="32px" />
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td width="75%">
            <asp:Label ID="Label16" runat="server" Text="Date of Appointment Evidence presented and accepted?" 
                CssClass="text" Font-Italic="True"></asp:Label>
                    </td>
                    <td width="12.5%" align="center">
                        &nbsp;
                        <asp:Image ID="ImageDoAEvidenceYes" runat="server" 
                            ImageUrl="~/images/Icons/button_ok.png" Width="32px" />
                    </td>
                    <td width="12.5%" align="center">
                        <asp:Image ID="ImageDoAEvidenceNo" runat="server" 
                            ImageUrl="~/images/Icons/button_cancel.png" Width="32px" />
                    </td>
                </tr>
                <tr>
                    <td width="75%">
            <asp:Label ID="Label17" runat="server" Text="All Member's Service Breaks have Evidence presented and accepted?" 
                CssClass="text" Font-Italic="True"></asp:Label>
                    </td>
                    <td width="12.5%" align="center">
                        <asp:Image ID="ImageServiceBreaksEvidenceYes" runat="server" 
                            ImageUrl="~/images/Icons/button_ok.png" Width="32px" />
                    </td>
                    <td width="12.5%" align="center">
                        <asp:Image ID="ImageServiceBreaksEvidenceNo" runat="server" 
                            ImageUrl="~/images/Icons/button_cancel.png" Width="32px" />
                    </td>
                </tr>
                <tr>
                    <td width="75%">
            <asp:Label ID="Label18" runat="server" Text="Gross Annual Pension accrued up to June 30, 2012 processed?" 
                CssClass="text" Font-Italic="True"></asp:Label>
                    </td>
                    <td width="12.5%" align="center">
                        <asp:Image ID="ImageAnnualPensionProcessedYes" runat="server" 
                            ImageUrl="~/images/Icons/button_ok.png" Width="32px" />
                    </td>
                    <td width="12.5%" align="center">
                        <asp:Image ID="ImageAnnualPensionProcessedNo" runat="server" 
                            ImageUrl="~/images/Icons/button_cancel.png" Width="32px" />
                    </td>
                </tr>
            </table>        
        </td>
    </tr>
    <tr>
        <td valign="top" align="right" colspan="2">
            <telerik:RadButton ID="RadButtonViewGross" runat="server" 
                Text="View Accrued Gross Pension up to Last Financial Year" 
                ButtonType="LinkButton" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" onclick="RadButtonViewGross_Click">
            </telerik:RadButton>
            &nbsp;
            <telerik:RadButton ID="RadButtonProcessBenefit" runat="server" 
                Text="Process Benefits">
            </telerik:RadButton>
        </td>
    </tr>
    </table>

