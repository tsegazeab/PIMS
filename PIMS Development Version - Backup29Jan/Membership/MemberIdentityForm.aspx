<%@ Page Title="Member Identity Form - Membership PSP MIS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="MemberIdentityForm.aspx.cs" Inherits="Membership_MemberIdentityForm" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>

<%@ Register src="../User_Control/MemberIdentity.ascx" tagname="MemberIdentity" tagprefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100px;
        }
        .style5
        {
            width: 200px;
        }
        .style3
        {
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left">
                <div class="titleShadow" style="width:575px;">
                    <h4 class="cardHeader">Update Member Identity</h4>
                    <uc1:MemberIdentity ID="MemberIdentity1" runat="server" />
                </div>
            </td>
        </tr>
    </table>
    
</asp:Content>

