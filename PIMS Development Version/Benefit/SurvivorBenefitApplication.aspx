<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageBenefit.master" AutoEventWireup="true" CodeFile="SurvivorBenefitApplication.aspx.cs" Inherits="Pension_Benefit_SurvivorBenefitApplication" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/Declaration.ascx" tagname="declaration" tagprefix="uc6" %>
<%@ Register src="../User_Control/BeneficiaryInformation.ascx" tagname="beneficiaryinformation" tagprefix="uc5" %>
<%@ Register src="../User_Control/EmploymentHistory.ascx" tagname="employmenthistory" tagprefix="uc4" %>
<%@ Register src="../User_Control/ContactInformation.ascx" tagname="contactinformation" tagprefix="uc3" %>
<%@ Register src="../User_Control/PersonalInformation.ascx" tagname="personalinformation" tagprefix="uc2" %>
<%@ Register src="../User_Control/DetailsOfDeceased.ascx" tagname="DetailsOfDeceased" tagprefix="uc1" %>
<%@ Register src="../User_Control/DetailsOfPersonApplying.ascx" tagname="DetailsOfPersonApplying" tagprefix="uc7" %>
<%@ Register src="../User_Control/BankingInformation.ascx" tagname="BankingInformation" tagprefix="uc8" %>
<%@ Register src="../User_Control/Grid_DeseasedBenefit.ascx" tagname="Grid_DeseasedBenefit" tagprefix="uc9" %>

<%@ Register src="../User_Control/MemberDeclaration.ascx" tagname="MemberDeclaration" tagprefix="uc10" %>
<%@ Register src="../User_Control/WitnessDeclaration.ascx" tagname="WitnessDeclaration" tagprefix="uc11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style3
    {
        width: 100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style3">
        <tr>
            <td>
                &nbsp;</td>
            <td align="left" class="mybottom3">
                Survivor benefit</td>
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
                <telerik:RadTabStrip ID="RadTabStripNewMemberApplication" runat="server" 
                MultiPageID="MultiViewSurvivorBenefitApplication" SelectedIndex="0" 
                Skin="Windows7">
                    <Tabs>
                        <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" PageViewID="0" 
                        Text="DETAILS OF DECEASED" Selected="True">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                        PageViewID="1" Text="DETAILS OF PERSON APPLYING">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                        Text="DETIALS OF DECEASED'S BENEFICIARIES">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                        Text="BANKING INFORMATION">
                        </telerik:RadTab>
                        <telerik:RadTab runat="server" Text="DECLARATION">
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
                <telerik:RadMultiPage ID="MultiViewSurvivorBenefitApplication" Runat="server" 
                SelectedIndex="0">
                    <telerik:RadPageView ID="ViewDetailsOfDeseased" runat="server">
                        <table cellpadding="0" cellspacing="0" class="style3">
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
                                    <uc1:DetailsOfDeceased ID="DetailsOfDeceased1" runat="server" />
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
                                <td align="center">
                                    <asp:Button ID="ButtonNextPersonalInformation" runat="server" 
                                        onclick="ButtonNextPersonalInformation_Click" Text="Next" Width="150px" />
                                </td>
                                <td align="right">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="ViewDetailsOfPersonApplying" runat="server" 
                        TabIndex="1">
                        <table cellpadding="0" cellspacing="0" class="style3">
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
                                    <uc7:DetailsOfPersonApplying ID="DetailsOfPersonApplying1" runat="server" />
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
                                <td align="center">
                                    <asp:Button ID="ButtonNextContactInformation" runat="server" 
                                        onclick="ButtonNextContactInformation_Click" Text="Next" Width="150px" />
                                </td>
                                <td align="right">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="ViewDetailsOfDeseasedBeneficiaries" runat="server" 
                        TabIndex="2">
                        <table cellpadding="0" cellspacing="0" class="style3">
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
                                    <uc9:Grid_DeseasedBenefit ID="Grid_DeseasedBenefit1" runat="server" />
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
                                    <uc5:beneficiaryinformation ID="beneficiaryinformation2" runat="server" />
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
                                <td align="center">
                                    <asp:Button ID="ButtonAddEmployment" runat="server" 
                                        onclick="ButtonNextPersonalInformation_Click" Text="Add beneficiary" 
                                        Width="150px" />
                                </td>
                                <td align="right">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="center">
                                    &nbsp;</td>
                                <td align="right">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="center">
                                    <asp:Button ID="ButtonNextEmploymentHistory" runat="server" 
                                        onclick="ButtonNextEmploymentHistory_Click" Text="Next" Width="150px" />
                                </td>
                                <td align="right">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="ViewBankingInformation" runat="server" TabIndex="3">
                        <table cellpadding="0" cellspacing="0" class="style3">
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
                                <td align="center">
                                    <table class="style3">
                                        <tr>
                                            <td align="left" width="280">
                                                <span class="text">Original Pensioner’s Pension ID Number</span></td>
                                            <td align="left">
                                                <telerik:RadTextBox ID="RadTextBox2" Runat="server" Width="295px">
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
                                <td>
                                    <uc8:BankingInformation ID="BankingInformation1" runat="server" />
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
                                    <span class="textB">Deceased Member’s Account Details</span></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="center">
                                    &nbsp;</td>
                                <td align="right">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <uc8:BankingInformation ID="BankingInformation2" runat="server" />
                                </td>
                                <td align="right">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="center">
                                    &nbsp;</td>
                                <td align="right">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="center">
                                    <asp:Button ID="ButtonNextBeneficiaryInformation" runat="server" 
                                        onclick="ButtonNextBeneficiaryInformation_Click" Text="Next" Width="150px" />
                                </td>
                                <td align="right">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </telerik:RadPageView>
                    <telerik:RadPageView ID="ViewDeclaration" runat="server" TabIndex="4">
                        <table cellpadding="0" cellspacing="0" class="style3">
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
                                    <span class="textB">Member Declaration</span></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <uc10:MemberDeclaration ID="MemberDeclaration1" runat="server" />
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
                                <td align="left">
                                    <span class="textB">Witness Declaration</span></td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <uc11:WitnessDeclaration ID="WitnessDeclaration1" runat="server" />
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
                                <td align="center">
                                    <asp:Button ID="ButtonCreateApplicantRecord" runat="server" 
                                        onclick="ButtonCreateApplicantRecord_Click" Text="Create Applicant Record" 
                                        Width="150px" />
                                </td>
                                <td align="right">
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

