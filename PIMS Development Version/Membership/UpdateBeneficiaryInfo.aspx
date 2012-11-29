<%@ Page Title="Member Beneficiary Information - Membership PSP MIS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="UpdateBeneficiaryInfo.aspx.cs" Inherits="Membership_UpdateBeneficiaryInfo" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>
<%@ Register src="../User_Control/BeneficiaryInformationUpdate.ascx" tagname="BeneficiaryInformationUpdate" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 4px;
        }
        .style4
        {
            width: 100px;
        }
        .style5
        {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left">
                <div class="titleShadow" style=" font-size: 18pt; color: #000066; font-weight: bold; width:578px; font-family:Arial, Helvetica, sans-serif;">
                    &nbsp;&nbsp;Update Beneficiary Information
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:BeneficiaryInformationUpdate ID="BeneficiaryInformationUpdate1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

