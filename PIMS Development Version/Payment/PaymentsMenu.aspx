<%@ Page Title="Member Payments - PIMS" Language="C#" MasterPageFile="~/MasterPagePayment.master" AutoEventWireup="true" CodeFile="PaymentsMenu.aspx.cs" Inherits="Payment_PaymentsMenu" %>
<%@ MasterType VirtualPath="~/MasterPagePayment.master" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
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
                                ImageUrl="~/images/register-icon.png" 
                                PostBackUrl="~/Payment/GenerateSchedule.aspx" 
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
                                        Generate Payment Schedule</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text" title="Use this for processing a Member's benefits">
                                        Use this for processing a Member&#39;s...</td>
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
                                        ..</td>
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
                                ImageUrl="~/images/11.png" 
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
                                        View Previous Payments</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        This is for 
                                        computing survivor benefits...</td>
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
    <br />
    <br />
    </asp:Content>

