<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageContribution.master" AutoEventWireup="true" CodeFile="ImportMemberContributionRecord.aspx.cs" Inherits="Contribution_ImportMemberContributionRecord" %>

<%@ Register src="../User_Control/BeneficiaryInformation.ascx" tagname="BeneficiaryInformation" tagprefix="uc1" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/Contribution/MEMBER/MemberContributionHistory.ascx" tagname="MemberContributionHistory" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 100%;
        }
    
.RadGrid_Windows7
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid_Windows7
{
    border:1px solid #a5b3c5;
    background:#fcfcfc;
    color:#000;
}

.RadGrid_Windows7
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid_Windows7
{
    border:1px solid #a5b3c5;
    background:#fcfcfc;
    color:#000;
}

.RadGrid_Windows7
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid_Windows7
{
    border:1px solid #a5b3c5;
    background:#fcfcfc;
    color:#000;
}

.RadGrid_Windows7
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid_Windows7
{
    border:1px solid #a5b3c5;
    background:#fcfcfc;
    color:#000;
}

.RadGrid_Windows7
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid_Windows7
{
    border:1px solid #a5b3c5;
    background:#fcfcfc;
    color:#000;
}

.RadGrid_Windows7
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid_Windows7
{
    border:1px solid #a5b3c5;
    background:#fcfcfc;
    color:#000;
}

.RadGrid_Windows7 .rgMasterTable
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid .rgMasterTable
{
    border-collapse:separate;
}

.RadGrid_Windows7 .rgMasterTable
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid .rgMasterTable
{
    border-collapse:separate;
}

.RadGrid_Windows7 .rgMasterTable
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid .rgMasterTable
{
    border-collapse:separate;
}

.RadGrid_Windows7 .rgMasterTable
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid .rgMasterTable
{
    border-collapse:separate;
}

.RadGrid_Windows7 .rgMasterTable
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid .rgMasterTable
{
    border-collapse:separate;
}

.RadGrid_Windows7 .rgMasterTable
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid .rgMasterTable
{
    border-collapse:separate;
}

.RadGrid_Windows7 .rgHeader:first-child
{
	border-left-width:0;
	padding-left:8px;
}

.RadGrid_Windows7 .rgHeader:first-child
{
	border-left-width:0;
	padding-left:8px;
}

.RadGrid_Windows7 .rgHeader:first-child
{
	border-left-width:0;
	padding-left:8px;
}

.RadGrid_Windows7 .rgHeader:first-child
{
	border-left-width:0;
	padding-left:8px;
}

.RadGrid_Windows7 .rgHeader:first-child
{
	border-left-width:0;
	padding-left:8px;
}

.RadGrid_Windows7 .rgHeader:first-child
{
	border-left-width:0;
	padding-left:8px;
}

.RadGrid_Windows7 .rgHeader
{
    color:#4c607a;
}

.RadGrid_Windows7 .rgHeader
{
	border:1px solid;
	border-color:#f6f9fb #fff #c2cedb #e1eaf3;
	border-top-width:0;
	background:#f1f5fb;
}

.RadGrid .rgHeader
{
	padding-top:5px;
	padding-bottom:4px;
	text-align:left;
	font-weight:normal;
}

.RadGrid .rgHeader
{
	padding-left:7px;
	padding-right:7px;
}

.RadGrid .rgHeader
{
	cursor:default;
}

.RadGrid_Windows7 .rgHeader
{
    color:#4c607a;
}

.RadGrid_Windows7 .rgHeader
{
	border:1px solid;
	border-color:#f6f9fb #fff #c2cedb #e1eaf3;
	border-top-width:0;
	background:#f1f5fb;
}

.RadGrid .rgHeader
{
	padding-top:5px;
	padding-bottom:4px;
	text-align:left;
	font-weight:normal;
}

.RadGrid .rgHeader
{
	padding-left:7px;
	padding-right:7px;
}

.RadGrid .rgHeader
{
	cursor:default;
}

.RadGrid_Windows7 .rgHeader
{
    color:#4c607a;
}

.RadGrid_Windows7 .rgHeader
{
	border:1px solid;
	border-color:#f6f9fb #fff #c2cedb #e1eaf3;
	border-top-width:0;
	background:#f1f5fb;
}

