<%@ Page Title="Process Member Benefits - Benefits PIMS" Language="C#" MasterPageFile="~/MasterPageBenefit.master" AutoEventWireup="true" CodeFile="MemberBenefitsEligibility.aspx.cs" Inherits="Benefit_Module_MemberBenefitsEligibility" %>
<%@ MasterType VirtualPath="~/MasterPageBenefit.master" %>

<%@ Register src="../User_Control/Life_Benefit_Application/MemberBenefitEligibility.ascx" tagname="MemberBenefitEligibility" tagprefix="uc1" %>

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
                <div class="titleShadow" style="font-size: 18pt; color: #000066; font-weight: bold; width:575px; font-family:Arial, Helvetica, sans-serif;">
                    Member&#39;s Benefits Eligibility</div>
            </td>
        </tr>        
        <tr>
            <td>                
                <uc1:MemberBenefitEligibility ID="MemberBenefitEligibility1" runat="server" />
            </td>
        </tr>
    </table>
    
</asp:Content>

