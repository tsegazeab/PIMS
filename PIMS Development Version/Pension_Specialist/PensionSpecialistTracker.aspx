<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTracking.master" AutoEventWireup="true" CodeFile="PensionSpecialistTracker.aspx.cs" Inherits="Pension_Specialist_PensionSpecialistTracker" %>

<%@ Register src="../User_Control/PensionSpecialistTracker.ascx" tagname="PensionSpecialistTracker" tagprefix="uc1" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    .style4
    {
        width: 100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style3">
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
                <uc1:PensionSpecialistTracker ID="PensionSpecialistTracker1" runat="server" />
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
            <asp:Button ID="Button1" runat="server" Text="Save" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Close" Width="150px" />
    <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" 
        
        DecoratedControls="Default, Textbox, Textarea, Fieldset, Label, H4H5H6, Select, GridFormDetailsViews, ValidationSummary, LoginControls" 
        Skin="Outlook" />
        </td>
        <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

