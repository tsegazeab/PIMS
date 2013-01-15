<%@ Page Title="Service Break Evidence - Membership PSP MIS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="UpdateServiceBreakEvidence.aspx.cs" Inherits="Membership_UpdateServiceBreakEvidence" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>

<%@ Register src="../User_Control/MemberServiceBreakEvidence.ascx" tagname="MemberServiceBreakEvidence" tagprefix="uc1" %>


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
    <script type="text/javascript" src="../Scripts/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../Scripts/general.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left">
                <div class="titleShadow" style=" font-size: 18pt; color: #000066; font-weight: bold; width:605px; font-family:Arial, Helvetica, sans-serif;">
                    &nbsp;&nbsp;Update Member Service Break Evidence
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:MemberServiceBreakEvidence ID="MemberServiceBreakEvidence1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

