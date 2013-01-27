<%@ Page Title="Process Survivor Benefits - PIMS" Language="C#" MasterPageFile="~/MasterPageBenefit.master" AutoEventWireup="true" CodeFile="ProcessSurvivorBenefits.aspx.cs" Inherits="Benefit_Module_ProcessSurvivorBenefits" %>
<%@ MasterType VirtualPath="~/MasterPageBenefit.master" %>

<%@ Register src="../User_Control/Life_Benefit_Application/ProcessSurvivorBenefits.ascx" tagname="ProcessSurvivorBenefits" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left">
                <div class="titleShadow" style="width:650px;">
                    <h4 class="cardHeader">Process Survivor Benefits</h4>
                    <uc1:ProcessSurvivorBenefits ID="ProcessSurvivorBenefits1" runat="server" /> 
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

