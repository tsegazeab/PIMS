<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EmploymentServiceBreakUpdate.ascx.cs" Inherits="User_Control_ServiceBreakUpdate" %>

<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />
<style type="text/css">


.RadPicker
{
	vertical-align:middle;
}

.RadPicker .rcTable
{
	table-layout:auto;
}

.RadPicker .RadInput
{
	vertical-align:baseline;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadInput_Default
{
	font:12px "segoe ui",arial,sans-serif;
}

.RadInput
{
	vertical-align:middle;
}

.RadPicker_Vista .rcCalPopup
{
	background-position:0 -2000px;
}

.RadPicker_Vista .rcCalPopup
{
	background-image:url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Vista.Calendar.sprite.gif');
}

.RadPicker .rcCalPopup
{
	display:block;
	overflow:hidden;
	width:22px;
	height:22px;
	background-color:transparent;
	background-repeat:no-repeat;
	text-indent:-2222px;
	text-align:center;
}

    .style1
    {
        width: 100%;
        border-style: none;
        border-color: inherit;
        border-width: 0;
        margin: 0;
        padding: 0;
    }
    .style2
    {
        width: 100%;
        vertical-align: middle;
    }
    .style3
    {
        position: relative;
        z-index: 2;
        text-decoration: none;
        margin: 0 2px;
    }
</style>
<table width="578">
<tr>
<td>
<telerik:RadGrid ID="RadGridServiceBreak" runat="server"   GridLines="None" Skin="WebBlue" 
                        Width="578px" 
        onneeddatasource="RadGridServiceBreak_NeedDataSource" CellSpacing="0" >
                        <MasterTableView autogeneratecolumns="False" datakeynames="servicebreakID" 
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
                                    <telerik:GridTemplateColumn DataField="columnRemove"   HeaderText="Remove" UniqueName="columnRemove"  Visible="false" ReadOnly="false">
                                    </telerik:GridTemplateColumn> 
                                    <telerik:GridTemplateColumn DataField="columnEdit"   HeaderText="Edit" UniqueName="columnEdit" ReadOnly="false">
                                    </telerik:GridTemplateColumn> 
                                    <telerik:GridBoundColumn DataField="PensionID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="PensionID" SortExpression="PensionID" UniqueName="PensionID">
                                    </telerik:GridBoundColumn>                                                       
                                    <telerik:GridBoundColumn DataField="servicebreakID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="servicebreakID" SortExpression="servicebreakID" UniqueName="servicebreakID">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="servicebreakTypeID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="servicebreakTypeID" SortExpression="servicebreakTypeID" UniqueName="servicebreakTypeID">
                                    </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="servicebreakType" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Service Break Type" SortExpression="servicebreakType" UniqueName="servicebreakType">
                                    </telerik:GridBoundColumn>                                   
                                     <telerik:GridBoundColumn DataField="dateStart" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Start Date" SortExpression="dateStart" UniqueName="dateStart" 
                                        DataFormatString="{0:dd'/'MM'/'yyyy}">
                                    </telerik:GridBoundColumn>     
                                       <telerik:GridBoundColumn DataField="dateEnd" DefaultInsertValue=""  Visible="true"
                                        HeaderText="End Date" SortExpression="dateEnd" UniqueName="dateEnd" 
                                        DataFormatString="{0:dd'/'MM'/'yyyy}">
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
<table width="578">

    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>

    <tr>
        <td width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Service break type"></asp:Label>
        </td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxservicebreakType" Runat="server"   Width="295px" MarkFirstMatch="true"> 
            </telerik:RadComboBox>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label2" runat="server" CssClass="text" Text="Start Date"></asp:Label>
        </td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerStartDate" Runat="server" Culture="en-US" 
                Skin="Outlook" Width="100%" MinDate="1800-01-01" ZIndex="10000">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Outlook"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="End Date"></asp:Label>
        </td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerEndDate" Runat="server" Culture="en-US" 
                Skin="Outlook" Width="100%" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Outlook"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
                    <telerik:RadButton ID="RadButtonAddServiceBreak" runat="server" 
                        Text="Save Service Break" onclick="RadButtonAddServiceBreak_Click" 
                        onload="RadButtonAddServiceBreak_Load">
            </telerik:RadButton>
            </td>
    </tr>
    </table>

