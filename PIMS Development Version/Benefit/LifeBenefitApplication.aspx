<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBenefit.master" AutoEventWireup="false" CodeFile="LifeBenefitApplication.aspx.cs" Inherits="Benefit_Module_LifeBenefitApplication" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/EmploymentServiceBreakEvidence.ascx" tagname="employmentservicebreakevidence" tagprefix="uc14" %>
<%@ Register src="../User_Control/EmploymentServiceBreak.ascx" tagname="employmentservicebreak" tagprefix="uc13" %>
<%@ Register src="../User_Control/Grid_BeneficiaryDisability.ascx" tagname="grid_beneficiarydisability" tagprefix="uc11" %>
<%@ Register src="../User_Control/Grid_BeneficiaryEvidence.ascx" tagname="grid_beneficiaryevidence" tagprefix="uc10" %>
<%@ Register src="../User_Control/BeneficiaryEvidence.ascx" tagname="beneficiaryevidence" tagprefix="uc9" %>
<%@ Register src="../User_Control/DisabilityInformation.ascx" tagname="disabilityinformation" tagprefix="uc8" %>
<%@ Register src="../User_Control/Grid_DeseasedBenefit.ascx" tagname="grid_deseasedbenefit" tagprefix="uc7" %>
<%@ Register src="../User_Control/Grid_RequiredDocuments.ascx" tagname="grid_requireddocuments" tagprefix="uc1" %>
<%@ Register src="../User_Control/Declaration.ascx" tagname="declaration" tagprefix="uc6" %>
<%@ Register src="../User_Control/BeneficiaryInformation.ascx" tagname="beneficiaryinformation" tagprefix="uc5" %>
<%@ Register src="../User_Control/EmploymentHistory.ascx" tagname="employmenthistory" tagprefix="uc4" %>
<%@ Register src="../User_Control/ContactInformation.ascx" tagname="contactinformation" tagprefix="uc3" %>
<%@ Register src="../User_Control/PersonalInformation.ascx" tagname="personalinformation" tagprefix="uc2" %>
<%@ Register src="../User_Control/Life_Benefit_Application/ApplicationDetails.ascx" tagname="ApplicationDetails" tagprefix="uc12" %>
<%@ Register src="../User_Control/BankingInformation.ascx" tagname="BankingInformation" tagprefix="uc15" %>
<%@ Register src="../User_Control/Life_Benefit_Application/Calculation.ascx" tagname="Calculation" tagprefix="uc16" %>
<%@ Register src="../User_Control/Life_Benefit_Application/Eligibility.ascx" tagname="Eligibility" tagprefix="uc17" %>
<%@ Register src="../User_Control/Life_Benefit_Application/NominatedAgent.ascx" tagname="NominatedAgent" tagprefix="uc18" %>

<%@ Register src="../User_Control/DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc19" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 740px;
        }
        .style4
        {
            width: 280px;
        }
        .style5
        {
            width: 438px;
        }
        .style8
        {
            width: 4px;
        }
        .style9
        {
            width: 730px;
        }

    p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
