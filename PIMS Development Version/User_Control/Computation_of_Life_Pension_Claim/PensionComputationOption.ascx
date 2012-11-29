<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PensionComputationOption.ascx.cs" Inherits="User_Control_Computation_of_Life_Pension_Claim_PensionComputationOption" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<link href="../../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table class="style1">
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Computation Type"></asp:Label>
        </td>
        <td valign="top">
            <asp:DropDownList ID="DropDownList2" runat="server" Width="291px" 
                BackColor="WhiteSmoke" 
                >
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Early pension (5 or less years before retirement age</asp:ListItem>
                <asp:ListItem>Late pension (After retirement age)</asp:ListItem>
                <asp:ListItem>Normal pension (At retirement age)</asp:ListItem>
                <asp:ListItem>Refund of contribution (2 or less years of service)</asp:ListItem>
            </asp:DropDownList>
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
            <asp:Label ID="Label2" runat="server" CssClass="text" 
                Text="Commute 1/3 of the pension benefit"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server" Width="291px" 
                BackColor="WhiteSmoke">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
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
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

