﻿<%@ Page Title="New Member Registration - PIMS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="NewMemberApplication.aspx.cs" Inherits="Membership_NewMemberApplication" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/Declaration.ascx" tagname="declaration" tagprefix="uc6" %>
<%@ Register src="../User_Control/BeneficiaryInformation.ascx" tagname="beneficiaryinformation" tagprefix="uc5" %>
<%@ Register src="../User_Control/EmploymentHistory.ascx" tagname="employmenthistory" tagprefix="uc4" %>
<%@ Register src="../User_Control/ContactInformation.ascx" tagname="contactinformation" tagprefix="uc3" %>
<%@ Register src="../User_Control/PersonalInformation.ascx" tagname="personalinformation" tagprefix="uc2" %>

<%@ Register src="../User_Control/Grid_RequiredDocuments.ascx" tagname="Grid_RequiredDocuments" tagprefix="uc1" %>
<%@ Register src="../User_Control/Grid_DeseasedBenefit.ascx" tagname="Grid_DeseasedBenefit" tagprefix="uc7" %>
<%@ Register src="../User_Control/DisabilityInformation.ascx" tagname="DisabilityInformation" tagprefix="uc8" %>

<%@ Register src="../User_Control/BeneficiaryEvidence.ascx" tagname="BeneficiaryEvidence" tagprefix="uc9" %>
<%@ Register src="../User_Control/Grid_BeneficiaryEvidence.ascx" tagname="Grid_BeneficiaryEvidence" tagprefix="uc10" %>
<%@ Register src="../User_Control/Grid_BeneficiaryDisability.ascx" tagname="Grid_BeneficiaryDisability" tagprefix="uc11" %>

<%@ Register src="../User_Control/EmploymentEvidence.ascx" tagname="EmploymentEvidence" tagprefix="uc12" %>

<%@ Register src="../User_Control/EmploymentServiceBreak.ascx" tagname="EmploymentServiceBreak" tagprefix="uc13" %>
<%@ Register src="../User_Control/EmploymentServiceBreakEvidence.ascx" tagname="EmploymentServiceBreakEvidence" tagprefix="uc14" %>
<%@ Register Src="~/User_Control/currentPosition.ascx" TagName="currentPosition" TagPrefix="uc15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            &nbsp;</td>
        <td align="left" class="mybottom3">
            &nbsp;New member registration</td>
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
                MultiPageID="MultiViewNewMemberApplication" SelectedIndex="1" 
                Skin="Windows7" ontabclick="RadTabStripNewMemberApplication_TabClick">
                <Tabs>
                    <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" PageViewID="0" 
                        Text="PERSONAL INFO">
                    </telerik:RadTab>
                    <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                        PageViewID="1" Text="SERVICE BREAK" Selected="True">
                    </telerik:RadTab>
                    <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                        Text="BENEFICIARY INFO">
                    </telerik:RadTab>
                    <telerik:RadTab runat="server" Text="BENEFICIARY DISABILITY">
                    </telerik:RadTab>
                    <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                        Text="DECLARATION">
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
            <telerik:RadMultiPage ID="RadMultiPageNewMember" Runat="server" 
                SelectedIndex="3">
                <telerik:RadPageView ID="RadPageViewPersonalInformation" runat="server">
                    <table 
                    cellpadding="0" cellspacing="0"><tr><td>&nbsp;</td><td>
                    
                    <uc2:personalInformation 
                        ID="PersonalInformationNewMember" runat="server" />
                        <table cellpadding="0" cellspacing="0" class="text" width="600">
                            <tr><td 
                            align="left" class="textB">&nbsp;</td></tr>
                            <tr>
                                <td align="left" class="textB">
                                    &nbsp;</td>
                            </tr>
                          <%--  <tr>
                                <td align="left" class="textB">
                                    Current employment information</td>
                            </tr>--%>
                            <tr><td>&nbsp;</td></tr>
                        </table>
                        <%--
                      
                        <uc15:currentPosition ID="currentPositionnewApplicant" runat="server" /> <br />
