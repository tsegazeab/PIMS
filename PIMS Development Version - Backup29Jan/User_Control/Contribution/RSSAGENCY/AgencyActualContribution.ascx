<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AgencyActualContribution.ascx.cs" Inherits="User_Control_Contribution_RSSAGENCY_AgencyActualContribution" %>
<table>
<tr>
<td>
    <telerik:RadGrid ID="RadGridAgencyContribution" runat="server" 
        AllowPaging="True" AutoGenerateColumns="False" CellSpacing="0" GridLines="None" 
        onitemdatabound="RadGridAgencyContribution_ItemDataBound" 
        onneeddatasource="RadGridAgencyContribution_NeedDataSource" ShowFooter="True" 
        Skin="WebBlue">
        <MasterTableView AllowMultiColumnSorting="True">
            <CommandItemSettings ExportToPdfText="Export to PDF" />
            <RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
                <HeaderStyle Width="20px" />
            </RowIndicatorColumn>
            <ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
                <HeaderStyle Width="20px" />
            </ExpandCollapseColumn>
            <Columns>
              <%--  <telerik:GridBoundColumn Aggregate="Sum" DataField="grossPay" 
                    DataType="System.Decimal" FilterControlAltText="Filter column3 column" 
                    HeaderText="Total gross" UniqueName="grossPay">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn Aggregate="Sum" DataField="basicPay" 
                    DataType="System.Decimal" FilterControlAltText="Filter column4 column" 
                    HeaderText="Total basic" UniqueName="basicPay">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn Aggregate="Sum" DataField="cola" 
                    DataType="System.Decimal" FilterControlAltText="Filter column5 column" 
                    HeaderText="Total cola" UniqueName="cola">
                </telerik:GridBoundColumn>--%>
                <telerik:GridTemplateColumn FilterControlAltText="Filter columnEdit column" 
                    UniqueName="columnEdit">
                </telerik:GridTemplateColumn>
                <telerik:GridTemplateColumn HeaderText="Month" ItemStyle-Width="60px" 
                    UniqueName="TemplateColumn">
                    <ItemTemplate>
                        <asp:Label ID="monthLabel" runat="server" Width="30px" />
                    </ItemTemplate>
                    <HeaderStyle Width="30px" />
                    <ItemStyle Width="60px" />
                </telerik:GridTemplateColumn>
                <telerik:GridBoundColumn DataField="year" 
                    FilterControlAltText="Filter column column" HeaderText="Year" UniqueName="year">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="month" 
                    FilterControlAltText="Filter column1 column" HeaderText="Month" 
                    UniqueName="month" Visible="False">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn DataField="mdaName" 
                    FilterControlAltText="Filter mdaName column" HeaderText="MDA/Agency" 
                    UniqueName="mdaName">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn Aggregate="Sum" DataField="staff" 
                    DataType="System.Int32" FilterControlAltText="Filter column10 column" 
                    HeaderText="Total Staff" UniqueName="staff">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn Aggregate="Sum" DataField="employeeDeduction" 
                    DataType="System.Decimal" FilterControlAltText="Filter column6 column" 
                    HeaderText="Total EE (SSEPS)" UniqueName="employeeDeduction">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn Aggregate="Sum" DataField="employerDeduction" 
                    DataType="System.Decimal" FilterControlAltText="Filter column7 column" 
                    HeaderText="Total ER (SSEPS)" UniqueName="employerDeduction">
                </telerik:GridBoundColumn>
                <telerik:GridCalculatedColumn Aggregate="Sum" 
                    DataFields="employeeDeduction,employerDeduction" DataType="System.Decimal" 
                    Expression="{0}+{1}" FilterControlAltText="Filter column2 column" 
                    HeaderText="EE + ER (SSEPS)" UniqueName="column2">
                </telerik:GridCalculatedColumn>
                <telerik:GridBoundColumn Aggregate="Sum" DataField="employeeDeductionActual" 
                    DataType="System.Decimal" FilterControlAltText="Filter column6 column" 
                    HeaderText="Total EE (Bank)" UniqueName="employeeDeductionActual">
                </telerik:GridBoundColumn>
                <telerik:GridBoundColumn Aggregate="Sum" DataField="employerDeductionActual" 
                    DataType="System.Decimal" FilterControlAltText="Filter column7 column" 
                    HeaderText="Total ER (Bank)" UniqueName="employerDeductionActual">
                </telerik:GridBoundColumn>
                <telerik:GridCalculatedColumn Aggregate="Sum" 
                    DataFields="employeeDeductionActual,employerDeductionActual" DataType="System.Decimal" 
                    Expression="{0}+{1}" FilterControlAltText="Filter column2 column" 
                    HeaderText="EE + ER (BANK)" UniqueName="column20">
                </telerik:GridCalculatedColumn>
                <telerik:GridBoundColumn DataField="mdaID" 
                    FilterControlAltText="Filter mdaID column" UniqueName="mdaID" Visible="False">
                </telerik:GridBoundColumn>
            </Columns>
            <EditFormSettings>
                <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                </EditColumn>
            </EditFormSettings>
            <AlternatingItemStyle BackColor="#C0FFFF" />
        </MasterTableView>
        <FilterMenu EnableImageSprites="False">
        </FilterMenu>
        <HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Windows7">
        </HeaderContextMenu>
    </telerik:RadGrid>
