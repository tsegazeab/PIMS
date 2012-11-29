<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Eligibility.ascx.vb" Inherits="User_Control_Life_Benefit_Application_Eligibility" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<link href="../../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table>
    <tr>
        <td width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Benefit type"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="291px" 
                BackColor="WhiteSmoke">
            </asp:DropDownList>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Run eligibility test" />
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" width="280">
            <telerik:RadGrid ID="RadGrid1" runat="server" Skin="Windows7">
            </telerik:RadGrid>
        </td>
    </tr>
</table>

