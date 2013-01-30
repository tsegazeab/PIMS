<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DisplayMemberBenefits.ascx.cs" Inherits="User_Control_Life_Benefit_Application_ProcessMemberBenefits" %>

<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}
</style>

<link href="../../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table cellpadding="4" cellspacing="0" width="575" class="benefitsDisplayTab">
    <tr>
        <td width="5%">&nbsp;</td>
        <td width="40%">&nbsp;</td>
        <td width="25%">&nbsp;</td>
        <td width="25%">&nbsp;</td>
        <td width="5%">&nbsp;</td>
    </tr>
    <tr>
        <td valign="top" colspan="3">
            <asp:Label ID="Label9" runat="server" Text="INFORMATION" 
                CssClass="text" Font-Bold="True" Font-Size="Large"></asp:Label>
          </td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label3" runat="server" Text="Name:" 
                CssClass="text" Font-Bold="True"></asp:Label>
          </td>
        <td align="left" valign="top" colspan="2">
            <asp:Label ID="LabelName" runat="server" 
                CssClass="text" Font-Bold="True"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label4" runat="server" Text="Nationality Certificate No.:" 
                CssClass="text"></asp:Label>
          </td>
          <td align="right">
            <asp:Label ID="LabelNationalityID" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td><td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label5" runat="server" Text="Workstation:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top" colspan="3">
            <asp:Label ID="LabelWorkStation" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label6" runat="server" Text="MDA:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="left" valign="top" colspan="3">
            <asp:Label ID="LabelMDA" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label7" runat="server" Text="Payroll Number:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top">
            <asp:Label ID="LabelPayrollNumber" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label8" runat="server" Text="Establishment Number:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top">
            <asp:Label ID="LabelEstablishmentNo" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label10" runat="server" Text="Date of Birth:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top">
            <asp:Label ID="LabelDateOfBirth" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label11" runat="server" Text="Date of Appointment:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top">
            <asp:Label ID="LabelDateOfAppointment" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top" style="border-left: 2px solid Black; border-top: 2px solid Black;">
            &nbsp;</td>
        <td align="right" valign="top" style="border-right: 2px solid Black; border-top: 2px solid Black;">
            <asp:Label ID="LabelLastMonth" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top" style="border-left: 2px solid Black; border-bottom: 2px solid Black;">
            <asp:Label ID="Label12" runat="server" Text="Gross Salary for Month:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top" style="border-right: 2px solid Black; border-bottom: 2px solid Black;">
            <asp:Label ID="LabelGrossSalary" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td valign="top" colspan="3">
            <asp:Label ID="Label13" runat="server" Text="PARAMETER CALCULATIONS" 
                CssClass="text" Font-Bold="True" Font-Size="Large"></asp:Label>
          </td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label14" runat="server" Text="Total Service Prior to:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top">
            <asp:Label ID="LabelFirstJuly" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td align="right" colspan="2" bgcolor="#CCCC00">
            <asp:Label ID="LabelTotalServiceYrs" runat="server" 
                CssClass="text" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label15" runat="server" Text="Breaks in service prior to:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top">
            <asp:Label ID="LabelFirstJuly0" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td align="right" colspan="2" bgcolor="#CCCC00">
            <asp:Label ID="LabelTotalServiceBreaks" runat="server" 
                CssClass="text" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top" colspan="3" style="border: 2px solid Black;">
            <asp:GridView ID="GridViewServiceBreaks" runat="server" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ShowHeader="False" 
                Width="100%">
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label16" runat="server" Text="Pensionable Service prior to:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top">
            <asp:Label ID="LabelFirstJuly1" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td colspan="2" align="right" bgcolor="#CCCC00">
            <asp:Label ID="LabelNetServiceYrs" runat="server" 
                CssClass="text" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
    <tr>
        <td valign="top" style="font-weight: 700;" colspan="3">
            <asp:Label ID="Label17" runat="server" Text="BENEFIT CALCULATIONS" 
                CssClass="text" Font-Bold="True" Font-Size="Large"></asp:Label>
          </td>
        <td align="left" valign="top">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top">
            <asp:Label ID="Label18" runat="server" Text="Gross Annual Pensions up to:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top">
            <asp:Label ID="LabelLastMonth0" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td align="right" bgcolor="#CCCC00">
            <asp:Label ID="LabelGrossPension" runat="server" 
                CssClass="text" Font-Bold="True"></asp:Label>
        </td><td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td valign="top" align="center" colspan="2">
            <asp:Label ID="LabelGrossPensionFormula" runat="server" 
                CssClass="text" Font-Bold="False"></asp:Label>
        </td>
        <td>&nbsp;</td><td>&nbsp;</td>
    </tr>
</table>

