<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="#bcc7d8">
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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
                    &nbsp;</td>
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
                    &nbsp;</td>
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
                    &nbsp;</td>
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
                    &nbsp;</td>
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
                    &nbsp;</td>
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
                    &nbsp;</td>
                <td align="center">
                    <telerik:RadToolBar ID="RadToolBar1" Runat="server" Skin="Office2007">
                        <Items>
                            <telerik:RadToolBarButton runat="server" Checked="True" 
                                ImagePosition="AboveText" 
                                ImageUrl="~/images/modules/Desktop_icons/Final_PF_Logo2.png" 
                                PostBack="False">
                            </telerik:RadToolBarButton>
                        </Items>
                    </telerik:RadToolBar>
                </td>
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <span class="mybottom3W">PUBLIC SERVANTS PENSION IT SYSTEM</span></td>
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx">
                        <LayoutTemplate>
                            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                <tr>
                                    <td>
                                        <table cellpadding="0">
                                            <tr>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td>
                                                    <telerik:RadTextBox ID="UserName" Runat="server" EmptyMessage="Enter user name" 
                                                        Skin="Windows7" Width="220px">
                                                    </telerik:RadTextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                        ControlToValidate="UserName" CssClass="textBlue" 
                                                        ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                                        ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td>
                                                    <telerik:RadTextBox ID="Password" Runat="server" 
                                                        EmptyMessage="passwordpassword" TextMode="Password" Width="220px">
                                                    </telerik:RadTextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                        ControlToValidate="Password" CssClass="textBlue" 
                                                        ErrorMessage="Password is required." ToolTip="Password is required." 
                                                        ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td valign="top" colspan="6">
                                                    <asp:ImageButton ID="LoginButton" runat="server" CommandName="Login" 
                                                        ImageUrl="~/images/modules/arrow-right-icon.png" ValidationGroup="Login1" 
                                                        Width="50px" Height="45px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="8" align="center" class="textBlue" style="color:Red;">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                </td>
                                                <td align="center" class="textBlue" style="color:Red;">
                                                    &nbsp;</td>
                                                <td align="center" class="textBlue" style="color:Red;">
                                                    &nbsp;</td>
                                                <td align="center" class="textBlue" style="color:Red;">
                                                    &nbsp;</td>
                                                <td align="center" class="textBlue" style="color:Red;">
                                                    &nbsp;</td>
                                                <td align="center" class="textBlue" style="color:Red;">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="right" colspan="7">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                                <td align="right">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                    </asp:Login>
                </td>
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000">
                            </asp:Timer>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>
                    </asp:UpdatePanel>
                </td>
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
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
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    
    </form>
</body>
</html>
