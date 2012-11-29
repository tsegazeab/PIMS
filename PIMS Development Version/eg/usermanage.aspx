<%@ Page Language="VB" AutoEventWireup="false" CodeFile="usermanage.aspx.vb" Inherits="admin_usermanage" debug ="true"%>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User management | Administrator</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
.text3
{
    font-family: "Segoe UI", "trebuchet MS", Arial, sans-serif;
    font-size: 11px;
    color: #3E552D;
    font-weight: bold;
}
.text5
{
    font-family: "Segoe UI", "trebuchet MS", Arial, sans-serif;
    font-size: 11px;
    color: #808080;
}
        .style2
        {
            width: 100%;
            height: 649px;
        }
        .style3
        {
            width: 83px;
        }
        .style4
        {
            width: 591px;
        }
        .style5
        {
            width: 412px;
        }
    </style>
    <link href="../Styles/RITSSheet.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    <div>
        <table cellpadding="0" cellspacing="0" class="style2">
            <tr>
                <td colspan="2" height="35">
                    <table cellpadding="0" cellspacing="0" class="style1">
                        <tr>
                            <td rowspan="2" width="20">
                                <asp:Image ID="Image2" runat="server" Height="65px" ImageAlign="AbsMiddle" 
                                    ImageUrl="~/images/Design/PubServLogo.jpg" Width="90px" />
                            </td>
                            <td rowspan="2" width="20">
                                &nbsp;</td>
                            <td bgcolor="#728AA3" height="20">
                                &nbsp;<span class="mybottom">Manage user accounts</span>&nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#728AA3">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <span class="textB">: :</span><span class="text">&nbsp;&nbsp;&nbsp; Welcome,</span>
                    <asp:LoginName ID="LoginName1" runat="server" CssClass="textB" />
                &nbsp;&nbsp;&nbsp; <span class="textB">: :</span>&nbsp;
                &nbsp;&nbsp;<span class="text">Last login:</span>
                    <asp:Label ID="lblLoggedin" runat="server" CssClass="text"></asp:Label>
                    &nbsp;
                
                <hr>
                </td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="text3" colspan="2">
                                        &nbsp;
                                        <asp:Image ID="Image3" runat="server" ImageAlign="AbsMiddle" 
                                            ImageUrl="~/images/bullet.gif" />
                                        &nbsp;Create User account&nbsp;</td>
                                    <td align="right" class="text3" colspan="2">
                                        |
                                        <asp:Image ID="Image10" runat="server" ImageAlign="AbsMiddle" 
                                            ImageUrl="~/common/images/small/group.png" />
                                        &nbsp;
                                        <asp:LinkButton ID="LinkButton5" runat="server">Manage Accounts</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text5" colspan="2">
                                        <br />
                                        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
                                            LoginCreatedUser="False" Width="456px">
                                            <WizardSteps>
                                                <asp:CreateUserWizardStep ID="Step1" runat="server">
                                                    <ContentTemplate>
                                                        <table border="0" style="width: 552px">
                                                            <tr>
                                                                <td align="left" class="text2" colspan="2">
                                                                    &nbsp;User details&nbsp;&nbsp;User details&nbsp;</td>
                                                                <td align="left" class="text2">
                                                                    &nbsp;</td>
                                                                <td align="left" class="text2" colspan="2">
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                                        ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                                </td>
                                                                <td rowspan="6" valign="top">
                                                                    &nbsp;</td>
                                                                <td rowspan="6" valign="top">
                                                                    Roles:</td>
                                                                <td rowspan="6" valign="top">
                                                                    <asp:CheckBoxList ID="RolesCheck" runat="server">
                                                                    </asp:CheckBoxList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                                                        ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                                                        AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                                                        ControlToValidate="ConfirmPassword" 
                                                                        ErrorMessage="Confirm Password is required." 
                                                                        ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                                                        ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                                                        ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                                                        ControlToValidate="Question" ErrorMessage="Security question is required." 
                                                                        ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                                                        ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                                                        ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="2">
                                                                    <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                                        ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                                                        Display="Dynamic" 
                                                                        ErrorMessage="The Password and Confirmation Password must match." 
                                                                        ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                                                </td>
                                                                <td align="center">
                                                                    &nbsp;</td>
                                                                <td align="center">
                                                                    &nbsp;</td>
                                                                <td align="center">
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="2" style="color:Red;">
                                                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                                                </td>
                                                                <td align="center" style="color:Red;">
                                                                    &nbsp;</td>
                                                                <td align="center" style="color:Red;">
                                                                    &nbsp;</td>
                                                                <td align="center" style="color:Red;">
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </ContentTemplate>
                                                </asp:CreateUserWizardStep>
                                                <asp:CompleteWizardStep ID="Step2" runat="server" />
                                            </WizardSteps>
                                            <StepPreviousButtonStyle CssClass="Invisible" />
                                        </asp:CreateUserWizard>
                                    </td>
                                    <td valign="top">
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
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="text3" colspan="4">
                                        &nbsp;
                                        <asp:Image ID="Image4" runat="server" ImageAlign="AbsMiddle" 
                                            ImageUrl="~/images/bullet.gif" />
                                        &nbsp;Manage User accounts&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" class="text3" colspan="4">
                                        &nbsp;&nbsp;|
                                        <asp:Image ID="Image9" runat="server" ImageAlign="AbsMiddle" 
                                            ImageUrl="~/images/Icons/small icons (16 and 24)/input-mouse.png" />
                                        &nbsp;<span class="text">Please, right click the account row to manage the roles</span></td>
                                </tr>
                                <tr>
                                    <td class="text5" colspan="4">
                                        <telerik:RadGrid ID="userGrid" runat="server" AllowAutomaticDeletes="True" 
                                            AllowAutomaticInserts="True" AllowAutomaticUpdates="True" 
                                            AllowFilteringByColumn="True" AllowMultiRowSelection="True" AllowSorting="True" 
                                            AutoGenerateColumns="False" DataSourceID="srcUsers" GridLines="None" 
                                            Skin="WebBlue" CellSpacing="0" Height="388px" PageSize="12">
                                            <MasterTableView CommandItemDisplay="Top" DataKeyNames="UserId" 
                                                DataSourceID="srcUsers" EditMode="PopUp">
                                                <CommandItemSettings AddNewRecordText="Create New User Account" />
                                                <RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
                                                </RowIndicatorColumn>
                                                <ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
                                                </ExpandCollapseColumn>
                                                <Columns>
                                                    <telerik:GridClientSelectColumn UniqueName="column">
                                                    </telerik:GridClientSelectColumn>
                                                    <telerik:GridBoundColumn AllowFiltering="False" DataField="UserName" 
                                                        DefaultInsertValue="" HeaderText="UserName" SortExpression="UserName" 
                                                        UniqueName="UserName">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn AutoPostBackOnFilter="true" 
                                                        CurrentFilterFunction="StartsWith" DataField="Email" DefaultInsertValue="" 
                                                        HeaderText="Email" SortExpression="Email" UniqueName="Email">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn AllowFiltering="False" DataField="CreateDate" 
                                                        DataType="System.DateTime" DefaultInsertValue="" HeaderText="Created" 
                                                        SortExpression="CreateDate" UniqueName="CreateDate">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn AllowFiltering="False" DataField="LastLoginDate" 
                                                        DataType="System.DateTime" DefaultInsertValue="" HeaderText="LastLogin" 
                                                        SortExpression="LastLoginDate" UniqueName="LastLoginDate">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn AllowFiltering="False" DataField="LastActivityDate" 
                                                        DataType="System.DateTime" DefaultInsertValue="" HeaderText="LastActivity" 
                                                        SortExpression="LastActivityDate" UniqueName="LastActivityDate">
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridTemplateColumn AllowFiltering="False" DefaultInsertValue="" 
                                                        UniqueName="statusColumn">
                                                        <ItemTemplate>
                                                            <asp:Image ID="imgEstabOfficer" runat="server" ImageAlign="AbsMiddle" 
                                                                ImageUrl="~/common/images/small/user_go.png" Visible="False" />
                                                            &nbsp;<asp:Image ID="imgadmin" runat="server" ImageAlign="AbsMiddle" 
                                                                ImageUrl="~/common/images/small/admin.png" Visible="False" />
                                                            &nbsp;<asp:Image ID="imgUN" runat="server" ImageAlign="AbsMiddle" 
                                                                ImageUrl="~/common/images/small/UN.png" Visible="False" />
                                                        </ItemTemplate>
                                                    </telerik:GridTemplateColumn>
                                                </Columns>
                                                <EditFormSettings CaptionDataField="UserName" CaptionFormatString="Edit {0}" 
                                                    InsertCaption="User account">
                                                    <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                                                    </EditColumn>
                                                    <PopUpSettings Modal="True" ZIndex="12500" />
                                                </EditFormSettings>
                                            </MasterTableView>
                                            <ClientSettings AllowKeyboardNavigation="True" EnableRowHoverStyle="True">
                                                <Selecting AllowRowSelect="True" EnableDragToSelectRows="False" />
                                                <ClientEvents OnRowContextMenu="RowContextMenu" />
                                                <Scrolling AllowScroll="True" UseStaticHeaders="True" />
                                            </ClientSettings>
                                            <FilterMenu EnableImageSprites="False">
                                            </FilterMenu>
                                            <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_WebBlue">
                                            </HeaderContextMenu>
                                        </telerik:RadGrid>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="hidden" id="radGridClickedRowIndex" name="radGridClickedRowIndex" /></td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:SqlDataSource ID="srcUsers" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:cntestRITS %>" 
                                            SelectCommand="SELECT [UserId], [Email], [UserName], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastActivityDate] FROM [vw_aspnet_MembershipUsers] ORDER BY [CreateDate] DESC">
                                        </asp:SqlDataSource>
                                        <telerik:RadContextMenu ID="gridMenu" Runat="server" Skin="WebBlue" 
                                            style="right: 169px; bottom: 298px;">
                                            <Items>
                                                <telerik:RadMenuItem runat="server" 
                                                    ImageUrl="~/common/images/small/user_edit.png" Text="Enable/Disable User">
                                                </telerik:RadMenuItem>
                                                <telerik:RadMenuItem runat="server" 
                                                    ImageUrl="~/common/images/small/user_male.png" Text="Unlock User">
                                                </telerik:RadMenuItem>
                                                <telerik:RadMenuItem runat="server" IsSeparator="True" Text="Root RadMenuItem3">
                                                </telerik:RadMenuItem>
                                                <telerik:RadMenuItem runat="server" 
                                                    ImageUrl="~/common/images/small/user_delete.png" Text="Remove user(s)">
                                                </telerik:RadMenuItem>
                                                <telerik:RadMenuItem runat="server" IsSeparator="True" Text="Root RadMenuItem5">
                                                </telerik:RadMenuItem>
                                                <telerik:RadMenuItem runat="server" 
                                                    ImageUrl="~/common/images/small/group_link.png" Text="Manage user roles">
                                                </telerik:RadMenuItem>
                                            </Items>
                                        </telerik:RadContextMenu>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <telerik:RadToolTip ID="RolesTip" runat="server" Animation="Fade" 
                                            HideEvent="FromCode" ManualClose="True" Modal="True" 
                                            Position="Center" RelativeTo="BrowserWindow" ShowEvent="FromCode" 
                                            Width="436px">
                                            <table width="436">
                                                <tr>
                                                    <td class="mybottom" colspan="2">
                                                        <asp:Image ID="imgTip0" runat="server" Height="30px" ImageAlign="AbsMiddle" 
                                                            ImageUrl="~/images/Icons/small icons (16 and 24)/useraccounts.png" 
                                                            Width="30px" />
                                                        &nbsp;<asp:Label ID="lblassignTip" runat="server" CssClass="text">Manage roles for user</asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text4b" colspan="2">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" width="20">
                                                        <span class="text">User roles:</span></td>
                                                    <td valign="top" class="style3">
                                                        <asp:CheckBoxList ID="userRolesCheck" runat="server" CssClass="textB">
                                                        </asp:CheckBoxList>
                                                        <br />
                                                        <asp:Button ID="btnUpdateRoles" runat="server" Text="Update " />
                                                        <asp:HiddenField ID="hiddenUser" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </telerik:RadToolTip>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="text3" colspan="2">
                                        &nbsp;
                                        <asp:Image ID="Image13" runat="server" ImageAlign="AbsMiddle" 
                                            ImageUrl="~/images/bullet.gif" />
                                        &nbsp;Reports</td>
                                    <td align="right" class="text3" colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text5" colspan="2">
                                        <asp:Image ID="Image14" runat="server" 
                                            ImageUrl="~/images/Icons/small icons (16 and 24)/reports_002.png" />
                                    </td>
                                    <td valign="top">
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
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View4" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="text3" colspan="2">
                                        &nbsp;
                                        <asp:Image ID="Image16" runat="server" ImageAlign="AbsMiddle" 
                                            ImageUrl="~/images/bullet.gif" />
                                        &nbsp;SMS</td>
                                    <td align="right" class="text3" colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text5" colspan="2">
                                        <asp:Image ID="Image17" runat="server" 
                                            ImageUrl="~/images/more icons/Icons/39.png" />
                                    </td>
                                    <td valign="top">
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
                                </tr>
                                <tr>
                                    <td>
                                        <table class="style4">
                                            <tr>
                                                <td>
                                                    <span class="text">Select mobile no.:</span></td>
                                                <td>
                                                    <telerik:RadComboBox ID="RadComboBox1" Runat="server" Skin="WebBlue">
                                                    </telerik:RadComboBox>
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
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="text">Date/Time to send:</span></td>
                                                <td>
                                                    <telerik:RadDateTimePicker ID="RadDateTimePicker1" Runat="server" 
                                                        Skin="WebBlue">
                                                        <TimeView CellSpacing="-1">
                                                        </TimeView>
                                                        <TimePopupButton HoverImageUrl="" ImageUrl="" />
                                                        <Calendar Skin="WebBlue" UseColumnHeadersAsSelectors="False" 
                                                            UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                                                        </Calendar>
                                                        <DateInput DateFormat="M/d/yyyy" DisplayDateFormat="M/d/yyyy">
                                                        </DateInput>
                                                        <DatePopupButton HoverImageUrl="" ImageUrl="" />
                                                    </telerik:RadDateTimePicker>
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
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <table class="style5">
                                                        <tr>
                                                            <td class="text">
                                                                <asp:RadioButtonList ID="smsTextRadio" runat="server" AutoPostBack="True" 
                                                                    RepeatDirection="Horizontal">
                                                                    <asp:ListItem Selected="True" Value="New_message">New message</asp:ListItem>
                                                                    <asp:ListItem Value="Thank_you">Thank you for ...</asp:ListItem>
                                                                    <asp:ListItem Value="Please_update">Please, update your ...</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td valign="top">
                                                    <telerik:RadTextBox ID="txtMessage" Runat="server" 
                                                        EmptyMessage="Max. of 160 characters..." Height="100px" MaxLength="160" 
                                                        Skin="WebBlue" TextMode="MultiLine" Width="300px">
                                                    </telerik:RadTextBox>
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
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td align="right">
                                                    <asp:Button ID="Button1" runat="server" Text="Send" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td align="right">
                                                    <asp:Label ID="lblstatus" runat="server" CssClass="textGreen"></asp:Label>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
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
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View5" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="text3" colspan="2">
                                        &nbsp;
                                        <asp:Image ID="Image18" runat="server" ImageAlign="AbsMiddle" 
                                            ImageUrl="~/images/bullet.gif" />
                                        &nbsp;Help</td>
                                    <td align="right" class="text3" colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text5" colspan="2">
                                        <asp:Image ID="Image19" runat="server" ImageUrl="~/images/Icons/Help (2).png" />
                                    </td>
                                    <td valign="top">
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
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" height="20">
                    <telerik:RadToolBar ID="RadToolBar1" Runat="server" Skin="WebBlue" Width="100%">
                        <Items>
                            <telerik:RadToolBarDropDown runat="server" ExpandDirection="Up" 
                                ImageUrl="~/images/small/setting.png" Text="Tasks">
                                <Buttons>
                                    <telerik:RadToolBarButton runat="server" 
                                        ImageUrl="~/images/Icons/small icons (16 and 24)/add.png" Owner="" 
                                        Text="Create new account">
                                    </telerik:RadToolBarButton>
                                    <telerik:RadToolBarButton runat="server" IsSeparator="True" Owner="" 
                                        Text="Child Button 3">
                                    </telerik:RadToolBarButton>
                                    <telerik:RadToolBarButton runat="server" ImageUrl="~/images/small/group.png" 
                                        Owner="" Text="Manage accounts">
                                    </telerik:RadToolBarButton>
                                    <telerik:RadToolBarButton runat="server" IsSeparator="True" 
                                        Text="Child Button 4" Owner="">
                                    </telerik:RadToolBarButton>
                                    <telerik:RadToolBarButton runat="server" 
                                        ImageUrl="~/images/Icons/chart-icon.png" Text="Reports" Owner="">
                                    </telerik:RadToolBarButton>
                                </Buttons>
                            </telerik:RadToolBarDropDown>
                            <telerik:RadToolBarButton runat="server" IsSeparator="True" Owner="RadToolBar1" 
                                Text="Button 3">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" 
                                ImageUrl="~/images/Icons/small icons (16 and 24)/email.png" Text="SMS">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" IsSeparator="True" Text="Button 10">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" Owner="RadToolBar1" 
                                Text="Online users">
                                <ItemTemplate>
                                    <table cellpadding="0" cellspacing="0" class="style1">
                                        <tr>
                                            <td valign="baseline">
                                                <asp:Image ID="Image12" runat="server" ImageAlign="TextTop" 
                                                    ImageUrl="~/images/Icons/GREEN3.png" />
                                                &nbsp;<span class="text">Online users (</span><asp:Label ID="lblOnlineUsers" 
                                                    runat="server" CssClass="textB"></asp:Label>
                                                <span class="text">) </span>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" IsSeparator="True" Owner="RadToolBar1" 
                                Text="Button 4">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" Owner="RadToolBar1" Text="Total users">
                                <ItemTemplate>
                                    <table cellpadding="0" cellspacing="0" class="style1">
                                        <tr>
                                            <td valign="baseline">
                                                <asp:Image ID="Image12" runat="server" Height="16px" ImageAlign="TextTop" 
                                                    ImageUrl="~/images/Icons/small icons (16 and 24)/employees2.png" />
                                                &nbsp;<span class="text">Total users (</span><asp:Label ID="lblTotalUsers" 
                                                    runat="server" CssClass="textB"></asp:Label>
                                                <span class="text">) </span>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" IsSeparator="True" Owner="RadToolBar1" 
                                Text="Button 6">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" 
                                ImageUrl="~/images/Icons/Button-Help-icon.png" Text="Help">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" IsSeparator="True" Text="Button 8">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" 
                                ImageUrl="~/images/Icons/small icons (16 and 24)/logout.png" Text="Logout">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" IsSeparator="True" Text="Button 1">
                            </telerik:RadToolBarButton>
                        </Items>
                    </telerik:RadToolBar>
                </td>
            </tr>
        </table>
    <telerik:RadCodeBlock runat="server" ID="RadCodeBlock19">

            <script type="text/javascript">
                function RowContextMenu(sender, eventArgs) {
                    var menu = $find("<%=gridMenu.ClientID %>");
                    var evt = eventArgs.get_domEvent();

                    if (evt.target.tagName == "INPUT" || evt.target.tagName == "A") {
                        return;
                    }

                    var index = eventArgs.get_itemIndexHierarchical();
                    document.getElementById("radGridClickedRowIndex").value = index;

                    sender.get_masterTableView().selectItem(sender.get_masterTableView().get_dataItems()[index].get_element(), true);

                    menu.show(evt);

                    evt.cancelBubble = true;
                    evt.returnValue = false;

                    if (evt.stopPropagation) {
                        evt.stopPropagation();
                        evt.preventDefault();
                    }
                }
            </script>

        </telerik:RadCodeBlock>

    
    </div>
    <telerik:RadToolTip ID="successTip" runat="server" Animation="Fade" 
        AutoCloseDelay="8000" ManualClose="False" Position="BottomRight" 
        RelativeTo="BrowserWindow" ShowCallout="False" ShowEvent="FromCode" 
        Width="408px">
        <table>
            <tr>
                <td>
                    <asp:Image ID="imgmsg" runat="server" Height="32px" ImageAlign="AbsMiddle" 
                        ImageUrl="~/images/accept.png" />
                    &nbsp;
                    <asp:Label ID="lblsuccess" runat="server" CssClass="text3b" Width="281px"></asp:Label>
                </td>
            </tr>
        </table>
    </telerik:RadToolTip>
                        <asp:SqlDataSource ID="personalsrc" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:cntestRITS %>" 
                            InsertCommand="INSERT INTO APPLICANT(prefix, firstName, lastName, telephoneLandline, telephoneMobile, email, isSouthSudanese, currentResidence, gender, dateofBirth, homeState, registrationDate, username) VALUES (@prefix, @firstName, @lastName, @telephoneLandline, @telephoneMobile, @email, @isSouthSudanese, @currentResidence, @gender, @dateofBirth, @homeState, @registrationDate, @username)" 
                            
        SelectCommand="SELECT applicantID, prefix, firstName, lastName, telephoneLandline, telephoneMobile, email, isSouthSudanese, currentResidence, gender, dateofBirth, homeState, registrationDate, yearofExperience, username FROM APPLICANT ">
                            <InsertParameters>
                                <asp:Parameter Name="prefix" />
                                <asp:Parameter Name="firstName" />
                                <asp:Parameter Name="lastName" />
                                <asp:Parameter Name="telephoneLandline" />
                                <asp:Parameter Name="telephoneMobile" />
                                <asp:Parameter Name="email" />
                                <asp:Parameter Name="isSouthSudanese" />
                                <asp:Parameter Name="currentResidence" />
                                <asp:Parameter Name="gender" />
                                <asp:Parameter Name="dateofBirth" />
                                <asp:Parameter Name="homeState" />
                                <asp:Parameter Name="registrationDate" />
                                <asp:Parameter Name="username" />
                            </InsertParameters>
                        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="jobpreferencesrc" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cntestRITS %>" 
            InsertCommand="INSERT INTO APPLICANT_JOB_PREFERENCE_new(workCapacity, minimumGrade, username, applicantID) VALUES (@workcapacity, @minimumGrade, @username, @applicantID)" 
            
        
        SelectCommand="SELECT jobPrefID, applicantID, username, workCapacity, minimumGrade FROM APPLICANT_JOB_PREFERENCE_new" 
        UpdateCommand="UPDATE APPLICANT_JOB_PREFERENCE_new SET workCapacity = @workCapacity, minimumGrade = @minimumGrade, applicantID = @applicantID WHERE (jobPrefID = @jobPrefID)">
            <InsertParameters>
                <asp:Parameter Name="workcapacity" />
                <asp:Parameter Name="minimumGrade" />
                <asp:Parameter Name="username" />
                <asp:Parameter Name="applicantID" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="workCapacity" />
                <asp:Parameter Name="minimumGrade" />
                <asp:Parameter Name="applicantID" />
                <asp:Parameter Name="jobPrefID" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </form>
</body>
</html>
