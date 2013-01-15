<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberIdentity.ascx.cs" Inherits="User_Control_MemberIdentity" %>

<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}
</style>

<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

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
            <asp:Label ID="Label4" runat="server" Text="Nationality Certificate Number:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxNationalityID" Runat="server" Width="295px" 
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
        <td valign="top">
            <asp:Label ID="Label6" runat="server" Text="Member Photo:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberPhoto" runat="server" 
                AutoAdjustImageControlSize="False" Width="150px" />
            <telerik:RadAsyncUpload ID="RadAsyncUploadMemberPhoto" runat="server" 
                Skin="Vista" onfileuploaded="RadAsyncUploadMemberPhoto_FileUploaded" 
                Width="295px">
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="Label7" runat="server" Text="Member Signature:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberSignature" runat="server" 
                AutoAdjustImageControlSize="False" Width="150px" />
            <telerik:RadAsyncUpload ID="RadAsyncUploadMemberSignature" runat="server" 
                Skin="Vista" onfileuploaded="RadAsyncUploadMemberSignature_FileUploaded" 
                Width="295px">
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="Label8" runat="server" Text="Right Thumbprint:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberRightThumbprint" runat="server" 
                AutoAdjustImageControlSize="False" Width="150px" />
            <telerik:RadAsyncUpload ID="RadAsyncUploadMemberRightThumbprint" runat="server" 
                Skin="Vista" 
                onfileuploaded="RadAsyncUploadMemberRightThumbprint_FileUploaded" 
                Width="295px">
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="Label9" runat="server" Text="Left Thumbprint:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberLeftThumbprint" runat="server" 
                AutoAdjustImageControlSize="False" Width="150px" />
            <telerik:RadAsyncUpload ID="RadAsyncUploadMemberLeftThumbprint" runat="server" 
                Skin="Vista" 
                onfileuploaded="RadAsyncUploadMemberLeftThumbprint_FileUploaded" 
                Width="295px">
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="Label10" runat="server" Text="Right Four Fingerprint:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberRightFourFingerprint" 
                runat="server" AutoAdjustImageControlSize="False" Width="150px" />
            <telerik:RadAsyncUpload ID="RadAsyncUploadMemberRightFourFingerprint" runat="server" 
                Skin="Vista" 
                onfileuploaded="RadAsyncUploadMemberRightFourFingerprint_FileUploaded" 
                Width="295px">
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="Label11" runat="server" Text="Left Four Fingerprint:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top">
            <telerik:RadBinaryImage ID="RadBinaryImageMemberLeftFourFingerprint" 
                runat="server" AutoAdjustImageControlSize="False" Width="150px" />
            <telerik:RadAsyncUpload ID="RadAsyncUploadMemberLeftFourFingerprint" runat="server" 
                Skin="Vista" 
                onfileuploaded="RadAsyncUploadMemberLeftFourFingerprint_FileUploaded" 
                Width="295px">
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            <telerik:RadButton ID="RadButtonSaveIdentity" runat="server" 
                onclick="RadButtonSaveIdentity_Click" Skin="Vista" Text="Save Identity">
            </telerik:RadButton>
        </td>
    </tr>
</table>

