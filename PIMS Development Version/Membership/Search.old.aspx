<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="Search.old.aspx.cs" Inherits="Membership_Search" %>

<%@ Register src="../User_Control/Search/MemberTextandIDSearch.ascx" tagname="MemberTextandIDSearch" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                &nbsp;</td>
            <td align="left" class="mybottom3">
                Search member </td>
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
                <uc1:MemberTextandIDSearch ID="MemberTextandIDSearch1" runat="server" />
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
        </tr>
    </table>
</asp:Content>

