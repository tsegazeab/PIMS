<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberContributionHistory.ascx.cs" Inherits="User_Control_Contribution_MEMBER_MemberContributionHistory" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<table>
     <tr>
        <td>
            &nbsp;</td>
        <td>
             <asp:Label ID="Label1" runat="server" Text="Show Contribution for the following periods:"></asp:Label></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
             </td>
        <td>
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
            &nbsp;</td>
        <td>
            <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="False" 
                CellSpacing="0" GridLines="None" Skin="WebBlue"  
                onneeddatasource="RadGrid1_NeedDataSource" AllowPaging="True" 
                onitemdatabound="RadGrid1_ItemDataBound" AllowSorting="True" 
                ShowFooter="True" >               
<MasterTableView AllowMultiColumnSorting="True">
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

    <Columns>
       <telerik:GridBoundColumn FilterControlAltText="Filter column column" 
            HeaderText="Year" UniqueName="year" DataField="Year" SortExpression="Year">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column1 column" 
            HeaderText="Month" UniqueName="month" DataField="month" 
            SortExpression="month" Visible="False">
        </telerik:GridBoundColumn>
        <telerik:GridTemplateColumn ItemStyle-Width="60px" UniqueName="TemplateColumn" HeaderText="Month">
        <ItemTemplate>
          <asp:Label ID="monthLabel" runat="server" Width="30px" />
        </ItemTemplate>
        <HeaderStyle Width="30px" />

<ItemStyle Width="60px"></ItemStyle>
      </telerik:GridTemplateColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column2 column" 
            HeaderText="Member" UniqueName="memberName" DataField="memberName" 
            AllowSorting="False">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column3 column" 
            HeaderText="Gross" DataField="grossPay" UniqueName="column3" 
            AllowSorting="False" Aggregate="Sum" 
            DataType="System.Int32">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column4 column" 
            HeaderText="Basic" UniqueName="column4" DataField="basicPay" 
            AllowSorting="False" Aggregate="Sum" 
            DataType="System.Int32">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column6 column" 
            HeaderText="Employer" UniqueName="column6" DataField="employerDeduction" 
            AllowSorting="False" Aggregate="Sum" 
            DataType="System.Int32">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column7 column" 
            HeaderText="Employee" UniqueName="column7" DataField="employeeDeduction" 
            AllowSorting="False" Aggregate="Sum" 
            DataType="System.Int32">
        </telerik:GridBoundColumn>
        <telerik:GridCalculatedColumn DataFields="employeeDeduction,employerDeduction" 
            FilterControlAltText="Filter column9 column" HeaderText="Total" 
            UniqueName="column9" Expression="{0}+{1}" AllowSorting="False" 
            Aggregate="Sum" DataType="System.Int32">
        </telerik:GridCalculatedColumn>
    </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
    <AlternatingItemStyle BackColor="#C0FFFF" />
</MasterTableView>

                <HeaderStyle BorderStyle="None" />

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Windows7"></HeaderContextMenu>
            </telerik:RadGrid>
        </td>

        <td>
            &nbsp;</td>
    </tr>
      <tr>
        <td>
            &nbsp;</td>
        <td>
    
        <td>
            &nbsp;</td>
    </tr>
       <tr>
        <td>
            &nbsp;</td>
        <td>
           
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
</table>

