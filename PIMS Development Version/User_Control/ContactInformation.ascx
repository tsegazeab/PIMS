﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactInformation.ascx.cs" Inherits="User_Control_ContactInformation" %>
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

<table cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label1" runat="server" Text="Email address" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxeMail" Runat="server" Width="295px">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                runat="server" ControlToValidate="RadTextBoxeMail" ErrorMessage="Invalid Email" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                SetFocusOnError="True" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="MemberPersonalInfo"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label2" runat="server" Text="Phone Number (Mobile)" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxPhoneMobile" Runat="server" Width="295px">
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
            <asp:Label ID="Label3" runat="server" Text="Phone Number (Fixed)" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxPhoneLandline" Runat="server" Width="295px">
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
            <asp:Label ID="Label12" runat="server" 
                Text="Postal Address" CssClass="text"></asp:Label>
            <br />
        </td>
        <td valign="top">
            <telerik:RadTextBox ID="RadTextBoxPostAddress" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="295px" Skin="Outlook">
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
                Text="Home State within South Sudan"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
                    <telerik:RadComboBox ID="RadComboBoxhomeState" Runat="server"  Width="295px" MarkFirstMatch="true">
            </telerik:RadComboBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
    
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorHomeState" runat="server" 
                ControlToValidate="RadComboBoxhomeState" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="MemberPersonalInfo"></asp:RequiredFieldValidator>
    
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label11" runat="server" 
                Text="Address" CssClass="text"></asp:Label>
            <br />
        </td>
        <td valign="top">
            <telerik:RadTextBox ID="RadTextBoxAddress" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="295px" Skin="Outlook">
            </telerik:RadTextBox>
        </td>
    </tr>
    </table>


