<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberContributionAdded.ascx.cs" Inherits="User_Control_Contribution_MEMBER_MemberContributionAdded" %>
<style type="text/css">
    .style1
    {
        height: 23px;
    }
</style>
<table>
<tr>
<td>
<telerik:RadGrid ID="RadGridMemberContribution" runat="server"   GridLines="None" Skin="WebBlue" 
                        Width="643px" 
        onneeddatasource="RadGridMemberContribution_NeedDataSource" CellSpacing="0" 
        AutoGenerateColumns="False" AllowPaging="True" >
                        <MasterTableView datakeynames="pensionID,month,year" AllowPaging="False" 
                            >
                            <NoRecordsTemplate>
                                No records available.
                            </NoRecordsTemplate>

<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

                            <RowIndicatorColumn>
                                <HeaderStyle Width="20px" />
                            </RowIndicatorColumn>
                            <ExpandCollapseColumn>
                                <HeaderStyle Width="20px" />
                            </ExpandCollapseColumn>
                            <Columns>
                                    <telerik:GridTemplateColumn DataField="columnEdit"   HeaderText="Edit" 
                                        UniqueName="columnRemove" ReadOnly="false">
                                    </telerik:GridTemplateColumn> 
                                    <telerik:GridBoundColumn DataField="PensionID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="PensionID" SortExpression="PensionID" UniqueName="PensionID">
                                    </telerik:GridBoundColumn>                                                       
                                    <telerik:GridBoundColumn DataField="month" DefaultInsertValue=""
                                        HeaderText="Month" SortExpression="month" UniqueName="month" 
                                        FilterControlAltText="Filter month column">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="year" DefaultInsertValue=""
                                        HeaderText="year" SortExpression="year" UniqueName="year" 
                                        FilterControlAltText="Filter year column">
                                    </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="memberName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Member Name" SortExpression="memberName" 
                                        UniqueName="memberName" FilterControlAltText="Filter memberName column">
                                    </telerik:GridBoundColumn>                                   
                                     <telerik:GridBoundColumn DataField="grossPay" DefaultInsertValue=""  Visible="true"
                                        HeaderText="grossPay" SortExpression="grossPay" UniqueName="grossPay" 
                                        FilterControlAltText="Filter grossPay column">
                                    </telerik:GridBoundColumn>     
                                       <telerik:GridBoundColumn DataField="basicPay" DefaultInsertValue=""  Visible="true"
                                        HeaderText="basicPay" SortExpression="basicPay" UniqueName="basicPay" 
                                        FilterControlAltText="Filter basicPay column">
                                    </telerik:GridBoundColumn>                                  
                                    
                                    <telerik:GridBoundColumn DataField="cola" 
                                        FilterControlAltText="Filter cola column" HeaderText="COLA" UniqueName="cola">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="employeeDeduction" 
                                        FilterControlAltText="Filter employeeDeduction column" HeaderText="Employee" 
                                        UniqueName="employeeDeduction">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="employerDeduction" 
                                        FilterControlAltText="Filter employerDeduction column" HeaderText="Employer" 
                                        UniqueName="employerDeduction">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="monthGrade" 
                                        FilterControlAltText="Filter monthgrade column" HeaderText="Grade" 
                                        UniqueName="monthGrade" Visible="False">
                                    </telerik:GridBoundColumn>
                                    
                            </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
                        </MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_WebBlue"></HeaderContextMenu>
                    </telerik:RadGrid>
