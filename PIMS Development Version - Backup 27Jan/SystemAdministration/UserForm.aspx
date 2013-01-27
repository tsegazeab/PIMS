<%@ Page Title="User Registration - PIMS" Language="C#" MasterPageFile="~/MasterPageSysAdmin.master" AutoEventWireup="true" CodeFile="UserForm.aspx.cs" Inherits="SystemAdministration_UserForm" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="False" 
    BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
    Font-Names="Verdana" Font-Size="0.8em" 
        oncreateduser="RegisterUser_CreatedUser">
        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
            Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <CreateUserButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                <ContentTemplate>
                    <div class="titleShadow" style=" font-size: 18pt; color: #000066; font-weight: bold; width:575px; font-family:Arial, Helvetica, sans-serif;">
                        &nbsp;&nbsp;Register New User
                    </div>
                    <p style="font-family: Arial; font-size: smaller; font-style: italic">
                        ** Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
                    </p>                  
                    <table align="left" width="575">
                        <tr>
                            <td width="50%" valign="top">
                                <asp:Label ID="DescriptionLabel" runat="server" AssociatedControlID="Comment">Full Name:</asp:Label>
                            </td>
                            <td width="50%" align="left">
                                <telerik:RadTextBox ID="Comment" runat="server" CssClass="textEntry" Width="295px"></telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="DescriptionRequired" runat="server" ControlToValidate="Comment" 
                                        CssClass="failureNotification" Font-Names="Arial,Helvetica,sans-serif" 
                                        Font-Size="Small" ForeColor="Red" ErrorMessage="Full Name is required." ToolTip="Full Name is required." 
                                        ValidationGroup="RegisterUserValidationGroup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td width="50%" valign="top">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td width="50%" align="left">
                                <telerik:RadTextBox ID="UserName" runat="server" CssClass="textEntry" Width="295px"></telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                        Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                                        CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                        ValidationGroup="RegisterUserValidationGroup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td align="left">
                                <telerik:RadTextBox ID="Email" runat="server" CssClass="textEntry" Width="295px"></telerik:RadTextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                                runat="server" ControlToValidate="Email" ErrorMessage="Invalid Email" 
                                CssClass="failureNotification" Font-Names="Arial,Helvetica,sans-serif" 
                                Font-Size="Small" ForeColor="Red" SetFocusOnError="True" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="MemberPersonalInfo"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                            <td align="left">
                                <telerik:RadTextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password" Width="295px"></telerik:RadTextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red"  
                                        CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                                        ValidationGroup="RegisterUserValidationGroup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword" Width="295px">Confirm Password:</asp:Label>
                            </td>
                            <td align="left">
                                <telerik:RadTextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password" Width="295px"></telerik:RadTextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic" 
                                        ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired" runat="server" 
                                        Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                                        ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                        CssClass="failureNotification" Display="Dynamic" 
                                        Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                                        ErrorMessage="The Password and Confirmation Password must match."
                                        ValidationGroup="RegisterUserValidationGroup"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td align="left">
                                <p class="submitButton">
                                    <telerik:RadButton ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Create User" 
                                            ValidationGroup="RegisterUserValidationGroup"/>
                                </p>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server"></asp:CompleteWizardStep>
        </WizardSteps>
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#284775" />
        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
        <SideBarStyle BackColor="#5D7B9D" BorderWidth="0px" Font-Size="0.9em" 
            VerticalAlign="Top" />
        <StepStyle BorderWidth="0px" />
    </asp:CreateUserWizard>
</asp:Content>

