<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MDADetails.ascx.cs" Inherits="User_Control_Contribution_RSSAGENCY_MDADetails" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<style type="text/css">
    .style1
    {
        width: 100%;
    }

.RadInput
{
	vertical-align:middle;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput
{
	vertical-align:middle;
}


.RadInput
{
	vertical-align:middle;
}


.RadInput
{
	vertical-align:middle;
}


.RadInput
{
	vertical-align:middle;
}

.RadInput textarea
{
	vertical-align:bottom;
	overflow:auto;
	resize:none;
}

.RadInput textarea
{
	vertical-align:bottom;
	overflow:auto;
	resize:none;
}

</style>
<link href="../../../Styles/PISPITSSheet.css" rel="stylesheet" 
    type="text/css" />

<table>
    <tr>
        <td width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="MDA Name"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox4" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
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
            <asp:Label ID="Label2" runat="server" CssClass="text" Text="Government Level"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox5" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
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
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="Email Address"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox6" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
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
            <asp:Label ID="Label4" runat="server" CssClass="text" 
                Text="Phone Number (Mobile)"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox7" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
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
            <asp:Label ID="Label5" runat="server" CssClass="text" 
                Text="Phone Number (Landline)"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox8" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
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
            <asp:Label ID="Label6" runat="server" CssClass="text" Text="Postal Address"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox9" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
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
            <asp:Label ID="Label7" runat="server" CssClass="text" 
                Text="State where MDA is located"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox10" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
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
        <td valign="top" width="280">
            <asp:Label ID="Label8" runat="server" CssClass="text" Text="Address"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox1" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="295px" Skin="Outlook" BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
</table>

