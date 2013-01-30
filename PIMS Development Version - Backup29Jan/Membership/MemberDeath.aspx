<%@ Page Title="Register Member Death - Membership PSP MIS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="MemberDeath.aspx.cs" Inherits="Membership_MemberDeath" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>

<%@ Register src="../User_Control/RegisterDeath.ascx" tagname="RegisterDeath" tagprefix="uc1" %>



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
                <div class="titleShadow" style=" font-size: 18pt; color: #000066; font-weight: bold; width:575px; font-family:Arial, Helvetica, sans-serif;">
                    &nbsp;&nbsp;Member Death Registration
                </div>
            </td>
        </tr>        
        <tr>
            <td>
                <uc1:RegisterDeath ID="RegisterDeath1" runat="server" />
            </td>
        </tr>
    </table>
    
</asp:Content>

