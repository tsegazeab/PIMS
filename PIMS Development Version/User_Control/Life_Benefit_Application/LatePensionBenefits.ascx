<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LatePensionBenefits.ascx.cs" Inherits="User_Control_Life_Benefit_Application_LatePensionBenefits" %>

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
                <asp:Label ID="Label19" runat="server" Text="LATE RETIREMENT PENSION" 
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
                <asp:Label ID="Label20" runat="server" Text="Date of Retirement:" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="right" valign="top">
                <asp:Label ID="LabelDateOfRetirement" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
            </td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="2">
                <asp:Label ID="Label21" runat="server" Text="Annual Pension Accrued up to end of Last Financial Year" 
                    CssClass="text"></asp:Label>
              </td>
            <td valign="top" align="right">
                <asp:Label ID="LabelGrossPension" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
              </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="3" style="border: 2px solid Black;">
                <asp:Table ID="TableSalaryMonths" runat="server" Width="100%" 
                    CssClass="benefitsDisplayTab">
                </asp:Table>
            </td>
            <td>&nbsp;</td>
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
                <asp:Label ID="Label14" runat="server" Text="Age at Retirement" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="center" valign="top" bgcolor="#CCCC00" colspan="2">
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
            <td align="center" valign="top" bgcolor="#CCCC00" colspan="2">
                <asp:Label ID="LabelNormalPensionableAge" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">
                <asp:Label ID="Label15" runat="server" Text="Type of Retirement" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="center" valign="top" bgcolor="#CCCC00" colspan="2">
                <asp:Label ID="LabelTypeOfRetirement" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="2">
                <asp:Label ID="Label25" runat="server" Text="Complete months BEYOND of Pensionable Age" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelMonthsBeyondPensionableAge" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">
                <asp:Label ID="Label16" runat="server" Text="Gross Salary at Retirement" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="right" valign="top">
                &nbsp;</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelRetirementYearGrossSalary" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top">
                <asp:Label ID="LabelCommutationText" runat="server" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="left" valign="top">
                &nbsp;</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelCommutationFactor" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" rowspan="2">
                <asp:Label ID="LabelCivilServiceSalaryIncreaseText" runat="server" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="left" valign="top">
                &nbsp;</td>
            <td align="right">
                <asp:Label ID="LabelCivilServiceSalaryIncrease" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
              </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td align="left" valign="top">
                &nbsp;</td>
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
            <td valign="top" colspan="2">
                <asp:Label ID="Label18" runat="server" Text="Gross Annual Pensions up to Last Financial Year" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelGrossPensionII" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="2">
                -
                <asp:Label ID="Label22" runat="server" Text="Pension Accrual Update for Current Financial Year" 
                    CssClass="text"></asp:Label>
              </td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelCurrentYearPension" runat="server" 
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
            <td valign="top" colspan="2">
                - Updated Gross Annual Pension</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelUpdatedGrossPension" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="2">
                &nbsp;=[<asp:Label ID="LabelUpdatedGrossPensionFormula" runat="server" 
                    CssClass="text"></asp:Label>
                ]&nbsp;</td>
            <td align="right">
                &nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="2">
                Gross Pension Accrued in Retirement Year</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelGrossPensionAccruedInRetirementYear" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="2">
                &nbsp;=[<asp:Label ID="LabelGrossPensionRecruitmentYearFormula" runat="server" 
                    CssClass="text"></asp:Label>
                ]&nbsp;</td>
            <td align="right">
                &nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" colspan="2">
                Total Accrued Annual Pension</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelTotalAccruedPension" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp; =[<asp:Label ID="LabelTotalAccruedPensionFormula" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
                ]</td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2" style="border-top: 2px solid Black; border-left: 2px solid Black;">
                Late Retirement Increase Adjustment</td>
            <td align="right" bgcolor="#CCCC00" 
                style="border-top: 2px solid Black; border-right: 2px solid Black;">
                <asp:Label ID="LabelLateRetirementAdjustment" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2" style="border-bottom: 2px solid Black; border-left: 2px solid Black;">
                &nbsp;&nbsp; =[<asp:Label 
                    ID="LabelLateRetirementAdjustmentFormula" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
                ]</td>
            <td style="border-bottom: 2px solid Black; border-right: 2px solid Black;">&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                Annual Gross Pension Entitlement</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelAnnualGrossPensionEntitlement" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp; =[<asp:Label ID="LabelGrossPensionEntitlementFormula" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
                ]&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td>
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
                No Commutation and Only Monthly Pension of</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelNoCommutation" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>
                <asp:RadioButton ID="RadioButtonA" runat="server" GroupName="BenefitOptions" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp;= [<asp:Label ID="LabelCommutationFormula" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
                ]&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>B</td>
            <td valign="top" align="left" colspan="2">
                1/3 rd Annual Pension</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelAThirdAnnualPension" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>
                <asp:RadioButton ID="RadioButtonB" runat="server" GroupName="BenefitOptions" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp;= [<asp:Label ID="LabelAThirdAnnualPensionFormula" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
                ]&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                Lump Sum Commutation Amount of</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelLumpSumCommutation" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp;= [<asp:Label ID="LabelLumpSumCommutationFormula" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
                ]&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                Net Annual Pension after Commutation</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelNetAnnualPension" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp;= [<asp:Label ID="LabelNetAnnualPensionFormula" runat="server" 
                    CssClass="text" Font-Bold="False"></asp:Label>
                ]&nbsp;</td>
            <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                <b><i>plus</i></b> Monthly Pension of</td>
            <td align="right" bgcolor="#CCCC00">
                <asp:Label ID="LabelMonthlyPension" runat="server" 
                    CssClass="text" Font-Bold="True"></asp:Label>
            </td><td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td valign="top" align="left" colspan="2">
                &nbsp;= [<asp:Label ID="LabelMonthlyPensionFormula" runat="server" 
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

