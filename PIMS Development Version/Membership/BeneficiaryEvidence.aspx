<%@ Page Title="Beneficiary Evidence - Membership PSP MIS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="BeneficiaryEvidence.aspx.cs" Inherits="Membership_BeneficiaryEvidence" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>


<%@ Register src="../User_Control/BeneficiaryEvidence.ascx" tagname="BeneficiaryEvidence" tagprefix="uc1" %>


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
                <div class="titleShadow" style=" font-size: 18pt; color: #000066; font-weight: bold; width:605px; font-family:Arial, Helvetica, sans-serif;">
                    &nbsp;&nbsp;Member Beneficiary Evidence
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:BeneficiaryEvidence ID="BeneficiaryEvidence1" runat="server" />
            </td>
        </tr>
    </table>    
</asp:Content>

