<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageContribution.master" AutoEventWireup="true" CodeFile="Contribution.aspx.cs" Inherits="Contribution_Contribution" %>
<%@ MasterType VirtualPath="~/MasterPageContribution.master" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/AgencyActualContribution.ascx" tagname="AgencyActualContribution" tagprefix="uc1" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/ContactPerson.ascx" tagname="ContactPerson" tagprefix="uc2" %>
<%@ Register src="../User_Control/Contribution/MEMBER/MemberContributionHistory.ascx" tagname="MemberContributionHistory" tagprefix="uc3" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/AgencyContributionArreas.ascx" tagname="AgencyContributionArreas" tagprefix="uc6" %>
<%@ Register src="../User_Control/Contribution/MEMBER/MemberInformation.ascx" tagname="MemberInformation" tagprefix="uc7" %>
<%@ Register src="../User_Control/Contribution/MEMBER/MemberContributionArrears.ascx" tagname="MemberContributionArrears" tagprefix="uc8" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/AGENCYContributionHistory.ascx" tagname="AGENCYContributionHistory" tagprefix="uc10" %>
<%@ Register src="../User_Control/Contribution/MEMBER/MemberContributionAdded.ascx" tagname="MemberContributionAdded" tagprefix="uc20" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 400px;
        }
    
.RadUpload_Windows7
{
    font: normal 11px/11px "Segoe UI", Arial, sans-serif;
}

.RadUpload
{
	width: 430px; /*default*/
	text-align: left;
}

.RadUpload_Windows7
{
    font: normal 11px/11px "Segoe UI", Arial, sans-serif;
}

.RadUpload
{
	width: 430px; /*default*/
	text-align: left;
}

.RadUpload_Windows7
{
    font: normal 11px/11px "Segoe UI", Arial, sans-serif;
}

.RadUpload
{
	width: 430px; /*default*/
	text-align: left;
}

.RadUpload_Windows7
{
    font: normal 11px/11px "Segoe UI", Arial, sans-serif;
}

.RadUpload
{
	width: 430px; /*default*/
	text-align: left;
}

.RadUpload_Windows7
{
    font: normal 11px/11px "Segoe UI", Arial, sans-serif;
}

.RadUpload
{
	width: 430px; /*default*/
	text-align: left;
}

.RadUpload .ruInputs
{
	list-style:none;
	margin:0;
	padding:0;
}

.RadUpload .ruInputs
{
	zoom:1;/*IE fix - removing items on the client*/
}

.RadUpload .ruInputs
{
	list-style:none;
	margin:0;
	padding:0;
}

.RadUpload .ruInputs
{
	zoom:1;/*IE fix - removing items on the client*/
}

.RadUpload .ruInputs
{
	list-style:none;
	margin:0;
	padding:0;
}

.RadUpload .ruInputs
{
	zoom:1;/*IE fix - removing items on the client*/
}

.RadUpload .ruInputs
{
	list-style:none;
	margin:0;
	padding:0;
}

.RadUpload .ruInputs
{
	zoom:1;/*IE fix - removing items on the client*/
}

.RadUpload .ruInputs
{
	list-style:none;
	margin:0;
	padding:0;
}

.RadUpload .ruInputs
{
	zoom:1;/*IE fix - removing items on the client*/
}

.RadUpload .ruFileWrap
{
	position: relative;
	white-space:nowrap;
	display: inline-block;
	vertical-align: top;
    padding-right: 0.8em;
    line-height: 20px;
    zoom: 1;
}

.RadUpload .ruFileWrap
{
	position: relative;
	white-space:nowrap;
	display: inline-block;
	vertical-align: top;
    padding-right: 0.8em;
    line-height: 20px;
    zoom: 1;
}

.RadUpload .ruFileWrap
{
	position: relative;
	white-space:nowrap;
	display: inline-block;
	vertical-align: top;
    padding-right: 0.8em;
    line-height: 20px;
    zoom: 1;
}

.RadUpload .ruFileWrap
{
	position: relative;
	white-space:nowrap;
	display: inline-block;
	vertical-align: top;
    padding-right: 0.8em;
    line-height: 20px;
    zoom: 1;
}

.RadUpload .ruFileWrap
{
	position: relative;
	white-space:nowrap;
	display: inline-block;
	vertical-align: top;
    padding-right: 0.8em;
    line-height: 20px;
    zoom: 1;
}

.RadUpload_Windows7 .ruFakeInput
{
    border-color: #abadb3 #dbdfe6 #e3e9ef #e2e3ea;
    color: #000;
}

