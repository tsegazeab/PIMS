<%@ Page Title="Benefits - PIMS" Language="C#" MasterPageFile="~/MasterPageBenefit.master" AutoEventWireup="true" CodeFile="BenefitsMenu.aspx.cs" Inherits="Benefit_Module_BenefitsMenu" %>
<%@ MasterType VirtualPath="~/MasterPageMembership.master" %>
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
                                ImageUrl="~/images/coins-icon.png" 
                                PostBackUrl="~/Benefit/LifeBenefitApplication.aspx" 
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
                                        Process Member Benefits</td>
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
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/images/1340947992_06.png" ToolTip="Click here" 
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
                                        Return of Contribution</td>
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
                                        Process Survivor Benefits</td>
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

