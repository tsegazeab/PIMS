<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.ascx.cs" Inherits="User_Control_SystemAdministration_ChangePassword" %>
<table class="style7">
        <tr>
            <td>
                <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" 
                    BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
                    Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" 
                    onchangedpassword="ChangePassword1_Load" onload="ChangePassword1_Load" 
                    SuccessPageUrl="~/Default.aspx">
                    <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                        ForeColor="#284775" />
                    <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                        ForeColor="#284775" />
                    <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                        ForeColor="#284775" />
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" />
                </asp:ChangePassword>
            </td>
        </tr>
    </table>