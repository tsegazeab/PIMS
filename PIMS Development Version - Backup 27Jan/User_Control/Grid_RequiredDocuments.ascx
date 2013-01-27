<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Grid_RequiredDocuments.ascx.cs" Inherits="Grid_RequiredDocuments" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />
<telerik:RadGrid ID="RadGridRequiredDocuments" runat="server" Skin="Windows7" 
    CellSpacing="0"  GridLines="None" 
    Width="595px" Height="120px">
    <ClientSettings>
        <Selecting AllowRowSelect="True" />
        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
    </ClientSettings>
<MasterTableView AutoGenerateColumns="False" DataKeyNames="applicantID" 
        DataSourceID="SqlDataSource1">
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

    <Columns>
        <telerik:GridBoundColumn DataField="applicantID" DataType="System.Int32" 
            FilterControlAltText="Filter applicantID column" HeaderText="TYPE OF DOCUMENT" 
            ReadOnly="True" SortExpression="applicantID" UniqueName="applicantID">
        </telerik:GridBoundColumn>
        <telerik:GridCheckBoxColumn FilterControlAltText="Filter column column" 
            HeaderText="DOCUMENT SEEN/ VERIFIED" UniqueName="column">
        </telerik:GridCheckBoxColumn>
    </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
</MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Outlook"></HeaderContextMenu>
</telerik:RadGrid>

    
    

