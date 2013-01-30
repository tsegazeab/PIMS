<%@ Page Title="Death In Service Survivor Benefits - PIMS" Language="C#" MasterPageFile="~/MasterPageBenefit.master" AutoEventWireup="true" CodeFile="DeathInServiceBenefits.aspx.cs" Inherits="Benefit_Module_DeathInServiceBenefits" %>
<%@ MasterType VirtualPath="~/MasterPageBenefit.master" %>

<%@ Register src="../User_Control/Life_Benefit_Application/SurvivorBenefits.ascx" tagname="SurvivorBenefits" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left">
                <div class="titleShadow" style="width:700px;">
                    <h4 class="cardHeader">Survivor Benefits</h4>
                    <br />
                    <uc1:SurvivorBenefits ID="SurvivorBenefits1" runat="server" />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

