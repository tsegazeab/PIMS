<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ApplicationDetails.ascx.vb" Inherits="User_Control_Life_Benefit_Application_ApplicationDetails" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

<style type="text/css">
    .style1
    {
        width: 100%;
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

.RadUpload_Windows7
{
    font: normal 11px/11px "Segoe UI", Arial, sans-serif;
}

.RadUpload
{
	width: 430px; /*default*/
	text-align: left;
}

.RadUpload_Windows7
{
    font: normal 11px/11px "Segoe UI", Arial, sans-serif;
}

.RadUpload
{
	width: 430px; /*default*/
	text-align: left;
}

.RadUpload .ruInputs
{
	list-style:none;
	margin:0;
	padding:0;
}

.RadUpload .ruInputs
{
	zoom:1;/*IE fix - removing items on the client*/
}

.RadUpload .ruInputs
{
	list-style:none;
	margin:0;
	padding:0;
}

.RadUpload .ruInputs
{
	zoom:1;/*IE fix - removing items on the client*/
}

.RadUpload .ruInputs li
{
    margin: 0 0 5px;
}

.RadUpload .ruInputs li
{
    margin: 0 0 5px;
}

.RadUpload .ruFileWrap
{
	position: relative;
	white-space:nowrap;
	display: inline-block;
	vertical-align: top;
    padding-right: 0.8em;
    line-height: 20px;
    zoom: 1;
}

.RadUpload .ruFileWrap
{
	position: relative;
	white-space:nowrap;
	display: inline-block;
	vertical-align: top;
    padding-right: 0.8em;
    line-height: 20px;
    zoom: 1;
}

.RadUpload_Windows7 .ruFakeInput
{
    border-color: #abadb3 #dbdfe6 #e3e9ef #e2e3ea;
    color: #000;
}

.RadUpload .ruFakeInput
{
    height: 16px;
    margin-right: -1px;
    vertical-align: middle;
    background-position: 0 -93px;
    background-repeat: repeat-x;
    background-color: #fff;
    
    line-height /*\**/: 20px\9; /* IE8 Standards still broken + old hacks don't work */
    height /*\**/: 20px\9;
    padding-top /*\**/: 0\9;
}

.RadUpload .ruFakeInput
{
	float: none;
	vertical-align:top;
}

.RadUpload .ruFakeInput
{
    border-width: 1px;
    border-style: solid;
    line-height: 18px;
    padding: 4px 4px 0 4px;

    -moz-box-sizing: content-box; /* Quirksmode height fix */
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}

.RadUpload_Windows7 .ruFakeInput
{
    border-color: #abadb3 #dbdfe6 #e3e9ef #e2e3ea;
    color: #000;
}

.RadUpload .ruFakeInput
{
    height: 16px;
    margin-right: -1px;
    vertical-align: middle;
    background-position: 0 -93px;
    background-repeat: repeat-x;
    background-color: #fff;
    
    line-height /*\**/: 20px\9; /* IE8 Standards still broken + old hacks don't work */
    height /*\**/: 20px\9;
    padding-top /*\**/: 0\9;
}

.RadUpload .ruFakeInput
{
	float: none;
	vertical-align:top;
}

.RadUpload .ruFakeInput
{
    border-width: 1px;
    border-style: solid;
    line-height: 18px;
    padding: 4px 4px 0 4px;

    -moz-box-sizing: content-box; /* Quirksmode height fix */
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}

.RadUpload_Windows7 .ruButton
{
    background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Windows7.Upload.ruSprite.png');
    color: #1e395b;
}

.RadUpload .ruBrowse
{
    width: 65px;
    margin-left: 4px;
    background-position: 0 0;
}

.RadUpload .ruButton
{
    width: 79px;
    height: 22px;
    border: 0;
    padding-bottom: 2px;
    background-position: 0 -23px;
    background-repeat: no-repeat;
    background-color: transparent;
    text-align: center;
}

.RadUpload .ruButton
{
	float: none;
	vertical-align:top;
}

.RadUpload_Windows7 .ruButton
{
    background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Windows7.Upload.ruSprite.png');
    color: #1e395b;
}

.RadUpload .ruBrowse
{
    width: 65px;
    margin-left: 4px;
    background-position: 0 0;
}

.RadUpload .ruButton
{
    width: 79px;
    height: 22px;
    border: 0;
    padding-bottom: 2px;
    background-position: 0 -23px;
    background-repeat: no-repeat;
    background-color: transparent;
    text-align: center;
}

.RadUpload .ruButton
{
	float: none;
	vertical-align:top;
}

</style>
<link href="../../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table class="style1">
    <tr>
        <td width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" 
                Text="Pension Identification Number"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox2" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Text="0123456789">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
            <asp:Label ID="Label2" runat="server" CssClass="text" Text="First Name"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox3" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="Last Name"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox4" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="Gender"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox9" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
            <br />
            <asp:Label ID="Label5" runat="server" CssClass="text" 
                Text="Date of employment termination"></asp:Label>
        </td>
        <td>
            <uc1:DayMonthYear ID="DayMonthYear1" runat="server" />
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <br />
            <asp:Label ID="Label6" runat="server" CssClass="text" 
                Text="Date of final salary"></asp:Label>
        </td>
        <td>
            <uc1:DayMonthYear ID="DayMonthYear2" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <asp:Label ID="Label7" runat="server" CssClass="text" 
                Text="Reason/ type of benefit"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="291px" 
                BackColor="WhiteSmoke">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <br />
            <asp:Label ID="Label8" runat="server" CssClass="text" 
                Text="Date of application"></asp:Label>
        </td>
        <td>
            <uc1:DayMonthYear ID="DayMonthYear3" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <br />
            <asp:Label ID="Label9" runat="server" CssClass="text" Text="Date of certifying"></asp:Label>
        </td>
        <td>
            <uc1:DayMonthYear ID="DayMonthYear4" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <asp:Label ID="Label10" runat="server" CssClass="text" 
                Text="Name of certifying officer"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox7" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <asp:Label ID="Label11" runat="server" CssClass="text" 
                Text="Title of certifying officer"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox8" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <asp:Label ID="Label12" runat="server" CssClass="text" 
                Text="Signature of certifying officer"></asp:Label>
        </td>
        <td>
            <telerik:RadAsyncUpload ID="RadAsyncUpload1" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7">
                <Localization Select="Upload" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <asp:Label ID="Label13" runat="server" CssClass="text" 
                Text="Signature of applicant"></asp:Label>
        </td>
        <td>
            <telerik:RadAsyncUpload ID="RadAsyncUpload2" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7">
                <Localization Select="Upload" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <asp:Label ID="Label14" runat="server" CssClass="text" 
                Text="Photo of applicant"></asp:Label>
        </td>
        <td>
            <telerik:RadAsyncUpload ID="RadAsyncUpload3" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7">
                <Localization Select="Upload" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="280">
            <asp:Label ID="Label15" runat="server" CssClass="text" 
                Text="Application status"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox6" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
</table>

