<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTracking.master" AutoEventWireup="true" CodeFile="FrontDeskApplicationTracker.aspx.cs" Inherits="Application_Section_FrontDeskApplicationTracker" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="../User_Control/FrontDeskApplicationTracker.ascx" tagname="FrontDeskApplicationTracker" tagprefix="uc1" %>

<%@ Register src="../User_Control/DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style4">
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
    <div>
    
        <uc1:FrontDeskApplicationTracker ID="FrontDeskApplicationTracker1" 
            runat="server" />
    
    </div>
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
            <table align="center" cellpadding="0" cellspacing="0" width="500">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Image ID="Image5" runat="server" 
                            ImageUrl="~/images/Icons/info-icon(24x24).png" />
                    </td>
                    <td>
            <asp:Button ID="ButtonAdditionalInfo" runat="server" Text="Request additional information" 
                            Width="183px" onclick="ButtonAdditionalInfo_Click" />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;</td>
                    <td>
                        <asp:Image ID="Image6" runat="server" 
                            ImageUrl="~/images/Icons/small icons (16 and 24)/1.png" />
                    </td>
                    <td>
                        <asp:Button ID="ButtonForwardToPAS" runat="server" Text="Forward to PAS" 
                            Width="183px" onclick="ButtonForwardToPAS_Click" />
                    </td>
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
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <telerik:RadToolTip ID="forwardTip" runat="server" Animation="Fade" 
                HideEvent="FromCode" Modal="True" Position="Center" RelativeTo="BrowserWindow" 
                ShowEvent="FromCode" Skin="Default">
                <table cellpadding="0" cellspacing="0" width="600">
                    <tr>
                        <td class="mybottom" colspan="5">
                            &nbsp;</td>
                        <td class="mybottom">
                            &nbsp;</td>
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
                        <td align="left">
                            <table>
                                <tr>
                                    <td width="280">
                                        <asp:Label ID="Label9" runat="server" CssClass="text" 
                                            Text="Name of PAS to forward request"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="291px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="280">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign="top" width="280">
                                        <asp:Label ID="Label8" runat="server" CssClass="text" Text="Comment/ Remark"></asp:Label>
                                    </td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox1" Runat="server" BackColor="WhiteSmoke" 
                                            Height="40px" Skin="Outlook" TextMode="MultiLine" Width="295px">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" width="280">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="280">
                                        <br />
                                        <asp:Label ID="Label6" runat="server" CssClass="text" 
                                            Text="Date when application was forwarded to PAS"></asp:Label>
                                    </td>
                                    <td>
                                        <uc1:DayMonthYear ID="DayMonthYear2" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </td>
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
                        <td align="center">
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
                        <td align="center">
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
                        <td align="center">
                            <table>
                                <tr>
                                    <td>
                                        |&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td>
                                        <asp:Image ID="Image9" runat="server" 
                                            ImageUrl="~/images/Icons/small icons (16 and 24)/1.png" />
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="btnOK" runat="server" CssClass="textBlueU">Forward</asp:LinkButton>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        |</td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Image ID="Image10" runat="server" 
                                            ImageUrl="~/images/modules/Cancel-icon(16x16).png" />
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="btnHome" runat="server" CssClass="textBlueU">Cancel</asp:LinkButton>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        |</td>
                                </tr>
                            </table>
                        </td>
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
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="mybottom" colspan="5">
                            &nbsp;</td>
                        <td class="mybottom">
                            &nbsp;</td>
                        <td class="mybottom">
                            &nbsp;</td>
                    </tr>
                </table>
            </telerik:RadToolTip>
            <telerik:RadToolTip ID="additionalInfoTip" runat="server" Animation="Fade" 
                HideEvent="FromCode" Modal="True" Position="Center" RelativeTo="BrowserWindow" 
                ShowEvent="FromCode" Skin="Default">
                <table cellpadding="0" cellspacing="0" width="600">
                    <tr>
                        <td class="mybottom" colspan="5">
                            &nbsp;</td>
                        <td class="mybottom">
                            &nbsp;</td>
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
                        <td align="left">
                            <table>
                                <tr>
                                    <td valign="top" width="280">
                                        <asp:Label ID="Label11" runat="server" CssClass="text" 
                                            Text="Description of Information requested"></asp:Label>
                                    </td>
                                    <td>
                                        <telerik:RadTextBox ID="RadTextBox2" Runat="server" BackColor="WhiteSmoke" 
                                            Height="60px" Skin="Outlook" TextMode="MultiLine" Width="295px">
                                        </telerik:RadTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" width="280">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td width="280">
                                        <br />
                                        <asp:Label ID="Label12" runat="server" CssClass="text" 
                                            Text="Date when additional information was requested"></asp:Label>
                                    </td>
                                    <td>
                                        <uc1:DayMonthYear ID="DayMonthYear3" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </td>
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
                        <td align="center">
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
                        <td align="center">
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
                        <td align="center">
                            <table>
                                <tr>
                                    <td>
                                        |&nbsp;&nbsp; </td>
                                    <td>
                                        <asp:Image ID="Image7" runat="server" 
                                            ImageUrl="~/images/modules/Save-icon(16x16).png" />
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="btnOK0" runat="server" CssClass="textBlueU">Save request</asp:LinkButton>
                                        &nbsp;&nbsp; &nbsp;
                                    </td>
                                    <td>
                                        |</td>
                                    <td>
                                        &nbsp;&nbsp;
                                        <asp:Image ID="Image8" runat="server" 
                                            ImageUrl="~/images/modules/Mobile-icon(24x24).png" />
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="btnHome0" runat="server" CssClass="textBlueU">Send request via SMS</asp:LinkButton>
                                        &nbsp;&nbsp;
                                    </td>
                                    <td>
                                        |</td>
                                    <td>
                                        &nbsp;&nbsp;
                                        <asp:Image ID="Image11" runat="server" 
                                            ImageUrl="~/images/modules/Cancel-icon(16x16).png" />
                                    </td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="textBlueU">Cancel</asp:LinkButton>
                                    </td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |</td>
                                </tr>
                            </table>
                        </td>
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
                        <td align="center" valign="middle">
                            &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="mybottom" colspan="5">
                            &nbsp;</td>
                        <td class="mybottom">
                            &nbsp;</td>
                        <td class="mybottom">
                            &nbsp;</td>
                    </tr>
                </table>
            </telerik:RadToolTip>
            <telerik:RadFormDecorator ID="RadFormDecorator1" Runat="server" 
        
        DecoratedControls="Default, Textbox, Textarea, Fieldset, Label, H4H5H6, Select, GridFormDetailsViews, ValidationSummary, LoginControls" 
        Skin="Windows7" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

