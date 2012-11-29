<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberBreakInService.ascx.cs" Inherits="User_Control_Contribution_MEMBER_MemberBreakInService" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<style type="text/css">

    .style1
    {
        width: 100%;
    }
    .style2
    {
        height: 23px;
    }
</style>

<table>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="False" 
                CellSpacing="0" GridLines="None" Skin="Windows7">
<MasterTableView>
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

    <Columns>
        <telerik:GridBoundColumn FilterControlAltText="Filter column column" 
            HeaderText="Start date" UniqueName="column">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column1 column" 
            HeaderText="End date" UniqueName="column1">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column2 column" 
            HeaderText="Duration (months)" UniqueName="column2">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn FilterControlAltText="Filter column9 column" 
            HeaderText="Type of break" UniqueName="column9">
        </telerik:GridBoundColumn>
    </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
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
        <td class="style2">
        </td>
        <td class="style2">
        </td>
        <td class="style2">
        </td>
    </tr>
</table>


