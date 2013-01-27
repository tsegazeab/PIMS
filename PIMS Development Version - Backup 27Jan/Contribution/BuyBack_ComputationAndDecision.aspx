<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageContribution.master" AutoEventWireup="true" CodeFile="BuyBack_ComputationAndDecision.aspx.cs" Inherits="Contribution_BuyBack_ComputationAndDecision" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/Contribution/BuyBack.ascx" tagname="BuyBack" tagprefix="uc1" %>
<%@ Register src="../User_Control/Contribution/Computation.ascx" tagname="Computation" tagprefix="uc2" %>
<%@ Register src="../User_Control/BankingInformation.ascx" tagname="BankingInformation" tagprefix="uc3" %>
<%@ Register src="../User_Control/Contribution/Decision.ascx" tagname="Decision" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style3">
                <tr>
                    <td align="left" colspan="3">
                        <telerik:RadTabStrip ID="RadTabStripNewMemberApplication" runat="server" 
                            MultiPageID="RadMultiPage1" SelectedIndex="0" Skin="Windows7">
                            <Tabs>
                                <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                                    PageViewID="0" Selected="True" Text="BUY BACK MISSED CONTRIBUTION">
                                </telerik:RadTab>
                                <telerik:RadTab runat="server" Owner="RadTabStripNewMemberApplication" 
                                    PageViewID="2" Text="COMPUTATION AND DECISION">
                                </telerik:RadTab>
                            </Tabs>
                        </telerik:RadTabStrip>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" Visible="False">
                            <table width="400">
                                <tr>
                                    <td>
                                        |</td>
                                    <td>
                                        <asp:LinkButton ID="LinkButtonBuyBack" runat="server" CssClass="textBlueU" 
                                            onclick="LinkButtonBuyBack_Click">Buy Back missed contribution</asp:LinkButton>
                                    </td>
                                    <td>
                                        |</td>
                                    <td>
                                        <asp:LinkButton ID="LinkButtonComputationAndDecision" runat="server" 
                                            CssClass="textBlueU" onclick="LinkButtonComputationAndDecision_Click">Computation and decision</asp:LinkButton>
                                    </td>
                                    <td>
                                        |</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td align="left">
                        <telerik:RadMultiPage ID="RadMultiPage1" Runat="server" SelectedIndex="0">
                            <telerik:RadPageView ID="BuyBackView" runat="server">
                                <table class="style3">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" CssClass="textB" 
                                                Text="SECTION 1: APPLICATION TO BUY-BACK MISSED CONTRIBUTION AS A RESULT OF A BREAK IN SERVICE"></asp:Label>
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
                                            <uc1:BuyBack ID="BuyBack1" runat="server" />
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
                                            <asp:Button ID="ButtonNextContactInformation" runat="server" 
                                                Text="Process application" Width="200px" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </telerik:RadPageView>
                            <telerik:RadPageView ID="ContributionAndDecisionView" runat="server">
                                <table class="style3">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" CssClass="textB" 
                                                Text="SECTION 2: COMPUTATION AND DECISION"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <uc2:Computation ID="Computation1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="mybottom">
                                            &nbsp;Bank details&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <uc3:BankingInformation ID="BankingInformation1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="mybottom">
                                            &nbsp;Decision&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <uc4:Decision ID="Decision1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="ButtonNextContactInformation0" runat="server" 
                                                Text="Request additaional information" Width="200px" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="ButtonNextContactInformation1" runat="server" 
                                                Text="Forward for approval" Width="200px" />
                                        </td>
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
                    <td align="left">
                        <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" 
                            DecoratedControls="Default, Textbox, Textarea, Fieldset, Label, H4H5H6, Select, GridFormDetailsViews, ValidationSummary, LoginControls" 
                            Skin="Windows7" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

