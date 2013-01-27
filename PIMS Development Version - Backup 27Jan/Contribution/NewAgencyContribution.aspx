<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageContribution.master" AutoEventWireup="true" CodeFile="NewAgencyContribution.aspx.cs" Inherits="Contribution_NewAgencyContribution" %>

<%@ Register src="../User_Control/DisabilityInformation.ascx" tagname="DisabilityInformation" tagprefix="uc1" %>
<%@ Register src="../User_Control/Contribution/RSSAGENCY/NewContribution.ascx" tagname="NewContribution" tagprefix="uc2" %>

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
            New agency contribution record</td>
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
            <uc2:NewContribution ID="NewContribution1" runat="server" />
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
                                     Text="Save" 
                        Width="150px" />
        </td>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