--%>
                        <table cellpadding="0" cellspacing="0" class="text" width="600">
                            <tr><td 
                            align="left" class="textB">&nbsp;</td></tr>
                            <tr>
                                <td align="left" class="textB">
                                    Contact Information</td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                        </table>
                    <uc3:contactinformation ID="contactinformationNewMember" runat="server" /><br />
                        </td>
                        <td valign="top"><asp:Image 
                            ID="Image13" runat="server" ImageUrl="~/images/user-info-icon.png" /></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center">
                    <asp:Button ID="ButtonNextPersonalInformation" 
                        runat="server" onclick="ButtonNextPersonalInformation_Click" Text="Save and continue" 
                        Width="150px" UseSubmitBehavior="False" />
                    
          
                    </td><td align="right">&nbsp;</td></tr></table></telerik:RadPageView>
                <telerik:RadPageView ID="RadPageViewEmploymentHistory" runat="server"><table 
                    cellpadding="0" cellspacing="0" class="style3"><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><uc1:Grid_RequiredDocuments 
                        ID="Grid_RequiredDocuments1" runat="server" /></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><uc4:EmploymentHistory 
                        ID="EmploymentHistory1" runat="server" /></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center"><asp:Button ID="ButtonAddEmployment" runat="server" 
                        onclick="ButtonNextPersonalInformation_Click" Text="Add employment" 
                        Width="150px" /></td><td align="right">&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><table 
                        class="style3"><tr><td width="280">&nbsp;</td><td>
                        <telerik:RadToolBar 
                            ID="RadToolBar4" Runat="server" onbuttonclick="RadToolBar2_ButtonClick1" 
                            Skin="Windows7" Visible="False"><Items><telerik:RadToolBarButton runat="server" 
                                ImagePosition="AboveText" 
                                ImageUrl="~/images/Elite-Captain-Blue-Shielded-icon.png" Text="Add Evidence"></telerik:RadToolBarButton></Items></telerik:RadToolBar></td></tr></table></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center">&nbsp;</td><td align="right">&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center"></td><td 
                        align="right">&nbsp;</td></tr></table></telerik:RadPageView>
                <telerik:RadPageView ID="RadPageViewEmploymentServiceBreak" runat="server">
                <table cellpadding="0" cellspacing="0">
                    <tr>
                    <td>&nbsp;</td><td>&nbsp;
                    </td><td>&nbsp;</td>
                    </tr>
                   
                    </tr>
                 
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr><td>&nbsp;</td><td><uc13:EmploymentServiceBreak ID="EmploymentServiceBreak1" runat="server" /></td><td valign="top"><asp:Image 
                            ID="Image15" runat="server" ImageUrl="~/images/Graph-icon.png" /></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></table></telerik:RadPageView>
                <telerik:RadPageView ID="RadPageViewBeneficiaryInformation" runat="server">
                    <table cellpadding="0" cellspacing="0"><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>  </td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td> <uc5:beneficiaryinformation ID="beneficiaryinformationNewMember" runat="server" /> </td><td valign="top"><asp:Image ID="Image1"   runat="server" ImageUrl="~/images/personal-loan-icon.png" /></td></tr><tr><td>&nbsp;</td><td>
                    &nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center">&nbsp;</td><td align="right">&nbsp;</td></tr><tr><td>&nbsp;</td><td><table 
                        class="style3"><tr><td width="280">&nbsp;</td><td>
                            <telerik:RadToolBar 
                            ID="RadToolBar3" Runat="server" onbuttonclick="RadToolBar3_ButtonClick" 
                            Skin="Windows7" Visible="False"><Items><telerik:RadToolBarButton runat="server" 
                                ImagePosition="AboveText" 
                                ImageUrl="~/images/Elite-Captain-Blue-Shielded-icon.png" Owner="RadToolBar3" 
                                Text="Add Evidence"></telerik:RadToolBarButton></Items></telerik:RadToolBar></td></tr></table></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center">&nbsp;</td><td align="right">&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center">&nbsp;</td><td align="right">&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center">&nbsp;</td><td align="right">&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center"></td><td align="right">&nbsp;</td></tr></table></telerik:RadPageView>
                <telerik:RadPageView ID="RadPageViewDisability" runat="server">
                    <table cellpadding="0" 
                    cellspacing="0"><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><uc11:Grid_BeneficiaryDisability 
                        ID="Grid_BeneficiaryDisability1" runat="server" /></td><td>&nbsp;</td><td 
                        valign="top"><asp:Image ID="Image12" runat="server" 
                        ImageUrl="~/images/Icons/Disabled person.jpg" /></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><uc8:DisabilityInformation 
                        ID="DisabilityInformation1" runat="server" /></td><td>&nbsp;</td><td 
                        valign="top">&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center"><asp:Button ID="ButtonAddBeneficiary1" runat="server" 
                        onclick="ButtonNextPersonalInformation_Click" Text="Add disability" 
                        Width="150px" /></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center"><asp:Button ID="ButtonNextDisability" runat="server" 
                        onclick="ButtonNextDisability_Click" Text="Next" Width="150px" /></td><td>&nbsp;</td><td>&nbsp;</td></tr></table></telerik:RadPageView>
                <telerik:RadPageView ID="RadPageViewDeclaration" runat="server">
                    <table cellpadding="0" 
                    cellspacing="0"><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>
                    <uc6:Declaration ID="DeclarationnewMember" runat="server" />
                    </td><td valign="top"><asp:Image 
                            ID="Image16" runat="server" 
                            ImageUrl="~/images/Elite-Captain-Blue-Shielded-icon.png" /></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td 
                        align="center">
                    <asp:Button ID="ButtonCreateApplicantRecord" runat="server" 
                        onclick="ButtonCreateApplicantRecord_Click" Text="Save declaration" 
                        Width="150px" /></td><td align="right">&nbsp;</td></tr></table></telerik:RadPageView>
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
                <telerik:RadToolTip ID="EmploymentServiceBreakEvidenceTip" runat="server" Animation="Fade" 
                    HideEvent="FromCode" Modal="True" Position="Center" RelativeTo="BrowserWindow" 
                    ShowEvent="FromCode">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" class="mybottom" colspan="5">
                                Service Break Evidence</td>
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
                                <uc14:EmploymentServiceBreakEvidence ID="EmploymentServiceBreakEvidence1" 
                                    runat="server" />
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
                            <td align="center">
                                <table>
                                    <tr>
                                        <td>
                                            |&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <asp:Image ID="Image9" runat="server" 
                                                ImageUrl="~/images/modules/Save-icon(16x16).png" />
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="btnOK1" runat="server" CssClass="textBlueU">Save</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            |</td>
                                        <td>
                                            &nbsp;
                                            <asp:Image ID="Image10" runat="server" 
                                                ImageUrl="~/images/modules/Cancel-icon(16x16).png" />
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="btnHome" runat="server" CssClass="textBlueU">Cancel</asp:LinkButton>
                                            &nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            |</td>
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
                <telerik:RadToolTip ID="BeneficiaryEvidenceTip" runat="server" Animation="Fade" 
                    HideEvent="FromCode" Modal="True" Position="Center" RelativeTo="BrowserWindow" 
                    ShowEvent="FromCode">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" class="mybottom" colspan="5">
                                Service Break Evidence</td>
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
                                <uc10:Grid_BeneficiaryEvidence ID="Grid_BeneficiaryEvidence1" runat="server" />
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
                                <uc9:BeneficiaryEvidence ID="BeneficiaryEvidence1" runat="server" />
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
                                <asp:Button ID="ButtonAddBeneficiary0" runat="server" 
                                    onclick="ButtonNextPersonalInformation_Click" Text="Add evidence" 
                                    Width="150px" />
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
                            <td align="center">
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