.RadUpload .ruFakeInput
{
    height: 16px;
    margin-right: -1px;
    vertical-align: middle;
    background-position: 0 -93px;
    background-repeat: repeat-x;
    background-color: #fff;
    
    line-height /*\**/: 20px\9; /* IE8 Standards still broken + old hacks don't work */
    height /*\**/: 20px\9;
    padding-top /*\**/: 0\9;
}

.RadUpload .ruFakeInput
{
	float: none;
	vertical-align:top;
}

.RadUpload .ruFakeInput
{
    border-width: 1px;
    border-style: solid;
    line-height: 18px;
    padding: 4px 4px 0 4px;

    -moz-box-sizing: content-box; /* Quirksmode height fix */
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}

.RadUpload_Windows7 .ruFakeInput
{
    border-color: #abadb3 #dbdfe6 #e3e9ef #e2e3ea;
    color: #000;
}

.RadUpload .ruFakeInput
{
    height: 16px;
    margin-right: -1px;
    vertical-align: middle;
    background-position: 0 -93px;
    background-repeat: repeat-x;
    background-color: #fff;
    
    line-height /*\**/: 20px\9; /* IE8 Standards still broken + old hacks don't work */
    height /*\**/: 20px\9;
    padding-top /*\**/: 0\9;
}

.RadUpload .ruFakeInput
{
	float: none;
	vertical-align:top;
}

.RadUpload .ruFakeInput
{
    border-width: 1px;
    border-style: solid;
    line-height: 18px;
    padding: 4px 4px 0 4px;

    -moz-box-sizing: content-box; /* Quirksmode height fix */
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}

.RadUpload_Windows7 .ruFakeInput
{
    border-color: #abadb3 #dbdfe6 #e3e9ef #e2e3ea;
    color: #000;
}

.RadUpload .ruFakeInput
{
    height: 16px;
    margin-right: -1px;
    vertical-align: middle;
    background-position: 0 -93px;
    background-repeat: repeat-x;
    background-color: #fff;
    
    line-height /*\**/: 20px\9; /* IE8 Standards still broken + old hacks don't work */
    height /*\**/: 20px\9;
    padding-top /*\**/: 0\9;
}

.RadUpload .ruFakeInput
{
	float: none;
	vertical-align:top;
}

.RadUpload .ruFakeInput
{
    border-width: 1px;
    border-style: solid;
    line-height: 18px;
    padding: 4px 4px 0 4px;

    -moz-box-sizing: content-box; /* Quirksmode height fix */
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}

.RadUpload_Windows7 .ruFakeInput
{
    border-color: #abadb3 #dbdfe6 #e3e9ef #e2e3ea;
    color: #000;
}

.RadUpload .ruFakeInput
{
    height: 16px;
    margin-right: -1px;
    vertical-align: middle;
    background-position: 0 -93px;
    background-repeat: repeat-x;
    background-color: #fff;
    
    line-height /*\**/: 20px\9; /* IE8 Standards still broken + old hacks don't work */
    height /*\**/: 20px\9;
    padding-top /*\**/: 0\9;
}

.RadUpload .ruFakeInput
{
	float: none;
	vertical-align:top;
}

.RadUpload .ruFakeInput
{
    border-width: 1px;
    border-style: solid;
    line-height: 18px;
    padding: 4px 4px 0 4px;

    -moz-box-sizing: content-box; /* Quirksmode height fix */
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}

.RadUpload_Windows7 .ruFakeInput
{
    border-color: #abadb3 #dbdfe6 #e3e9ef #e2e3ea;
    color: #000;
}

.RadUpload .ruFakeInput
{
    height: 16px;
    margin-right: -1px;
    vertical-align: middle;
    background-position: 0 -93px;
    background-repeat: repeat-x;
    background-color: #fff;
    
    line-height /*\**/: 20px\9; /* IE8 Standards still broken + old hacks don't work */
    height /*\**/: 20px\9;
    padding-top /*\**/: 0\9;
}

.RadUpload .ruFakeInput
{
	float: none;
	vertical-align:top;
}

.RadUpload .ruFakeInput
{
    border-width: 1px;
    border-style: solid;
    line-height: 18px;
    padding: 4px 4px 0 4px;

    -moz-box-sizing: content-box; /* Quirksmode height fix */
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
}

.RadUpload_Windows7 .ruButton
{
    background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Windows7.Upload.ruSprite.png');
    color: #1e395b;
}

.RadUpload .ruBrowse
{
    width: 65px;
    margin-left: 4px;
    background-position: 0 0;
}

