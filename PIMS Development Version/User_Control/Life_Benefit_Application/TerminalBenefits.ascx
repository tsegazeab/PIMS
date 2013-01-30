<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TerminalBenefits.ascx.cs" Inherits="User_Control_Life_Benefit_Application_TerminalBenefits" %>

<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}
</style>

<link href="../../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" id="telerikClientEvents1">
//<![CDATA[

    function RadButtonPrint_Clicked(sender, args) {
        //Add JavaScript handler code here
        var div = document.getElementById("benefitCalculation");
        Popup(div.innerHTML);
    }

    function Popup(data) {
        var mywindow = window.open('', 'my div', 'height=768,width=700,scrollbars=yes');
        mywindow.document.write('<html><head><title>Benefit Calculations</title>');
        mywindow.document.write('<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />');
        mywindow.document.write('</head><body><table align=center><tr>');
        mywindow.document.write('<td><img src="../images/modules/Desktop_icons/Final_PF_NoWords_Logo2.png" alt="SSPF" /></td>');
        mywindow.document.write('<td align="right"><span class="reportHeader">Pension Information Management System (PIMS)</span></td>');
        mywindow.document.write('</tr><tr><td colspan="2">');
        mywindow.document.write(data);
        mywindow.document.write('</td></tr></table></body></html>');

        mywindow.print();
        //	    mywindow.close();

        return true;
    }

//]]>
</script>

<div id="benefitCalculation">
    <table cellpadding="4" cellspacing="0" width="650" class="benefitsDisplayTab" align="center">
        <tr>
            <td colspan="3">
                <asp:Label ID="Label19" runat="server" Text="TERMINAL BENEFITS" 
                    CssClass="text" Font-Bold="True" Font-Size="Large"></asp:Label>
              </td>
            <td width="25%">&nbsp;</td>
            <td width="5%">&nbsp;</td>
        </tr>
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
            <td valign="top">
                <asp:Label ID="Label20" runat="server" Text="Date of Voluntary Resignation:" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="right" valign="top">
                <asp:Label ID="LabelDateOfResignation" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
            </td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">
                <asp:Label ID="Label26" runat="server" Text="Gross Salary in Final Month:" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="right" valign="top">
                <asp:Label ID="LabelFinalMonthSalary" runat="server" 
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
                Total Service up to</td>
            <td align="right" valign="top">
                <asp:Label ID="LabelDateOfResignation0" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
            </td>
            <td align="center" valign="top" bgcolor="#CCCC00">
                <asp:Label ID="LabelTotalServiceYears" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">
                Breaks in Service prior to</td>
            <td align="right" valign="top">
                <asp:Label ID="LabelDateOfResignation1" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
            </td>
            <td align="center" valign="top" bgcolor="#CCCC00">
                <asp:Label ID="LabelServiceBreakYears" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">
                Pensionable Service prior to</td>
            <td align="right" valign="top">
                <asp:Label ID="LabelDateOfResignation2" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
            </td>
            <td align="center" valign="top" bgcolor="#CCCC00">
                <asp:Label ID="LabelPensionableYears" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">
                <asp:Label ID="Label14" runat="server" Text="Age at Retirement" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="center" valign="top">
                &nbsp;</td>
            <td align="center" valign="top" bgcolor="#CCCC00">
                <asp:Label ID="LabelAgeAtRetirement" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">
                <asp:Label ID="Label24" runat="server" Text="Normal Pensionable Age" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="center" valign="top">
                &nbsp;</td>
            <td align="center" valign="top" bgcolor="#CCCC00">
                <asp:Label ID="LabelNormalPensionableAge" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">
                Standard Retirement Date</td>
            <td valign="top">
                &nbsp;</td>
            <td align="center" bgcolor="#CCCC00">
                <asp:Label ID="LabelStandardRetirementDate" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="2">
                <asp:Label ID="Label25" runat="server" Text="Complete months SHORT of Pensionable Age" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelMonthsToPensionableAge" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
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
                Gross Annual Pension up to</td>
            <td valign="top" align="right">
                <asp:Label ID="LabelLastDateB4Resignation" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
              </td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelGrossPension" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="2">
                &nbsp; =[<asp:Label ID="LabelPensionAccrualFormula" runat="server" 
                    CssClass="text"></asp:Label>
                ]</td>
            <td align="right">
                &nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label23" runat="server" Text="BENEFIT OPTIONS" 
                    CssClass="text" Font-Bold="True" Font-Size="Large"></asp:Label>
              </td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>A</td>
            <td valign="top" align="left" colspan="2">
                Deferred Monthly Pension of</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelDeferredMonthlyPension" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="RadioButtonA" runat="server" GroupName="BenefitOptions" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                Pension StartDate</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelStandardRetirementDate0" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>B</td>
            <td valign="top" align="left" colspan="2">
                Lump Sum Amount Payable on Resignation</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelLumpSumAmount" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>
                <asp:RadioButton ID="RadioButtonB" runat="server" GroupName="BenefitOptions" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp;= [<asp:Label ID="LabelLumpSumAmountFormula" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
                ]&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp;</td>
            <td align="right" colspan="2">
                <telerik:RadButton ID="RadButtonSaveBenefit" runat="server" Skin="Vista" 
                    Text="Save Option" onclick="RadButtonSaveBenefit_Click" Visible="False">
                </telerik:RadButton>
            </td>
        </tr>
    </table>
</div>
<table cellpadding="4" cellspacing="0" width="650" align="center">
    <tr>
        <td width="100%" align="right">
        
            <telerik:RadButton ID="RadButtonPrint" runat="server" Skin="Vista" 
                Text="Print" AutoPostBack="False" onclientclicked="RadButtonPrint_Clicked" 
                Visible="False">
            </telerik:RadButton>
        
        </td>
    </tr>
</table>