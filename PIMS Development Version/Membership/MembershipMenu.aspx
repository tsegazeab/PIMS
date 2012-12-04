<%@ Page Title="Membership - PIMS" Language="C#" MasterPageFile="~/MasterPageMembership.master" AutoEventWireup="true" CodeFile="MembershipMenu.aspx.cs" Inherits="Membership_MembershipMenu" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 450px;
        }
    </style>
    <link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    window.onload = function () { CloseActiveToolTip(); };
    </script>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td align="left" valign="top">
                &nbsp;</td>
            <td width="50">
                &nbsp;</td>
            <td align="left" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <table align="left" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" width="130">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/images/modules/user/Add-Male-User-icon.png" 
                                PostBackUrl="~/Membership/NewMemberApplication.aspx" ToolTip="Click here" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="mymenu2">
                                        <span>Register new member</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        Use this for adding a new member...</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" width="130">
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/modules/user/Edit-Male-User-icon.png" 
                                PostBackUrl="~/Membership/UpdatePersonalInfo.aspx" ToolTip="Click here" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="mymenu2">
                                        Update personal information</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        This is for updating user information....</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" width="130">
                            <asp:ImageButton ID="ImageButton3" runat="server" 
                                ImageUrl="~/images/modules/Contacts/addressbook-edit-icon.png" 
                                PostBackUrl="~/Membership/UpdateContactInfo.aspx" ToolTip="Click here" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="mymenu2">
                                        Update contact information</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        Use this for updating contact information...</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>
            </td>
            <td width="50">
                &nbsp;</td>
            <td align="left" valign="top">
                <table align="left" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            <asp:ImageButton ID="ImageButton10" runat="server" 
                                ImageUrl="~/images/Graph-icon.png" 
                                PostBackUrl="~/Membership/UpdateServiceBreak.aspx" ToolTip="Click here" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="mymenu2">
                                        Update service break</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        This is for updating service break information...</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            <asp:ImageButton ID="ImageButton11" runat="server" 
                                ImageUrl="~/images/personal-loan-icon.png" 
                                PostBackUrl="~/Membership/UpdateBeneficiaryInfo.aspx" 
                                ToolTip="Click here" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="mymenu2">
                                        Update beneficiary information</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        Use it for updating beneficiary information...</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            <asp:ImageButton ID="ImageButton12" runat="server" 
                                ImageUrl="~/images/Icons/Disabled person.jpg" 
                                PostBackUrl="~/Membership/UpdateBeneficiaryDisablility.aspx" 
                                ToolTip="Click here" />
                        </td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="mymenu2">
                                        Update beneficiary disability</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        This is for updating beneficiary disability information</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="margin-left: 80px" width="130">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <br />
    </asp:Content>

