<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ViewMemberIdentity.ascx.cs" Inherits="User_Control_ViewMemberIdentity" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        border-collapse: collapse;
    }
.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
}

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}
</style>

<table cellpadding="2" class="style1" width="100%" align="center">
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxPensionID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="50%">
            <asp:Label ID="Label3" runat="server" Text="Schema ID" 
                CssClass="text"></asp:Label>
          </td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxSchemaID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="50%">
            <asp:Label ID="Label4" runat="server" Text="Nationality Certificate Number" 
                CssClass="text"></asp:Label>
          </td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxNationalityID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="50%">
            <asp:Label ID="Label5" runat="server" Text="Member Name" 
                CssClass="text"></asp:Label>
          </td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxMemberFullName" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="50%">
            <asp:Label ID="Label6" runat="server" Text="Member Photo" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberPhoto" runat="server" />
        </td>
    </tr>
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="50%">
            <asp:Label ID="Label7" runat="server" Text="Member Signature" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberSignature" runat="server" />
        </td>
    </tr>
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="50%">
            <asp:Label ID="Label8" runat="server" Text="Right Thumbprint" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberRightThumbprint" 
                runat="server" />
        </td>
    </tr>
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="50%">
            <asp:Label ID="Label9" runat="server" Text="Left Thumbprint" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberLeftThumbprint" 
                runat="server" />
        </td>
    </tr>
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="50%">
            <asp:Label ID="Label10" runat="server" Text="Right Four Fingerprint" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberRightFourFingerprint" 
                runat="server" />
        </td>
    </tr>
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="50%">
            <asp:Label ID="Label11" runat="server" Text="Left Four Fingerprint" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberLeftFourFingerprint" 
                runat="server" />
        </td>
    </tr>
    <tr>
        <td width="50%">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    </table>

