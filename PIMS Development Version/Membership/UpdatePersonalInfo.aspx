<%@ Page Title="Update Member Personal Information - Membership PSP MIS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="UpdatePersonalInfo.aspx.cs" Inherits="Membership_UpdatePersonalInfo" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/PersonalInformationUpdate.ascx" tagname="personalinformationUpdate" tagprefix="uc2" %>

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

.RadGrid_WebBlue
{
    font:12px/16px "segoe ui",arial,sans-serif;
}

.RadGrid_WebBlue
{
    border:1px solid #768ca5;
    background:#fff;
    color:#000;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="left">
                <div class="titleShadow" style=" font-size: 18pt; color: #000066; font-weight: bold; width:500px; font-family:Arial, Helvetica, sans-serif;">
                    &nbsp;&nbsp;Update Personal Information
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <uc2:personalinformationUpdate ID="PersonalInformationUpdate" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