</td>
</tr>
</table>
<table style="width: 650px">
    <tr>
        <td class="style1">
            </td>
        <td class="style1">
            </td>
        <td class="style1">
            </td>
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
              <asp:Label ID="Label2" runat="server" CssClass="text" Text="Member name"></asp:Label></td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxmemberName" Runat="server" Width="292px" 
                Enabled="False">
            </telerik:RadTextBox>
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
            <asp:Label ID="Label7" runat="server" CssClass="text" Text="MDA/Agency"></asp:Label></td>
        <td>
               <telerik:RadComboBox ID="RadComboBoxMDA" Runat="server"   
                Width="295px" MarkFirstMatch="true" CausesValidation="False" 
                ValidationGroup="ServiceBreak"> 
            </telerik:RadComboBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMDA" 
                runat="server" ControlToValidate="RadComboBoxMDA" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
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
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="Month"></asp:Label></td>
        <td>
               <telerik:RadComboBox ID="RadComboBoxMonth" Runat="server"   
                Width="295px" MarkFirstMatch="true" CausesValidation="False" 
                ValidationGroup="ServiceBreak"> 
            </telerik:RadComboBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMonth" 
                runat="server" ControlToValidate="RadComboBoxMonth" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
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
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="Year"></asp:Label></td>
        <td>
               <telerik:RadComboBox ID="RadComboBoxYear" Runat="server"   
                Width="295px" MarkFirstMatch="true" CausesValidation="False" 
                ValidationGroup="ServiceBreak"> 
            </telerik:RadComboBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorYear" 
                runat="server" ControlToValidate="RadComboBoxYear" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
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
            <asp:Label ID="Label11" runat="server" CssClass="text" Text="Payroll number"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxPayrollNumber" Runat="server" Width="292px" 
                Enabled="True" CausesValidation="False" 
                ValidationGroup="ServiceBreak">
            </telerik:RadTextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPayrollNumber" 
                runat="server" ControlToValidate="RadTextBoxPayrollNumber" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
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
            <asp:Label ID="Label5" runat="server" CssClass="text" Text="Gross pay"></asp:Label></td>
        <td>
            <telerik:RadNumericTextBox ID="RadNumericTextBoxgrossPay" Runat="server" Width="292px" 
                BackColor="White"  CausesValidation="False" 
                ValidationGroup="ServiceBreak">
            </telerik:RadNumericTextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorgrossPay" 
                runat="server" ControlToValidate="RadNumericTextBoxgrossPay" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
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
            <asp:Label ID="Label6" runat="server" CssClass="text" Text="Basic pay"></asp:Label></td>
        <td>
             
             <telerik:RadNumericTextBox ID="RadNumericTextBoxbasicPay" Runat="server" Width="292px" 
                BackColor="White"  CausesValidation="False" 
                ValidationGroup="ServiceBreak">
            </telerik:RadNumericTextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorbasicPay" 
                runat="server" ControlToValidate="RadNumericTextBoxbasicPay" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
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
            <asp:Label ID="Label8" runat="server" CssClass="text" Text="COLA"></asp:Label></td>
        <td>
            <telerik:RadNumericTextBox ID="RadNumericTextBoxcola" Runat="server" Width="292px" 
                BackColor="White"  CausesValidation="False" 
                ValidationGroup="ServiceBreak">
            </telerik:RadNumericTextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCOLA" 
                runat="server" ControlToValidate="RadNumericTextBoxcola" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
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
             <asp:Label ID="Label10" runat="server" CssClass="text" Text="Employee contribution"></asp:Label></td>
        <td>
            <telerik:RadNumericTextBox ID="RadNumericTextBoxemployeeDeduction" Runat="server" Width="292px" 
                BackColor="White"  CausesValidation="False" 
                ValidationGroup="ServiceBreak">
            </telerik:RadNumericTextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmployee" 
                runat="server" ControlToValidate="RadNumericTextBoxemployeeDeduction" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
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
            <asp:Label ID="Label9" runat="server" CssClass="text" Text="Employer contribution"></asp:Label></td>
        <td>
              
            <telerik:RadNumericTextBox ID="RadNumericTextBoxemployerDeduction" Runat="server" Width="292px" 
                BackColor="White"  CausesValidation="False" 
                ValidationGroup="ServiceBreak">
            </telerik:RadNumericTextBox></td>
            
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmployer" 
                runat="server" ControlToValidate="RadNumericTextBoxemployerDeduction" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
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
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
                   
                    <telerik:RadButton ID="RadButtonAddMemberContribution" runat="server" ValidationGroup="ServiceBreak"
                        Text="Add Contribution Record" 
                        onclick="RadButtonAddMemberContribution_Click" 
                        onload="RadButtonAddMemberContribution_Load">
                    </telerik:RadButton>
            </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

