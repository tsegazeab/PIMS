<%@ Page Title="Early Pension Benefits - PIMS" Language="C#" MasterPageFile="~/MasterPageBenefit.master" AutoEventWireup="true" CodeFile="EarlyPensionBenefits.aspx.cs" Inherits="Benefit_Module_EarlyPensionBenefits" %>
<%@ MasterType VirtualPath="~/MasterPageBenefit.master" %>

<%@ Register src="../User_Control/Life_Benefit_Application/EarlyPensionBenefits.ascx" tagname="EarlyPensionBenefits" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left">
                <div class="titleShadow" style="width:700px;">
                    <h4 class="cardHeader">Member&#39;s Benefits</h4>
                    <uc1:EarlyPensionBenefits ID="EarlyPensionBenefits1" runat="server" />
                    <br />           
                </div>
            </td>
        </tr> 
    </table>
</asp:Content>

