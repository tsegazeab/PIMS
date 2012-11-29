<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageContribution.master" AutoEventWireup="true" CodeFile="Contribution.aspx.cs" Inherits="Contribution_Contribution" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/MDADetails.ascx" tagname="MDADetails" tagprefix="uc1" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/ContactPerson.ascx" tagname="ContactPerson" tagprefix="uc2" %>
<%@ Register src="../User_Control/Contribution/MEMBER/MemberContributionHistory.ascx" tagname="MemberContributionHistory" tagprefix="uc3" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/WorkstationWithinAgencyContributionHistory.ascx" tagname="WorkstationWithinAgencyContributionHistory" tagprefix="uc4" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/MemberWithinAgencyContributionHistory.ascx" tagname="MemberWithinAgencyContributionHistory" tagprefix="uc5" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/AgencyContributionArreas.ascx" tagname="AgencyContributionArreas" tagprefix="uc6" %>
<%@ Register src="../User_Control/Contribution/MEMBER/MemberInformation.ascx" tagname="MemberInformation" tagprefix="uc7" %>
<%@ Register src="../User_Control/Contribution/MEMBER/MemberContributionArrears.ascx" tagname="MemberContributionArrears" tagprefix="uc8" %>
<%@ Register src="../User_Control/Contribution/MEMBER/MemberBreakInService.ascx" tagname="MemberBreakInService" tagprefix="uc9" %>

