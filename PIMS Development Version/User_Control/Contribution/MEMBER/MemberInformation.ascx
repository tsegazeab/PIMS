<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberInformation.ascx.cs" Inherits="User_Control_Contribution_MEMBER_MemberInformation" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../../DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}
</style>

<table cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label1" runat="server" Text="Scheme ID" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxSchemeID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" >
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
             <asp:Label ID="Label3" runat="server" Text="First Name" 
                CssClass="text"></asp:Label></td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxFirstName" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" >
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label4" runat="server" Text="Last Name" 
                CssClass="text"></asp:Label></td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxLastName" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" >
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label2" runat="server" Text="Payroll Number" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxPayrollNumber" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" >
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
                Text="Marital status"></asp:Label>
        </td>
        <td align="left" valign="top">
               <telerik:RadTextBox ID="RadTextBoxMaritalStatus" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" >
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
        <td valign="bottom" width="280">
            <asp:Label ID="Label13" runat="server" Text="Date of first appointment" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
              <telerik:RadTextBox ID="RadTextBoxDoA" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" >
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="bottom" width="280">
            <asp:Label ID="Label16" runat="server" Text="Date of birth" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
               <telerik:RadTextBox ID="RadTextBoxDoB" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" >
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label15" runat="server" 
                Text="Expected date of retirement " CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
   <telerik:RadTextBox ID="RadTextBoxDoR" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" >
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    </table>



