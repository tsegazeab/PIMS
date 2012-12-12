<%@ Page Title="System Administration - Pension Information Management System" Language="C#" MasterPageFile="~/MasterPageSysAdmin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="SystemAdministration_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                                ImageUrl="~/images/Icons/add-user.png" 
                                PostBackUrl="~/SystemAdministration/UserForm.aspx" 
                                ToolTip="Click here" Width="128px" />
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
                                        Register New User</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text" title="Use this for processing a Member's benefits">
                                        Use this for registering new users...</td>
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
                                ImageUrl="~/images/Groups-Meeting-Dark-icon.png" ToolTip="Click here" 
                                Width="128px" />
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
                                        Manage User Roles</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        This 
                                        is used for managing user roles....</td>
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
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            &nbsp;</td>
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
                                ImageUrl="~/images/user-info-icon.png" 
                                PostBackUrl="~/Benefit/SurvivorBenefitApplication.aspx" ToolTip="Click here" 
                                Width="128px" />
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
                                        Manage Existing Users</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        This is for 
                                        managing existing user accounts...</td>
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
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        &nbsp;</td>
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
</asp:Content>

