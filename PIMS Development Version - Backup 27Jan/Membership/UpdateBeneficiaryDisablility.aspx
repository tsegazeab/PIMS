<%@ Page Title="Member Beneficiary Disability - Membership PSP MIS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="UpdateBeneficiaryDisablility.aspx.cs" Inherits="Membership_UpdateBeneficiaryDisablility" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>
<%@ Register src="../User_Control/DisabilityInformation.ascx" tagname="DisabilityInformation" tagprefix="uc1" %>

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
                <div class="titleShadow" style=" font-size: 18pt; color: #000066; font-weight: bold; width:605px; font-family:Arial, Helvetica, sans-serif;">
                    &nbsp;&nbsp;Update Beneficiary Disability
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:DisabilityInformation ID="DisabilityInformation1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