</td>
</tr>
</table>
<table>

    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>        
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Month"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td>
                <telerik:RadTextBox ID="RadTextBoxMonth" Runat="server" Width="295px" 
                BackColor="WhiteSmoke"  CausesValidation="False" 
                ValidationGroup="ServiceBreak" Enabled="False">
            </telerik:RadTextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorRadTextBoxMonth" 
                runat="server" ControlToValidate="RadTextBoxMonth" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="text" Text="Year"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxYear" Runat="server" Width="295px" 
                BackColor="WhiteSmoke"  CausesValidation="False" 
                ValidationGroup="ServiceBreak" Enabled="False">
            </telerik:RadTextBox>
            </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorRadTextBoxYear" runat="server" 
                ControlToValidate="RadTextBoxYear" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="MDA/Agency"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font></td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxMDA" Runat="server" Width="295px" 
                BackColor="WhiteSmoke"  CausesValidation="False" 
                ValidationGroup="ServiceBreak" Enabled="False">
            </telerik:RadTextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorRadTextBoxMDA" runat="server" 
                ControlToValidate="RadTextBoxMDA" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label5" runat="server" CssClass="text" Text="Total Employee Contribution"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font></td>
        <td>
             <telerik:RadNumericTextBox ID="RadNumericTextBoxEmployeeActual" Runat="server" Width="295px" 
                BackColor="WhiteSmoke"  CausesValidation="False" 
                ValidationGroup="ServiceBreak">
            </telerik:RadNumericTextBox>
            
            
            </td> 
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorRadTextBoxEmployeeActual" runat="server" 
                ControlToValidate="RadNumericTextBoxEmployeeActual" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label6" runat="server" CssClass="text" Text="Total Employer Contribution"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font></td>
        <td>
            <telerik:RadNumericTextBox ID="RadNumericTextBoxEmployerActual" Runat="server" Width="295px" 
                BackColor="WhiteSmoke"  CausesValidation="False" 
                ValidationGroup="ServiceBreak">
            </telerik:RadNumericTextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorRadTextBoxEmployerActual" runat="server" 
                ControlToValidate="RadNumericTextBoxEmployerActual" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="Remittence Date"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerDateRemitted" Runat="server" Culture="en-US" 
                Skin="Web20" Width="295px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--" 
                    ValidationGroup="ServiceBreak"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEndDate" runat="server" 
                ControlToValidate="RadDatePickerDateRemitted" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
          
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
                    <telerik:RadButton ID="RadButtonAddActualContribution" runat="server" 
                        Text="Save Contribution" 
                         ValidationGroup="ServiceBreak" onclick="RadButtonAddActualContribution_Click" 
                        onload="RadButtonAddActualContribution_Load">
            </telerik:RadButton>
            </td>
        <td>&nbsp;</td>
    </tr>
</table>