.RadUpload .ruButton
{
    width: 79px;
    height: 22px;
    border: 0;
    padding-bottom: 2px;
    background-position: 0 -23px;
    background-repeat: no-repeat;
    background-color: transparent;
    text-align: center;
}

.RadUpload .ruButton
{
	float: none;
	vertical-align:top;
}

.RadUpload_Windows7 .ruButton
{
    background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Windows7.Upload.ruSprite.png');
    color: #1e395b;
}

.RadUpload .ruBrowse
{
    width: 65px;
    margin-left: 4px;
    background-position: 0 0;
}

.RadUpload .ruButton
{
    width: 79px;
    height: 22px;
    border: 0;
    padding-bottom: 2px;
    background-position: 0 -23px;
    background-repeat: no-repeat;
    background-color: transparent;
    text-align: center;
}

.RadUpload .ruButton
{
	float: none;
	vertical-align:top;
}

.RadUpload_Windows7 .ruButton
{
    background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Windows7.Upload.ruSprite.png');
    color: #1e395b;
}

.RadUpload .ruBrowse
{
    width: 65px;
    margin-left: 4px;
    background-position: 0 0;
}

.RadUpload .ruButton
{
    width: 79px;
    height: 22px;
    border: 0;
    padding-bottom: 2px;
    background-position: 0 -23px;
    background-repeat: no-repeat;
    background-color: transparent;
    text-align: center;
}

.RadUpload .ruButton
{
	float: none;
	vertical-align:top;
}

.RadUpload_Windows7 .ruButton
{
    background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Windows7.Upload.ruSprite.png');
    color: #1e395b;
}

.RadUpload .ruBrowse
{
    width: 65px;
    margin-left: 4px;
    background-position: 0 0;
}

.RadUpload .ruButton
{
    width: 79px;
    height: 22px;
    border: 0;
    padding-bottom: 2px;
    background-position: 0 -23px;
    background-repeat: no-repeat;
    background-color: transparent;
    text-align: center;
}

.RadUpload .ruButton
{
	float: none;
	vertical-align:top;
}

.RadUpload_Windows7 .ruButton
{
    background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Windows7.Upload.ruSprite.png');
    color: #1e395b;
}

.RadUpload .ruBrowse
{
    width: 65px;
    margin-left: 4px;
    background-position: 0 0;
}

.RadUpload .ruButton
{
    width: 79px;
    height: 22px;
    border: 0;
    padding-bottom: 2px;
    background-position: 0 -23px;
    background-repeat: no-repeat;
    background-color: transparent;
    text-align: center;
}

