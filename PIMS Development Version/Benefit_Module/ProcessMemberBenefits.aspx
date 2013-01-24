<%@ Page Title="Process Member Benefits - Benefits PIMS" Language="C#" MasterPageFile="~/MasterPageBenefit.master" AutoEventWireup="true" CodeFile="ProcessMemberBenefits.aspx.cs" Inherits="Benefit_Module_ProcessMemberBenefits" %>
<%@ MasterType VirtualPath="~/MasterPageBenefit.master" %>

<%@ Register src="../User_Control/Life_Benefit_Application/ProcessMemberBenefits.ascx" tagname="ProcessMemberBenefits" tagprefix="uc1" %>

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
                    &nbsp;&nbsp;Process Member&#39;s Benefits
                </div>
            </td>
        </tr>        
        <tr>
            <td>
                <uc1:ProcessMemberBenefits ID="ProcessMemberBenefits1" runat="server" />
            </td>
        </tr>
    </table>
    
</asp:Content>

