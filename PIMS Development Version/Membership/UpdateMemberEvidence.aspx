<%@ Page Title="Member Evidence - Membership PSP MIS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="UpdateMemberEvidence.aspx.cs" Inherits="Membership_UpdateMemberEvidence" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>
<%@ Register src="../User_Control/MemberEvidence.ascx" tagname="MemberEvidence" tagprefix="uc1" %>

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
        .style7
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left">
                <div class="titleShadow" style=" font-size: 18pt; color: #000066; font-weight: bold; width:605px; font-family:Arial, Helvetica, sans-serif;">
                    &nbsp;&nbsp;Update Member Personal Information Evidence
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:MemberEvidence ID="MemberEvidence1" runat="server" />
            </td>
        </tr>
    </table>    
</asp:Content>