.RadUpload .ruButton
{
	float: none;
	vertical-align:top;
}

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">--%>
        <ContentTemplate>
            <table>
                <tr>
                    <td valign="top">
                        <table>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <telerik:RadMultiPage ID="RadMultiPageSubMenu" Runat="server">
                                    <telerik:RadPageView ID="RadPageViewBlank" runat="server"> </telerik:RadPageView>
                                        <telerik:RadPageView ID="RadPageViewMDAMenu" runat="server">
                                            <telerik:RadToolBar ID="RadToolBarMDAMenu" Runat="server" Skin="Windows7" 
                                                onbuttonclick="RadToolBarMDAMenu_ButtonClick">
                                                <Items>
                                                    <telerik:RadToolBarButton runat="server" Text="MDA Contribution History" 
                                                        Owner="RadToolBarMDAMenu">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" IsSeparator="True" Text="Button 4" 
                                                        Owner="RadToolBarMDAMenu">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" Text="Add/Edit Bank Deposit">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" IsSeparator="True" Text="Button 5" 
                                                        Visible="False">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" Text="Reconcile contribution with salary data" 
                                                        Owner="RadToolBarMDAMenu" Visible="False">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" IsSeparator="True" Text="Button 3" 
                                                        Visible="False">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" 
                                                        Text="Reconcile contribution with bank deposit" Visible="False">
                                                    </telerik:RadToolBarButton>
                                                </Items>
                                            </telerik:RadToolBar>
                                        </telerik:RadPageView>
                                        <telerik:RadPageView ID="RadPageViewMemberMenu" runat="server">
                                            <telerik:RadToolBar ID="RadToolBarMemberMenu" Runat="server" Skin="Windows7" 
                                                onbuttonclick="RadToolBarMemberMenu_ButtonClick">
                                                <Items>
                                                    <telerik:RadToolBarButton runat="server" Text="Member Information" 
                                                        Owner="RadToolBarMemberMenu">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" IsSeparator="True" Text="Button 3" 
                                                        Owner="RadToolBarMemberMenu">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" Text="Member Contribution History" 
                                                        Owner="RadToolBarMemberMenu">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" IsSeparator="True" Text="Button 4" 
                                                        Owner="RadToolBarMemberMenu">
                                                    </telerik:RadToolBarButton>
                                                    <telerik:RadToolBarButton runat="server" Text="Add Member Contribution" 
                                                        Owner="RadToolBarMemberMenu">
                                                    </telerik:RadToolBarButton>
                                                </Items>
                                            </telerik:RadToolBar>
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
                                    <telerik:RadMultiPage ID="contributionRadMultiPage" Runat="server">
                                        <telerik:RadPageView ID="AgencyActualContribution" runat="server" 
                                            oninit="AgencyActualContribution_Init">
                                            <table>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc1:AgencyActualContribution ID="AgencyActualContribution1" runat="server" />
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
                                            </table>
                                        </telerik:RadPageView>
                                        <telerik:RadPageView ID="ContactPersonView" runat="server">
                                            <table>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc2:ContactPerson ID="ContactPerson1" runat="server" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </telerik:RadPageView>
                                          <telerik:RadPageView ID="RadPageViewDefault" runat="server">
                                           <%-- <table cellpadding="0" cellspacing="0">
        <tr>
            <td align="left" valign="top">
                &nbsp;</td>
            <td width="50">
                &nbsp;</td>
            <td align="left" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <table align="left" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" width="130">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/coins-icon.png" 
                                PostBackUrl="~/Benefit_Module/ProcessMemberBenefits.aspx" 
                                ToolTip="Click here" Width="128px" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="mymenu2">
                                        Process Member Benefits</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text" title="Use this for processing a Member's benefits">
                                        Use this for processing a Member&#39;s...</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" width="130">
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/1340947992_06.png" ToolTip="Click here" 
                                Width="128px" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="mymenu2">
                                        Return of Contribution</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        This is for updating user information....</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
            <td width="50">
                &nbsp;</td>
            <td align="left" valign="top">
                <table align="left" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            <asp:ImageButton ID="ImageButton10" runat="server" 
                                ImageUrl="~/images/11.png" 
                                PostBackUrl="~/Benefit/SurvivorBenefitApplication.aspx" ToolTip="Click here" 
                                Width="128px" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="mymenu2">
                                        Process Survivor Benefits</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        This is for 
                                        computing survivor benefits...</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>--%>
    <br />
    <br />
                                        </telerik:RadPageView>
                                        <telerik:RadPageView ID="AgencyContributionHistoryView" runat="server" 
                                            oninit="AgencyContributionHistoryView_Init" 
                                            onload="AgencyContributionHistoryView_Load">
                                            <table>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <div class="titleShadow" 
                                                            style=" font-size: 18pt; color: #000066; font-weight: bold; width:422px; font-family:Arial, Helvetica, sans-serif; text-align: left;">
                                                            Agency contribution History</div>
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
                                                        <asp:Panel ID="PanelPeriod" runat="server">Start period <telerik:RadMonthYearPicker 
                                                                ID="RadMonthYearPickerStart" Runat="server"></telerik:RadMonthYearPicker><asp:RequiredFieldValidator 
                                                                ID="RequiredFieldValidator1" runat="server" 
                                                                ControlToValidate="RadMonthYearPickerStart" ErrorMessage="Required" 
                                                                ForeColor="Red" ValidationGroup="validatePeriod"></asp:RequiredFieldValidator>&#160; &#160; &#160; End period <telerik:RadMonthYearPicker 
                                                                ID="RadMonthYearPickerEnd" Runat="server"></telerik:RadMonthYearPicker><asp:RequiredFieldValidator 
                                                                ID="RequiredFieldValidator2" runat="server" 
                                                                ControlToValidate="RadMonthYearPickerEnd" ErrorMessage="Required" 
                                                                ForeColor="Red" ValidationGroup="validatePeriod"></asp:RequiredFieldValidator>&#160; &#160; &#160; &#160; &#160; &#160;<telerik:RadButton 
                                                                ID="RadButtonPeriod" runat="server" onclick="RadButtonPeriod_Click" 
                                                                Text="View selection" ValidationGroup="validatePeriod"></telerik:RadButton>&#160; &#160;
                                                                <telerik:RadButton ID="RadButtonprintAgency" runat="server" onclick="RadButtonPrintAgency_Click" 
                                                                Text="Print">
                                                                </telerik:RadButton>
                                                                </asp:Panel>
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
                                                        <uc10:AGENCYContributionHistory ID="AGENCYContributionHistory1" 
                                                            runat="server" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
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
                                            </table>
                                        </telerik:RadPageView>
                                        
                                        <telerik:RadPageView ID="AgencyContributionArrearsView" runat="server">
                                            <table>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc10:AGENCYContributionHistory ID="AGENCYContributionHistory2" 
                                                            runat="server" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <table align="center">
                                                            <tr>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar8" Runat="server" Skin="Windows7"><Items><telerik:RadToolBarButton 
                                                                            runat="server" ImagePosition="AboveText" ImageUrl="~/images/Icons/add.png" 
                                                                            Text="New"></telerik:RadToolBarButton>
                                                                    </Items>
                                                                    </telerik:RadToolBar>
                                                                </td>
                                                                <td width="50">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar9" Runat="server" Skin="Windows7"><Items><telerik:RadToolBarButton 
                                                                            runat="server" ImagePosition="AboveText" ImageUrl="~/images/xlsx-win-icon.png" 
                                                                            Owner="RadToolBar3" Text="Import"></telerik:RadToolBarButton>
                                                                    </Items>
                                                                    </telerik:RadToolBar>
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
                                            </table>
                                        </telerik:RadPageView>
                                        <telerik:RadPageView ID="MemberInformationView" runat="server">
                                            <table>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc7:MemberInformation ID="MemberInformation1" runat="server" />
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
                                          <telerik:RadPageView ID="MemberArrearsView" runat="server">
                                              <table>
                                                  <tr>
                                                      <td>
                                                          &nbsp;</td>
                                                      <td>
                                                          <uc8:MemberContributionArrears ID="MemberContributionArrears1" runat="server" />
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
                                        <telerik:RadPageView ID="RadPageViewMemberContributionAdd" runat="server">
                                           
                                            <table>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc20:MemberContributionAdded ID="MemberContributionAdded1" runat="server" />
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
                                            </table>
                                                        
                                                  
                                        </telerik:RadPageView>
                                        <telerik:RadPageView ID="MemberContributionHistoryView" runat="server" 
                                            oninit="MemberContributionHistoryView_Init">
                                            <table>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <div class="titleShadow" 
                                                            style=" font-size: 16pt; color: #000066; font-weight: bold; width:422px; font-family:Arial, Helvetica, sans-serif; text-align: left;">
                                                            Member contribution history</div></td>
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
                                                      <asp:Panel ID="Panel1" runat="server">Start period <telerik:RadMonthYearPicker 
                                                                ID="RadMonthYearPickerstartPeriodMember" Runat="server"></telerik:RadMonthYearPicker><asp:RequiredFieldValidator 
                                                                ID="RequiredFieldValidator3" runat="server" 
                                                                ControlToValidate="RadMonthYearPickerstartPeriodMember" ErrorMessage="Required" 
                                                                ForeColor="Red" ValidationGroup="validatePeriod"></asp:RequiredFieldValidator>&#160; &#160; &#160; End period <telerik:RadMonthYearPicker 
                                                                ID="RadMonthYearPickerendPeriodMember" Runat="server"></telerik:RadMonthYearPicker><asp:RequiredFieldValidator 
                                                                ID="RequiredFieldValidator4" runat="server" 
                                                                ControlToValidate="RadMonthYearPickerendPeriodMember" ErrorMessage="Required" 
                                                                ForeColor="Red" ValidationGroup="validatePeriod"></asp:RequiredFieldValidator>&#160; &#160; &#160; &#160; &#160; &#160;
                                                                <telerik:RadButton ID="RadButtonPeriodMember" runat="server" onclick="RadButtonPeriodMember_Click" 
                                                                Text="View selection" ValidationGroup="validatePeriod">
                                                                </telerik:RadButton> &#160; &#160;
                                                                  <telerik:RadButton ID="RadButtonPrintMember" runat="server" onclick="RadButtonPrintMember_Click" 
                                                                Text="Print">
                                                                </telerik:RadButton>
                                                                </asp:Panel></td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc3:MemberContributionHistory ID="MemberContributionHistory2" runat="server" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
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
                                            </table>
                                        </telerik:RadPageView>
                                        <telerik:RadPageView ID="RadPageViewPrint" runat="server">
                                           <rsweb:ReportViewer ID="ReportViewerContribution" runat="server" Width="905px"></rsweb:ReportViewer>
                                        </telerik:RadPageView>
                                    </telerik:RadMultiPage>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" 
                            DecoratedControls="Default, Textbox, Textarea, Fieldset, Label, H4H5H6, Select, GridFormDetailsViews, ValidationSummary, LoginControls" 
                            Skin="Windows7" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    <%--</asp:UpdatePanel>--%>
</asp:Content>

