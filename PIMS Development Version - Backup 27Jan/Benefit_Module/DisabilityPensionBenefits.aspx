<%@ Page Title="Disability Retirement Benefits - PIMS" Language="C#" MasterPageFile="~/MasterPageBenefit.master" AutoEventWireup="true" CodeFile="DisabilityPensionBenefits.aspx.cs" Inherits="Benefit_Module_DisabilityPensionBenefits" %>
<%@ MasterType VirtualPath="~/MasterPageBenefit.master" %>

<%@ Register src="../User_Control/Life_Benefit_Application/DisabilityPensionBenefits.ascx" tagname="DisabilityPensionBenefits" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left">
                <div class="titleShadow" style=" font-size: 18pt; color: #000066; font-weight: bold; width:650px; font-family:Arial, Helvetica, sans-serif;">
                    Member&#39;s Benefits
                </div>
            </td>
        </tr>        
        <tr>
            <td>                
                <uc1:DisabilityPensionBenefits ID="DisabilityPensionBenefits1" runat="server" />           
            </td>
        </tr>
    </table>
</asp:Content>