.RadGrid .rgHeader
{
	padding-top:5px;
	padding-bottom:4px;
	text-align:left;
	font-weight:normal;
}

.RadGrid .rgHeader
{
	padding-left:7px;
	padding-right:7px;
}

.RadGrid .rgHeader
{
	cursor:default;
}

.RadGrid_Windows7 .rgHeader
{
    color:#4c607a;
}

.RadGrid_Windows7 .rgHeader
{
	border:1px solid;
	border-color:#f6f9fb #fff #c2cedb #e1eaf3;
	border-top-width:0;
	background:#f1f5fb;
}

.RadGrid .rgHeader
{
	padding-top:5px;
	padding-bottom:4px;
	text-align:left;
	font-weight:normal;
}

.RadGrid .rgHeader
{
	padding-left:7px;
	padding-right:7px;
}

.RadGrid .rgHeader
{
	cursor:default;
}

.RadGrid_Windows7 .rgHeader
{
    color:#4c607a;
}

.RadGrid_Windows7 .rgHeader
{
	border:1px solid;
	border-color:#f6f9fb #fff #c2cedb #e1eaf3;
	border-top-width:0;
	background:#f1f5fb;
}

.RadGrid .rgHeader
{
	padding-top:5px;
	padding-bottom:4px;
	text-align:left;
	font-weight:normal;
}

.RadGrid .rgHeader
{
	padding-left:7px;
	padding-right:7px;
}

.RadGrid .rgHeader
{
	cursor:default;
}

.RadGrid_Windows7 .rgHeader
{
    color:#4c607a;
}

.RadGrid_Windows7 .rgHeader
{
	border:1px solid;
	border-color:#f6f9fb #fff #c2cedb #e1eaf3;
	border-top-width:0;
	background:#f1f5fb;
}

.RadGrid .rgHeader
{
	padding-top:5px;
	padding-bottom:4px;
	text-align:left;
	font-weight:normal;
}

.RadGrid .rgHeader
{
	padding-left:7px;
	padding-right:7px;
}

.RadGrid .rgHeader
{
	cursor:default;
}

        .style4
        {
            width: 400px;
        }
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style3">
    <tr>
        <td>
                &nbsp;</td>
        <td align="left" class="mybottom3">
            Import member contribution record</td>
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
                                            <table class="style3" __designer:mapid="17d5">
                                                <tr __designer:mapid="17d6">
                                                    <td __designer:mapid="17d7">
                                                        &nbsp;</td>
                                                    <td __designer:mapid="17d8">
                                                        <uc3:MemberContributionHistory ID="MemberContributionHistory2" runat="server" />
                                                    </td>
                                                    <td __designer:mapid="17da">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr __designer:mapid="17db">
                                                    <td __designer:mapid="17dc">
                                                        &nbsp;</td>
                                                    <td __designer:mapid="17dd">
                                                        <table align="center" class="style4" __designer:mapid="17de">
                                                            <tr __designer:mapid="17df">
                                                                <td __designer:mapid="17e0">
                                                                    <telerik:RadToolBar ID="RadToolBar10" Runat="server" Skin="Windows7" 
                                                                        Visible="False">
                                                                        <Items>
                                                                            <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                                                                ImageUrl="~/images/Icons/add.png" Text="New">
                                                                            </telerik:RadToolBarButton>
                                                                        </Items>
                                                                    </telerik:RadToolBar>
                                                                </td>
                                                                <td width="50" __designer:mapid="17e4">
                                                                    &nbsp;</td>
                                                                <td __designer:mapid="17e5">
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
                                                    <td __designer:mapid="17e9">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr __designer:mapid="17ea">
                                                    <td __designer:mapid="17eb">
                                                        &nbsp;</td>
                                                    <td __designer:mapid="17ec">
                                                        &nbsp;</td>
                                                    <td __designer:mapid="17ed">
                                                        &nbsp;</td>
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
            <asp:Button ID="ButtonNextPersonalInformation" runat="server" 
                                     Text="Update" 
                        Width="150px" Visible="False" />
        </td>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

