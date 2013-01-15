<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Grid_BeneficiaryEvidence.ascx.cs" Inherits="User_Control_Grid_BeneficiaryEvidence" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<telerik:RadGrid ID="RadGridBeneficiayEvidence" runat="server" Skin="Windows7" 
    CellSpacing="0" GridLines="None" 
    Width="715px" Height="140px">
    <ClientSettings>
        <Selecting AllowRowSelect="True" />
        <Scrolling AllowScroll="True" UseStaticHeaders="True" />
    </ClientSettings>
<MasterTableView AutoGenerateColumns="False">
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
</MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_Outlook"></HeaderContextMenu>
</telerik:RadGrid>

    
    



