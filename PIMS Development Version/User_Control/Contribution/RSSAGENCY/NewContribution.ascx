<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewContribution.ascx.cs" Inherits="User_Control_Contribution_RSSAGENCY_NewContribution" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

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

</style>
<link href="../../../Styles/PISPITSSheet.css" rel="stylesheet" 
    type="text/css" />

<table>
    <tr>
        <td width="270" align="left">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Year"></asp:Label>
        </td>
        <td align="left">
            <asp:DropDownList ID="DropDownDay" runat="server" Width="80px" 
                BackColor="WhiteSmoke">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td width="270" align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="270" align="left">
            <asp:Label ID="Label2" runat="server" CssClass="text" Text="Month"></asp:Label>
        </td>
        <td align="left">
            <asp:DropDownList ID="DropDownDay0" runat="server" Width="80px" 
                BackColor="WhiteSmoke">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td width="270" align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="270" align="left">
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="Agency"></asp:Label>
        </td>
        <td align="left">
            <asp:DropDownList ID="DropDownList2" runat="server" Width="291px" 
                BackColor="WhiteSmoke">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td width="270" align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="270" align="left">
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="Gross"></asp:Label>
        </td>
        <td align="left">
            <telerik:RadTextBox ID="RadTextBox3" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="270" align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="270" align="left">
            <asp:Label ID="Label5" runat="server" CssClass="text" Text="Basic"></asp:Label>
        </td>
        <td align="left">
            <telerik:RadTextBox ID="RadTextBox4" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="270" align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="270" align="left">
            <asp:Label ID="Label6" runat="server" CssClass="text" Text="Allowance"></asp:Label>
        </td>
        <td align="left">
            <telerik:RadTextBox ID="RadTextBox5" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="270" align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="270" align="left">
            <asp:Label ID="Label7" runat="server" CssClass="text" Text="Employer"></asp:Label>
        </td>
        <td align="left">
            <telerik:RadTextBox ID="RadTextBox6" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="270" align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="270" align="left">
            <asp:Label ID="Label8" runat="server" CssClass="text" Text="Employee"></asp:Label>
        </td>
        <td align="left">
            <telerik:RadTextBox ID="RadTextBox7" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="270" align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 40px" width="270" align="left">
            <asp:Label ID="Label9" runat="server" CssClass="text" Text="Total"></asp:Label>
        </td>
        <td align="left">
            <telerik:RadTextBox ID="RadTextBox8" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
</table>

