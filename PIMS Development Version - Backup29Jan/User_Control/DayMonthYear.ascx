<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DayMonthYear.ascx.cs" Inherits="DayMonthYear" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<link href="Styles/UserCtrlSheet.css" rel="stylesheet" type="text/css" />

<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Day" CssClass="text"></asp:Label>
        </td>
        <td>
            &nbsp;&nbsp;
            &nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Month" CssClass="text"></asp:Label>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            &nbsp;</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Year" CssClass="text"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:DropDownList ID="DropDownDay" runat="server" Width="80px" 
                BackColor="WhiteSmoke">
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownMonth" runat="server" Width="80px" 
                BackColor="WhiteSmoke">
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownYear" runat="server" Width="80px" 
                BackColor="WhiteSmoke">
            </asp:DropDownList>
        </td>
    </tr>
</table>

