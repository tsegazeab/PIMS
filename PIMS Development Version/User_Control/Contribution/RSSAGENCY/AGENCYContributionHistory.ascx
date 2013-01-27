<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AGENCYContributionHistory.ascx.cs" Inherits="User_Control_Contribution_RSSAGENCY_AGENCYContributionHistory" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<style type="text/css">
    .style1
    {
        width: 100%;
    }
    </style>
<link href="../../../Styles/PISPITSSheet.css" rel="stylesheet" 
    type="text/css" />

<table class="style1">

    <tr>
        <td>
            &nbsp;</td>
        <td>
            <telerik:RadGrid ID="RadGridAgencyContribution" runat="server" AutoGenerateColumns="False" 
                CellSpacing="0" GridLines="None" Skin="WebBlue" AllowPaging="True" 
                onneeddatasource="RadGridAgencyContribution_NeedDataSource" 
                onitemdatabound="RadGridAgencyContribution_ItemDataBound" ShowFooter="True">
<MasterTableView AllowMultiColumnSorting="True">
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

    <Columns>
        <telerik:GridTemplateColumn ItemStyle-Width="60px" UniqueName="TemplateColumn" HeaderText="Month">
        <ItemTemplate>
          <asp:Label ID="monthLabel" runat="server" Width="30px" />
        </ItemTemplate>
        <HeaderStyle Width="30px" />
<ItemStyle Width="60px"></ItemStyle>
      </telerik:GridTemplateColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column column" 
            HeaderText="Year" UniqueName="year" DataField="year">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column1 column" 
            HeaderText="Month" UniqueName="month" DataField="month" Visible="False">
        </telerik:GridBoundColumn>
<telerik:GridBoundColumn DataField="staff" HeaderText="Total Staff" 
            UniqueName="staff" FilterControlAltText="Filter column10 column" 
            Aggregate="Sum" DataType="System.Int32"></telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="mdaName" 
            FilterControlAltText="Filter mdaName column" HeaderText="MDA/Agency" 
            UniqueName="mdaName">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column3 column" 
            HeaderText="Total gross" UniqueName="grossPay" DataField="grossPay" 
            Aggregate="Sum" DataType="System.Decimal">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column4 column" 
            HeaderText="Total basic" UniqueName="basicPay" DataField="basicPay" 
            Aggregate="Sum" DataType="System.Decimal">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column5 column" 
            HeaderText="Total cola" UniqueName="cola" DataField="cola" Aggregate="Sum" 
            DataType="System.Decimal">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column6 column" 
            HeaderText="Total (ee)" UniqueName="employeeDeduction" 
            DataField="employeeDeduction" Aggregate="Sum" DataType="System.Decimal">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column7 column" 
            HeaderText="Total (er)" UniqueName="employerDeduction" 
            DataField="employerDeduction" Aggregate="Sum" DataType="System.Decimal">
        </telerik:GridBoundColumn>
        <telerik:GridCalculatedColumn Aggregate="Sum" 
            DataFields="employeeDeduction,employerDeduction" Expression="{0}+{1}" 
            FilterControlAltText="Filter column2 column" HeaderText="Total (ee+er)" 
            UniqueName="column2" DataType="System.Decimal">
        </telerik:GridCalculatedColumn>
    </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
 <AlternatingItemStyle BackColor="#C0FFFF" />
</MasterTableView>

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