p.MsoListParagraph
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:.5in;
	line-height:115%;
	text-autospace:ideograph-other;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        .style11
        {
            text-align: left;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td align="left">
                <telerik:RadTabStrip ID="RadTabStripNewMemberApplication" runat="server" 
                MultiPageID="MultiViewNewMemberApplication" SelectedIndex="0" 
                Skin="Windows7">
                    <Tabs>
                        <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" PageViewID="0" 
                        Text="APPLICATION DETAILS" Selected="True">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" PageViewID="2" 
                        Text="BANKING DETAILS">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                        PageViewID="1" Text="CALCULATION PARAMETERS">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                        Text="ELIGIBILITY">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Text="COMPUTE &amp; ISSUE DECISION">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                        Text="DECISION LETTER">
                        </telerik:RadTab>
                    </Tabs>
                </telerik:RadTabStrip>
            </td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
                <telerik:RadMultiPage ID="MultiViewNewMemberApplication" Runat="server" 
                SelectedIndex="0">
                    <telerik:RadPageView ID="ViewApplicationDetails" runat="server">
                        <table class="style3">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="Label1" runat="server" CssClass="textB" 
                                        Text="a) Application Details:"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <uc12:ApplicationDetails ID="ApplicationDetails1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="Label2" runat="server" CssClass="textB" 
                                        Text="b) Nominated Agent"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <uc18:NominatedAgent ID="NominatedAgent1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="Label3" runat="server" CssClass="textB" 
                                        Text="c) Agent’s Contact Information"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <uc3:contactinformation ID="contactinformation1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="ButtonNextEmploymentHistory" runat="server" 
                                         Text="Next" Width="150px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="ViewBankingDetails" runat="server">
                        <table class="style3">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <uc15:BankingInformation ID="BankingInformation1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="ButtonNextEmploymentHistory0" runat="server" Text="Next" 
                                        Width="150px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="ViewCalculationParameters" runat="server">
                        <table class="style3">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <table class="style3">
                                        <tr>
                                            <td width="280">
                                                <br />
                                                <asp:Label ID="Label4" runat="server" CssClass="text" 
                                                    Text="Expected start date of monthly payment"></asp:Label>
                                            </td>
                                            <td>
                                                <uc19:DayMonthYear ID="DayMonthYear1" runat="server" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <uc16:Calculation ID="Calculation1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="ButtonNextEmploymentHistory1" runat="server" Text="Next" 
                                        Width="150px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="ViewEligibility" runat="server">
                        <table class="style3">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <uc17:Eligibility ID="Eligibility1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="ButtonNextEmploymentHistory2" runat="server" Text="Next" 
                                        Width="150px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="ViewComputeAndIssueDecision" runat="server">
                        <table class="style3">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="Label5" runat="server" CssClass="textB" Text="a) Arrears"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <table class="style3">
                                        <tr>
                                            <td width="280">
                                                <asp:Label ID="Label7" runat="server" CssClass="text" Text="Total arrears"></asp:Label>
                                            </td>
                                            <td>
                                                <telerik:RadTextBox ID="RadTextBox1" Runat="server">
                                                </telerik:RadTextBox>
                                            </td>
                                            <td width="30">
                                                &nbsp;</td>
                                            <td width="280">
                                                <asp:Label ID="Label10" runat="server" CssClass="text" 
                                                    Text="Total arrears (Tax)"></asp:Label>
                                            </td>
                                            <td>
                                                <telerik:RadTextBox ID="RadTextBox6" Runat="server">
                                                </telerik:RadTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="280">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td width="280">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td width="280">
                                                <asp:Label ID="Label8" runat="server" CssClass="text" Text="Net arrears"></asp:Label>
                                            </td>
                                            <td>
                                                <telerik:RadTextBox ID="RadTextBox2" Runat="server">
                                                </telerik:RadTextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td width="280">
                                                <asp:Label ID="Label11" runat="server" CssClass="text" Text="Net arrears (Tax)"></asp:Label>
                                            </td>
                                            <td>
                                                <telerik:RadTextBox ID="RadTextBox5" Runat="server">
                                                </telerik:RadTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="280">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td width="280">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td width="280">
                                                <asp:Label ID="Label9" runat="server" CssClass="text" 
                                                    Text="Total amount payable"></asp:Label>
                                            </td>
                                            <td>
                                                <telerik:RadTextBox ID="RadTextBox3" Runat="server">
                                                </telerik:RadTextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td width="280">
                                                <asp:Label ID="Label12" runat="server" CssClass="text" Text="Net payable"></asp:Label>
                                            </td>
                                            <td>
                                                <telerik:RadTextBox ID="RadTextBox4" Runat="server">
                                                </telerik:RadTextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <asp:Label ID="Label6" runat="server" CssClass="textB" 
                                        Text="b) Payment Options"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <table>
                                        <tr>
                                            <td width="280" class="style4">
                                                <asp:Label ID="Label13" runat="server" CssClass="text" 
                                                    Text="Payment option"></asp:Label>
                                            </td>
                                            <td class="style5">
                                                <telerik:RadTextBox ID="RadTextBox23" Runat="server" BackColor="WhiteSmoke" 
                                                    Enabled="False" Font-Bold="True" Width="295px">
                                                    <PasswordStrengthSettings CalculationWeightings="50;15;15;20" 
                                                        IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID="" 
                                                        MinimumLowerCaseCharacters="2" MinimumNumericCharacters="2" 
                                                        MinimumSymbolCharacters="2" MinimumUpperCaseCharacters="2" 
                                                        OnClientPasswordStrengthCalculating="" PreferredPasswordLength="10" 
                                                        RequiresUpperAndLowerCaseCharacters="True" ShowIndicator="False" 
                                                        TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" 
                                                        TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" />
                                                    <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
                                                </telerik:RadTextBox>
                                                <asp:DropDownList ID="paymentOptionDropDownList" runat="server" AutoPostBack="True" 
                                                    BackColor="WhiteSmoke" Width="291px" 
                                                     
                                                    Visible="False">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem>Payment with commutation</asp:ListItem>
                                                    <asp:ListItem>Payment without commutation</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="style8">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td width="280" class="style4">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                            <td class="style8">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="3" width="280" class="style9">
                                                <telerik:RadMultiPage ID="paymentOptionRadMultiPage" Runat="server" 
                                                    SelectedIndex="0">
                                                    <telerik:RadPageView ID="paymentWithCommutationView" runat="server">
                                                        <table>
                                                            <tr>
                                                                <td class="mybottom" colspan="5">
                                                                    &nbsp;Payment with commutation&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="30">
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    <asp:Label ID="Label14" runat="server" CssClass="textB" Text="PART 1: Lump Sum"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="30">
                                                                    &nbsp;</td>
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
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    <asp:Label ID="Label16" runat="server" CssClass="text" Text="Commuted Lump Sum"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox7" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    <asp:Label ID="Label18" runat="server" CssClass="text" 
                                                                        Text="Tax on commuted Lump Sum"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox11" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    <asp:Label ID="Label17" runat="server" CssClass="text" Text="Lump Sum Payable"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox8" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    <asp:Label ID="Label19" runat="server" CssClass="text" Text="Tax Free Lump Sum"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox12" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    <asp:Label ID="Label15" runat="server" CssClass="textB" 
                                                                        Text="PART 2: Monthly Amount"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
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
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    <asp:Label ID="Label20" runat="server" CssClass="text" 
                                                                        Text="Residual Annual Pension"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox9" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    <asp:Label ID="Label21" runat="server" CssClass="text" Text="Monthly Pension"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox13" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    <asp:Label ID="Label22" runat="server" CssClass="text" Text="Taxable Amount"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox10" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    <asp:Label ID="Label23" runat="server" CssClass="text" 
                                                                        Text="Net Monthly Pension"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox14" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="5" width="280">
                                                                    <asp:Panel ID="paymentWithoutCommutationPanel" runat="server">
                                                                        <table>
                                                                            <tr>
                                                                                <td class="mybottom" colspan="5">
                                                                                    &nbsp;Payment without commutation&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="280">
                                                                                    &nbsp;</td>
                                                                                <td>
                                                                                    &nbsp;</td>
                                                                                <td width="30">
                                                                                    &nbsp;</td>
                                                                                <td width="280">
                                                                                    &nbsp;</td>
                                                                                <td>
                                                                                    &nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="280">
                                                                                    <asp:Label ID="Label28" runat="server" CssClass="text" 
                                                                                        Text="Annual Accrued Pension "></asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <telerik:RadTextBox ID="RadTextBox19" Runat="server">
                                                                                    </telerik:RadTextBox>
                                                                                </td>
                                                                                <td width="30">
                                                                                    &nbsp;</td>
                                                                                <td width="280">
                                                                                    <asp:Label ID="Label29" runat="server" CssClass="text" Text="Monthly Pension "></asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <telerik:RadTextBox ID="RadTextBox20" Runat="server">
                                                                                    </telerik:RadTextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="280">
                                                                                    &nbsp;</td>
                                                                                <td>
                                                                                    &nbsp;</td>
                                                                                <td>
                                                                                    &nbsp;</td>
                                                                                <td width="280">
                                                                                    &nbsp;</td>
                                                                                <td>
                                                                                    &nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td width="280">
                                                                                    <asp:Label ID="Label30" runat="server" CssClass="text" Text="Taxable Amount"></asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <telerik:RadTextBox ID="RadTextBox21" Runat="server">
                                                                                    </telerik:RadTextBox>
                                                                                </td>
                                                                                <td>
                                                                                    &nbsp;</td>
                                                                                <td width="280">
                                                                                    <asp:Label ID="Label31" runat="server" CssClass="text" 
                                                                                        Text="Net Monthly Pension"></asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <telerik:RadTextBox ID="RadTextBox22" Runat="server">
                                                                                    </telerik:RadTextBox>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </telerik:RadPageView>
                                                    <telerik:RadPageView ID="paymentWithoutCommutationView" runat="server">
                                                        <table>
                                                            <tr>
                                                                <td width="280">
                                                                    <asp:Label ID="Label24" runat="server" CssClass="text" 
                                                                        Text="Annual Accrued Pension "></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox15" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                                <td width="30">
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    <asp:Label ID="Label27" runat="server" CssClass="text" Text="Monthly Pension "></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox17" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td width="280">
                                                                    <asp:Label ID="Label25" runat="server" CssClass="text" Text="Taxable Amount"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox16" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td width="280">
                                                                    <asp:Label ID="Label26" runat="server" CssClass="text" 
                                                                        Text="Net Monthly Pension"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <telerik:RadTextBox ID="RadTextBox18" Runat="server">
                                                                    </telerik:RadTextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </telerik:RadPageView>
                                                </telerik:RadMultiPage>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="ButtonNextEmploymentHistory3" runat="server" Text="Next" 
                                        Width="150px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="ViewDecisionLetter" runat="server">
                        <table class="style3">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <p align="center" class="MsoNormal">
                                        <b><span style="font-size:14.0pt;line-height:115%">DECISION LETTER<p>
                                        </p>
                                        </span></b>
                                        <p>
                                        </p>
                                    </p>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="right">
                                    <p align="right" class="MsoNormal">
                                        Date: ________________<p>
                                        </p>
                                        <p>
                                        </p>
                                    </p>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>
                                                    
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td colspan="3" style="width:270.4pt;padding:0in 5.4pt 0in 5.4pt" valign="top" 
                                                width="361">
                                                <p class="MsoNormal" 
                                                    style="margin-bottom: 0in; margin-bottom: .0001pt; line-height: normal; text-align: left;">
                                                    Application Registration Date _______________</p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                   
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:1">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>
                                                    <p>
                                                        &nbsp;</p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td colspan="2" style="width:225.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" 
                                                width="301">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>
                                                    <p>
                                                        &nbsp;</p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:2">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>A)<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td colspan="2" style="width:225.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" 
                                                width="301">
                                                <p class="MsoNormal" 
                                                    style="margin-bottom: 0in; margin-bottom: .0001pt; line-height: normal; text-align: left;">
                                                    <b>Pensioner Details:</b><p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:3">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:4">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Pension ID No.<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Gender<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:5">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:6">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    National ID No.<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Date of Birth<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:7">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:8">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Full Name<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Date of Joining scheme<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:9">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:10">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Cause of leaving scheme<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Age at leaving scheme<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:11">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:12">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>B)<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" colspan="2" 
                                                style="width:225.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="301">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>Bank Details:</b><p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:13">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:14">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Bank Name<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:15">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:16">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Branch<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:17">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:18">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Account Name<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:19">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:20">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    New Account No.<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Old Bank Account No.<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:21">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:22">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:23">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>C)<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" colspan="2" 
                                                style="width:225.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="301">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>Employment Details:<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>
                                                    <p>
                                                        &nbsp;</p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>
                                                    <p>
                                                        &nbsp;</p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>
                                                    <p>
                                                        &nbsp;</p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:24">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:25">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Date of Appointment<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:26">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:27">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Final Grade<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:28">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:29">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Last Date of Service<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:30">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:31">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>D)<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" colspan="5" 
                                                style="width:492.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="656">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>Accrued benefit/ pension<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:32">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:33">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Pensionable Service<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                        <span style="font-size:10.0pt">(Years/ Months/ Days)<p>
                                                        </p>
                                                        </span>
                                                        <p>
                                                        </p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Break of Service<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                        <span style="font-size:10.0pt">(Months/ Days)<p>
                                                        </p>
                                                        </span>
                                                        <p>
                                                        </p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:34">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:35">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Pensionable Salary<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Accrued Annual Pension<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:36">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:37">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Commuted Lump Sum<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Residual Annual Pension<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:38">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:39">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Monthly Pension<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Tax on commuted Lump Sum<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:40">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:41">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>E)<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" colspan="5" 
                                                style="width:492.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="656">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>Arrears<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:42">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:43">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Total Arrears<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Net Arrears<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:44">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:45">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Total Arrears (Tax)<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Net Arrears (Tax)<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:46">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:47">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Total Amount Payable<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Net Payable<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:48">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:49">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>F)<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" colspan="5" 
                                                style="width:492.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="656">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>Payment Options<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:50">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:51">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" colspan="5" 
                                                style="width:492.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="656">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>i)
                                                    <sdt id="-1639414205" checkbox="t" checkboxfontchecked="MS Gothic" 
                                                        checkboxfontunchecked="MS Gothic" checkboxischecked="f" 
                                                        checkboxvaluechecked="☒" checkboxvalueunchecked="☐">
                                                        <span 
                                                        style="font-family:&quot;MS Gothic&quot;">☐</span></sdt>
                                                    <span style="mso-spacerun:yes">&nbsp; </span>Payment with commutation<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:52">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:53">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>PART 1: Lump Sum<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:54">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:55">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Commuted Lump Sum<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Tax on commuted Lump Sum<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:56">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:57">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Lump Sum Payable<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Tax Free Lump Sum<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:58">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:59">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>PART 2: Monthly Amount<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:60">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:61">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Residual Annual Pension
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Monthly Pension
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:62">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:63">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Taxable Amount<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Net Monthly Pension<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:64">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:65">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                &nbsp;</td>
                                            <td class="style11" colspan="5" 
                                                style="width:492.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="656">
                                                <p class="MsoListParagraph" style="margin:0in;margin-bottom:.0001pt;text-indent:
  -.5in;line-height:normal;mso-list:l0 level1 lfo1">
                                                    <![if !supportLists]><b><span lang="EN-CA" style="mso-bidi-font-family:Calibri">
                                                    <span style="mso-list:Ignore">
                                                    <span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    </span></span></span></b><![endif]><b><span lang="EN-CA">ii)
                                                    <sdt id="-705480175" checkbox="t" checkboxfontchecked="MS Gothic" 
                                                        checkboxfontunchecked="MS Gothic" checkboxischecked="f" 
                                                        checkboxvaluechecked="☒" checkboxvalueunchecked="☐">
                                                        <span lang="EN-US" 
                                                        style="font-family:&quot;MS Gothic&quot;">☐</span></sdt>
                                                    <span style="mso-spacerun:yes">&nbsp; </span>Payment without commutation<p>
                                                    </p>
                                                    </span></b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:66">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:67">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Annual Accrued Pension
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Monthly Pension
                                                    <p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:68">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:69">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Taxable Amount<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Net Monthly Pension<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:70">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td colspan="5" style="width:492.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" 
                                                width="656">
                                                <p class="MsoListParagraph" style="margin:0in;margin-bottom:.0001pt;text-indent:
  -.5in;line-height:normal;mso-list:l0 level1 lfo1">
                                                    <![if !supportLists]><b><span lang="EN-CA" style="mso-bidi-font-family:Calibri">
                                                    <span style="mso-list:Ignore">
                                                    <span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>
                                                    </span></b><![endif]><b><span lang="EN-CA">
                                                    <p>
                                                        &nbsp;</p>
                                                    </span></b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:71">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:72">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>G)<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" colspan="5" 
                                                style="width:492.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="656">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <b>Declaration<p>
                                                    </p>
                                                    </b>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:73">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:74">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Claim processed by<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                        <span style="font-size:9.0pt">(Pension Specialist)<p>
                                                        </p>
                                                        </span>
                                                        <p>
                                                        </p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Date Claim processed<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                        <span style="font-size:9.0pt">(Pension Specialist)</span><p>
                                                        </p>
                                                        <p>
                                                        </p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:75">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:76">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Claim checked by<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                        <span style="font-size:9.0pt">(Pensions Administration Supervisor)<p>
                                                        </p>
                                                        </span>
                                                        <p>
                                                        </p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Date Claim checked<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                        <span style="font-size:9.0pt">(Pensions Administration Supervisor)</span><p>
                                                        </p>
                                                        <p>
                                                        </p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:77">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr style="mso-yfti-irow:78;mso-yfti-lastrow:yes">
                                            <td style="width:24.85pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="33">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:132.8pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="177">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Claim authorized by<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                        <span style="font-size:9.0pt">(Pensions Administration Supervisor)</span><p>
                                                        </p>
                                                        <p>
                                                        </p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:44.6pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="59">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    <p>
                                                        &nbsp;</p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td class="style11" style="width:128.6pt;padding:0in 5.4pt 0in 5.4pt" 
                                                valign="top" width="171">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    Date Claim Authorized<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                    <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                        <span style="font-size:9.0pt">(Pensions Administration Supervisor)</span><p>
                                                        </p>
                                                        <p>
                                                        </p>
                                                    </p>
                                                </p>
                                            </td>
                                            <td style="width:93.0pt;padding:0in 5.4pt 0in 5.4pt" valign="top" width="124">
                                                <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                                                    _______________<p>
                                                    </p>
                                                    <p>
                                                    </p>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                </telerik:RadMultiPage>
            </td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
                <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" 
        
        DecoratedControls="Default, Textbox, Textarea, Fieldset, Label, H4H5H6, Select, GridFormDetailsViews, ValidationSummary, LoginControls" 
        Skin="Windows7" />
                <telerik:RadToolTip ID="finishTip" runat="server" Animation="Fade" 
                    HideEvent="FromCode" Modal="True" Position="Center" RelativeTo="BrowserWindow" 
                    ShowEvent="FromCode" Skin="WebBlue">
                    <table cellpadding="0" cellspacing="0" width="500">
                        <tr>
                            <td class="mybottom" colspan="5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Image ID="Image5" runat="server" Height="50px" 
                                    ImageUrl="~/images/Icons/checkmark.png" Width="50px" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <span class="text">New applicant with pension number</span><span class="textB">.</span><span 
                                    class="text"> ( </span>
                                <asp:Label ID="lblVacancyCode" runat="server" CssClass="textRedB">00201204</asp:Label>
                                <span class="text">&nbsp;) added successfully.</span></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                |&nbsp;&nbsp;<asp:LinkButton ID="btnOK" runat="server" CssClass="textBlueU">OK</asp:LinkButton>
                                &nbsp; |&nbsp;
                                <asp:LoginStatus ID="LoginStatus2" runat="server" CssClass="textBlueU" 
                                    LogoutAction="RedirectToLoginPage" Visible="False" />
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="mybottom" colspan="5">
                                &nbsp;</td>
                        </tr>
                    </table>
                </telerik:RadToolTip>
            </td>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

