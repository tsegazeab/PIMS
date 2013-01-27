<%@ Control Language="C#" AutoEventWireup="true" CodeFile="currentPosition.ascx.cs" Inherits="User_Control_currentPosition" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>


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
            <asp:Label ID="Label1" runat="server" Text="Current or last position" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxecurrentPosition" Runat="server" Width="295px">
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
            <asp:Label ID="Label2" runat="server" Text="Current or last grade" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
                  <telerik:RadComboBox ID="RadComboBoxcurrentGrade"  Width="295px" Runat="server" MarkFirstMatch="true">
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
            <asp:Label ID="Label3" runat="server" Text="Current or last RSS agency/MDA" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
 <telerik:RadComboBox ID="RadComboBoxcurrentMDA"  Width="295px" Runat="server" MarkFirstMatch="true">
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
            <asp:Label ID="Label12" runat="server" 
                Text="Current or last workstation/department" CssClass="text"></asp:Label>
            <br />
        </td>
        <td valign="top">
                <telerik:RadComboBox ID="RadComboBoxworkStation"  Width="295px" Runat="server" 
                     MarkFirstMatch="true">
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
            <asp:Label ID="Label8" runat="server" CssClass="text" 
                Text="Current state within south Sudan (of the position)"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadComboBox ID="RadComboBoxcurrentState"  Width="295px" Runat="server" MarkFirstMatch="true">
            </telerik:RadComboBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            
        </td>
    </tr>
    </table>


