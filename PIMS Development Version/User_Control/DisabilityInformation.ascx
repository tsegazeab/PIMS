<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DisabilityInformation.ascx.cs" Inherits="User_Control_DisabilityInformation" %>
<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<style type="text/css">


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
<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280" colspan="4">
        <telerik:RadGrid ID="RadGridDisability" runat="server"   GridLines="None" Skin="WebBlue" 
                        Width="605px" CellSpacing="0" 
        onneeddatasource="RadGridDisability_NeedDataSource" >
                        <MasterTableView autogeneratecolumns="False" datakeynames="beneficiaryID" >
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
                                    <telerik:GridTemplateColumn DataField="columnRemove"  Visible="false" HeaderText="Remove" UniqueName="columnRemove" ReadOnly="false">
                                    </telerik:GridTemplateColumn> 
                                    <telerik:GridTemplateColumn DataField="columnEdit"  HeaderText="Edit" UniqueName="columnEdit" ReadOnly="false">
                                    </telerik:GridTemplateColumn> 
                                    <telerik:GridBoundColumn DataField="PensionID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="PensionID" SortExpression="PensionID" UniqueName="PensionID">
                                    </telerik:GridBoundColumn>                                                       
                                    <telerik:GridBoundColumn DataField="beneficiaryID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="beneficiaryID" SortExpression="beneficiaryID" UniqueName="beneficiaryID">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="disabilityTypeID" 
                                        FilterControlAltText="Filter disabilityTypeID column" HeaderText="disabilityTypeID" 
                                        SortExpression="disabilityTypeID" UniqueName="disabilityTypeID" Visible="False">
                                    </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="relationID" 
                                        FilterControlAltText="Filter relationID column" HeaderText="relationID" 
                                        SortExpression="relationID" UniqueName="relationID" Visible="False">
                                    </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="beneficiaryfullName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Beneficiary full name" SortExpression="beneficiaryfullName" UniqueName="beneficiaryfullName">
                                    </telerik:GridBoundColumn>       
                                         
                                      <telerik:GridBoundColumn DataField="Relationship" 
                                        FilterControlAltText="Filter relationID column" HeaderText="Relationship" 
                                        SortExpression="Relationship" UniqueName="Relationship" Visible="true">
                                    </telerik:GridBoundColumn>                          
                                     <telerik:GridBoundColumn DataField="dateofDisability" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Date of disability" SortExpression="dateofDisability" UniqueName="dateofDisability" 
                                        DataFormatString="{0:dd'/'MM'/'yyyy}" 
                                        FilterControlAltText="Filter dateofDisability column">
                                     </telerik:GridBoundColumn>   
                                    <telerik:GridBoundColumn DataField="DisabilityType" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Disability Type" SortExpression="DisabilityType" 
                                        UniqueName="disabilityType" FilterControlAltText="Filter disabilityType column">
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
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label6" runat="server" Text="Beneficiary Name" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top" colspan="3">
            <telerik:RadComboBox ID="RadComboBoxName" Runat="server" Width="325px" 
                MarkFirstMatch="true" 
                onselectedindexchanged="RadComboBoxName_SelectedIndexChanged">
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Disability Type"></asp:Label>
        </td>
        <td colspan="3">
            <telerik:RadComboBox ID="RadComboBoxDisability" Runat="server" Width="325px" MarkFirstMatch="true">
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="Date of Disability"></asp:Label><br />
           
        </td>
        <td colspan="3">
            <telerik:RadDatePicker ID="RadDatePickerDateOfDisability" Runat="server" Culture="en-US" 
                Skin="Web20" Width="325px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

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
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>

    </tr>
   
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="Description"></asp:Label>
        </td>
        <td colspan="3">
            <telerik:RadTextBox ID="RadTextBoxDescription" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="325px" Skin="Outlook" BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label8" runat="server" CssClass="text" Text="Medical report presented"></asp:Label>
        </td>
        <td colspan="3">
            <telerik:RadComboBox ID="RadComboBoxReportPresented" Runat="server" 
                Width="80px" MarkFirstMatch="True">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Selected="True" />
                    <telerik:RadComboBoxItem runat="server" Text="Yes" Value="Yes" />
                    <telerik:RadComboBoxItem runat="server" Text="No" Value="No" />
                </Items>
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label9" runat="server" CssClass="text" 
                Text="Medical report accepted"></asp:Label>
        </td>
        <td colspan="3">
            <telerik:RadComboBox ID="RadComboBoxReportAccepted" Runat="server" Width="80px" 
                MarkFirstMatch="True">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Selected="True" />
                    <telerik:RadComboBoxItem runat="server" Text="Yes" Value="Yes" />
                    <telerik:RadComboBoxItem runat="server" Text="No" Value="No" />
                </Items>
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label5" runat="server" CssClass="text" 
                Text="Medical Report/ Certificate"></asp:Label>
        </td>
        <td colspan="3">
            <telerik:RadAsyncUpload ID="RadAsyncUpload1" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7">
                <Localization Select="Select file" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td colspan="3">
            <telerik:RadButton ID="RadButtonAddDisability" runat="server" 
                        Text="Save Beneficiary Disability" onclick="RadButtonAddDisability_Click" 
                        onload="RadButtonAddDisability_Load">
            </telerik:RadButton>
            
            </td>
    </tr>
</table>

