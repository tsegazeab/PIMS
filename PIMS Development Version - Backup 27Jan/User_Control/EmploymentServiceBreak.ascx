<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EmploymentServiceBreak.ascx.cs" Inherits="User_Control_ServiceBreak" %>

<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />
<style type="text/css">


.RadPicker
{
	vertical-align:middle;
}

.RadPicker
{
	vertical-align:middle;
}

.RadPicker .rcTable
{
	table-layout:auto;
}

.RadPicker .rcTable
{
	table-layout:auto;
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

.RadPicker_Outlook .rcCalPopup
{
	background-image:url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Outlook.Calendar.sprite.gif');
}

.RadPicker_Outlook .rcCalPopup
{
	background-position:0 0;
}

</style>
<table>
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
                                    <telerik:GridTemplateColumn DataField="columnRemove"   HeaderText="Remove" UniqueName="columnRemove" ReadOnly="false">
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
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Service Break Type"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxservicebreakType" Runat="server"   
                Width="295px" MarkFirstMatch="true" CausesValidation="False" 
                ValidationGroup="ServiceBreak"> 
            </telerik:RadComboBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorServiceBreak" 
                runat="server" ControlToValidate="RadComboBoxservicebreakType" 
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
            <asp:Label ID="Label2" runat="server" CssClass="text" Text="Start Date"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerStartDate" Runat="server" Culture="en-US" 
                Skin="Web20" Width="295px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="d/M/yyyy" DateFormat="d/M/yyyy" EmptyMessage="--Select Date--" 
                    ValidationGroup="ServiceBreak"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
            </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorStartDate" runat="server" 
                ControlToValidate="RadDatePickerStartDate" ErrorMessage="Required" 
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
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="End Date"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerEndDate" Runat="server" Culture="en-US" 
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
                ControlToValidate="RadDatePickerEndDate" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="ServiceBreak"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:CompareValidator ID="CompareValidatorDates" runat="server" 
                ControlToCompare="RadDatePickerStartDate" 
                ControlToValidate="RadDatePickerEndDate" 
                ErrorMessage="&quot;End Date&quot; must be after &quot;Start Date&quot;" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                Operator="GreaterThan" Type="Date" ValidationGroup="ServiceBreak"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
                    <telerik:RadButton ID="RadButtonAddServiceBreak" runat="server" 
                        Text="Add Service Break" onclick="RadButtonAddServiceBreak_Click" 
                        onload="RadButtonAddServiceBreak_Load" ValidationGroup="ServiceBreak">
            </telerik:RadButton>
            </td>
        <td>&nbsp;</td>
    </tr>
</table>

