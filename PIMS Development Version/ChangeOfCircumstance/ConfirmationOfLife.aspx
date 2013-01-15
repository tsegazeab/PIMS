<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ConfirmationOfLife.aspx.cs" Inherits="ChangeOfCircumstance_ConfirmationOfLife" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/PensionSpecialistTracker.ascx" tagname="PensionSpecialistTracker" tagprefix="uc1" %>
<%@ Register src="../User_Control/ChangeOfCircumstance_Confirmation.ascx" tagname="ChangeOfCircumstance_Confirmation" tagprefix="uc2" %>

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
        <tr>
            <td class="mybottom">
                &nbsp;</td>
            <td align="left" class="mybottom">
                &nbsp;Change of Circumstance – Confirmation of life</td>
            <td class="mybottom">
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
                <uc2:ChangeOfCircumstance_Confirmation ID="ChangeOfCircumstance_Confirmation1" 
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

