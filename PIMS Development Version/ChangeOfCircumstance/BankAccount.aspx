<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BankAccount.aspx.cs" Inherits="ChangeOfCircumstance_BankAccount" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/PensionSpecialistTracker.ascx" tagname="PensionSpecialistTracker" tagprefix="uc1" %>
<%@ Register src="../User_Control/ChangeOfCircumstance_BankAccount.ascx" tagname="ChangeOfCircumstance_BankAccount" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style3">
        <tr class="mybottom">
            <td>
                &nbsp;</td>
            <td align="left">
                &nbsp;Change of Circumstance – Bank Account</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="left">
                <uc2:ChangeOfCircumstance_BankAccount ID="ChangeOfCircumstance_BankAccount1" 
                    runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update Information" 
                    Width="150px" />
                <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" 
        
        DecoratedControls="Default, Textbox, Textarea, Fieldset, Label, H4H5H6, Select, GridFormDetailsViews, ValidationSummary, LoginControls" 
        Skin="Outlook" />
            </td>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

