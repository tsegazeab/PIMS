<%@ Page Title="Update Member Contact Information - Membership PSP MIS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="UpdateContactInfo.aspx.cs" Inherits="Membership_UpdateContactInfo" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>
<%@ Register src="../User_Control/ContactInformationUpdate.ascx" tagname="ContactInformationUpdate" tagprefix="uc1" %>

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
                    &nbsp;&nbsp;Update Member Contact Information
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <uc1:ContactInformationUpdate ID="ContactInformationUpdate" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

