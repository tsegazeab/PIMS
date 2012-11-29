<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberInformation.ascx.cs" Inherits="User_Control_Contribution_MEMBER_MemberInformation" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../../DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}
</style>

<table cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label1" runat="server" Text="Pension ID" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBox2" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Text="0123456789">
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
            <asp:Label ID="Label2" runat="server" Text="Payroll Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBox7" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Text="0123456789">
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
            <asp:Label ID="Label8" runat="server" CssClass="text" 
                Text="Marital status"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBox4" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
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
        <td valign="bottom" width="280">
            <asp:Label ID="Label12" runat="server" Text="Date of joining SSPF" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <uc1:DayMonthYear ID="DayMonthYear2" runat="server" />
        </td>
    </tr>
    <tr>
        <td valign="bottom" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="bottom" width="280">
            <asp:Label ID="Label13" runat="server" Text="Date of first appointment" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <uc1:DayMonthYear ID="DayMonthYear3" runat="server" />
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="bottom" width="280">
            <asp:Label ID="Label16" runat="server" Text="Date of birth" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <uc1:DayMonthYear ID="DayMonthYear4" runat="server" />
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
            <asp:Label ID="Label15" runat="server" 
                Text="Expected retirement age" CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBox8" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    </table>



