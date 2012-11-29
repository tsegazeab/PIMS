<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PensionSpecialistTracker.ascx.cs" Inherits="PensionSpecialistTracker" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>
<link href="Styles/UserCtrlSheet.css" rel="stylesheet" type="text/css" />

<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label1" runat="server" Text="Date of application receipt" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBox2" Runat="server" Width="295px">
            </telerik:RadTextBox>
        </td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label2" runat="server" Text="Application National ID Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBox3" Runat="server" Width="295px">
            </telerik:RadTextBox>
        </td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label3" runat="server" Text="Applicant Payroll Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBox4" Runat="server" Width="295px">
            </telerik:RadTextBox>
        </td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label4" runat="server" Text="Date of form return" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <uc1:DayMonthYear ID="DayMonthYear1" runat="server" />
        </td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label8" runat="server" CssClass="text" 
                Text="Reason for form return"></asp:Label>
        </td>
        <td align="left" valign="top">
            <asp:DropDownList ID="DropDownList2" runat="server" Width="291px">
            </asp:DropDownList>
        </td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label5" runat="server" 
                Text="Type of application/ form being returned" CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <asp:DropDownList ID="DropDownList3" runat="server" Width="291px">
            </asp:DropDownList>
        </td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label6" runat="server" 
                Text="Who in the application section is returned to?" CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <asp:DropDownList ID="DropDownList4" runat="server" Width="291px">
            </asp:DropDownList>
        </td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label7" runat="server" Text="Comment/ additional information" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBox1" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="295px" Skin="Outlook">
            </telerik:RadTextBox>
        </td>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" valign="top">
            &nbsp;</td>
    </tr>
    </table>