<%@ Register src="../User_Control/EmploymentServiceBreakEvidence.ascx" tagname="employmentservicebreakevidence" tagprefix="uc14" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/NewContribution.ascx" tagname="NewContribution" tagprefix="uc10" %>

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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style3">
                <tr>
                    <td align="left" valign="top" width="300">
                        <telerik:RadPanelBar ID="RadPanelBar1" Runat="server" 
                            onitemclick="RadPanelBar1_ItemClick" Skin="Windows7">
                            <Items>
                                <telerik:RadPanelItem runat="server" Expanded="True" PreventCollapse="True" 
                                    Text="CONTRIBUTION (RSS AGENCY)">
                                    <Items>
                                        <telerik:RadPanelItem runat="server" Text="MDA Details">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Contact Person">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Contribution History">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Workstation within Agency">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Member within Agency">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Contribution Arrears">
                                        </telerik:RadPanelItem>
                                    </Items>
                                </telerik:RadPanelItem>
                                <telerik:RadPanelItem runat="server" Expanded="True" PreventCollapse="True" 
                                    Selected="True" Text="CONTRIBUTION (MEMBER)">
                                    <Items>
                                        <telerik:RadPanelItem runat="server" Text="Member Information">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Member Contribution History">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Member Contribution Arrears">
                                        </telerik:RadPanelItem>
                                        <telerik:RadPanelItem runat="server" Text="Break in Service">
                                        </telerik:RadPanelItem>
                                    </Items>
                                </telerik:RadPanelItem>
                            </Items>
                        </telerik:RadPanelBar>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td valign="top">
                        <table class="style3">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <telerik:RadMultiPage ID="contributionRadMultiPage" Runat="server">
                                        <telerik:RadPageView ID="MDADetailsView" runat="server">
                                            <table class="style3">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc1:MDADetails ID="MDADetails1" runat="server" />
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
                                            <table class="style3">
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
                                        <telerik:RadPageView ID="AgencyContributionHistoryView" runat="server">
                                            <table class="style3">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc3:MemberContributionHistory ID="MemberContributionHistory1" runat="server" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <table align="center" class="style4">
                                                            <tr>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar2" Runat="server" Skin="Windows7" 
                                                                        onbuttonclick="RadToolBar2_ButtonClick">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/Icons/add.png" Text="New">
                                                                            </telerik:RadToolBarButton>
                                                                        </Items>
                                                                    </telerik:RadToolBar>
                                                                </td>
                                                                <td width="50">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar3" Runat="server" Skin="Windows7">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/xlsx-win-icon.png" Owner="RadToolBar3" Text="Import">
                                                                            </telerik:RadToolBarButton>
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
                                        <telerik:RadPageView ID="WorkstationWithinAgencyView" runat="server">
                                            <table class="style3">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc4:WorkstationWithinAgencyContributionHistory ID="WorkstationWithinAgencyContributionHistory1" 
                                                            runat="server" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <table align="center" class="style4">
                                                            <tr>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar4" Runat="server" Skin="Windows7">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/Icons/add.png" Text="New">
                                                                            </telerik:RadToolBarButton>
                                                                        </Items>
                                                                    </telerik:RadToolBar>
                                                                </td>
                                                                <td width="50">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar5" Runat="server" Skin="Windows7">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/xlsx-win-icon.png" Owner="RadToolBar3" Text="Import">
                                                                            </telerik:RadToolBarButton>
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
                                        <telerik:RadPageView ID="MemberWithinAgenecyView" runat="server">
                                            <table class="style3">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc5:MemberWithinAgencyContributionHistory ID="MemberWithinAgencyContributionHistory1" 
                                                            runat="server" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <table align="center" class="style4">
                                                            <tr>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar6" Runat="server" Skin="Windows7">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/Icons/add.png" Text="New">
                                                                            </telerik:RadToolBarButton>
                                                                        </Items>
                                                                    </telerik:RadToolBar>
                                                                </td>
                                                                <td width="50">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar7" Runat="server" Skin="Windows7">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/xlsx-win-icon.png" Owner="RadToolBar3" Text="Import">
                                                                            </telerik:RadToolBarButton>
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
                                        <telerik:RadPageView ID="AgencyContributionArrearsView" runat="server">
                                            <table class="style3">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc6:AgencyContributionArreas ID="AgencyContributionArreas1" runat="server" />
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <table align="center" class="style4">
                                                            <tr>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar8" Runat="server" Skin="Windows7">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/Icons/add.png" Text="New">
                                                                            </telerik:RadToolBarButton>
                                                                        </Items>
                                                                    </telerik:RadToolBar>
                                                                </td>
                                                                <td width="50">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar9" Runat="server" Skin="Windows7">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/xlsx-win-icon.png" Owner="RadToolBar3" Text="Import">
                                                                            </telerik:RadToolBarButton>
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
                                            <table class="style3">
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
                                        <telerik:RadPageView ID="MemberContributionHistoryView" runat="server">
                                            <table class="style3">
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
                                                        <table align="center" class="style4">
                                                            <tr>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar10" Runat="server" Skin="Windows7">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/Icons/add.png" Text="New">
                                                                            </telerik:RadToolBarButton>
                                                                        </Items>
                                                                    </telerik:RadToolBar>
                                                                </td>
                                                                <td width="50">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <telerik:RadToolBar ID="RadToolBar11" Runat="server" Skin="Windows7">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/xlsx-win-icon.png" Owner="RadToolBar3" Text="Import">
                                                                            </telerik:RadToolBarButton>
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
                                        <telerik:RadPageView ID="MemberArrearsView" runat="server">
                                            <table class="style3">
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
                                        <telerik:RadPageView ID="MemberBreakInServiceView" runat="server">
                                            <table class="style3">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        <uc9:MemberBreakInService ID="MemberBreakInService1" runat="server" />
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
                        </table>
                    </td>
                </tr>
                <tr>
                    <td width="300">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" 
                            DecoratedControls="Default, Textbox, Textarea, Fieldset, Label, H4H5H6, Select, GridFormDetailsViews, ValidationSummary, LoginControls" 
                            Skin="Windows7" />
                    </td>
                </tr>
            </table>
            <telerik:RadToolTip ID="NewAgencyContributionTip" runat="server" 
                Animation="Fade" HideEvent="FromCode" Modal="True" Position="Center" 
                RelativeTo="BrowserWindow" ShowEvent="FromCode">
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" class="mybottom" colspan="5">
                            New agency contribution record</td>
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
                            <uc10:NewContribution ID="NewContribution1" runat="server" />
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

