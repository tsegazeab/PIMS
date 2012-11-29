<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberServiceBreakEvidence.ascx.cs" Inherits="User_Control_MemberServiceBreakEvidence" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>

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

    </style>
<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280" colspan="2">
        <telerik:RadGrid ID="RadGridEvidence" runat="server"   GridLines="None" Skin="WebBlue" 
                        Width="605px" CellSpacing="0" 
        onneeddatasource="RadGridEvidence_NeedDataSource" >
                        <MasterTableView autogeneratecolumns="False" 
                            datakeynames="pensionID,servicebreakID,evidenceID" >
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
                                    <telerik:GridBoundColumn DataField="evidenceID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="evidenceID" SortExpression="evidenceID" UniqueName="evidenceID">
                                    </telerik:GridBoundColumn>   
                                    <telerik:GridBoundColumn DataField="servicebreakID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="servicebreakID" SortExpression="servicebreakID" 
                                        UniqueName="servicebreakID" FilterControlAltText="Filter servicebreakID column">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="memberfullName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Member Name" SortExpression="memberfullName" 
                                        UniqueName="memberfullName">
                                    </telerik:GridBoundColumn>       
                                         
                                      <telerik:GridBoundColumn DataField="servicebreakType" 
                                        FilterControlAltText="Filter evidenceID column" HeaderText="Service Break" 
                                        SortExpression="servicebreakType" UniqueName="serviceBreakType" 
                                        Visible="true">
                                    </telerik:GridBoundColumn>                          
                                     
                                    <telerik:GridBoundColumn DataField="evidenceDated" DataType="System.DateTime" 
                                        FilterControlAltText="Filter evidenceDated column" HeaderText="Evidence Date" 
                                        SortExpression="evidenceDated" UniqueName="evidenceDated">
                                        <ItemStyle HorizontalAlign="Right" />
                                    </telerik:GridBoundColumn>
                                     
                                    <telerik:GridBoundColumn DataField="fileOriginalName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Evidence File" SortExpression="fileOriginalName" 
                                        UniqueName="fileOriginalName" 
                                        FilterControlAltText="Filter fileOriginalName column">
                                    </telerik:GridBoundColumn> 
                                     <telerik:GridBoundColumn DataField="breakStartDate" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Break Start" SortExpression="breakStartDate" 
                                        UniqueName="breakStartDate" FilterControlAltText="Filter filesize column">
                                         <ItemStyle HorizontalAlign="Right" />
                                    </telerik:GridBoundColumn> 
                                    <telerik:GridBoundColumn DataField="breakEndDate" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Break End" SortExpression="breakEndDate" 
                                        UniqueName="breakEndDate" 
                                        FilterControlAltText="Filter fileContentType column">
                                        <ItemStyle HorizontalAlign="Right" />
                                    </telerik:GridBoundColumn> 
                                    
                                    <telerik:GridBoundColumn DataField="servicebreakID" 
                                        FilterControlAltText="Filter servicebreakID column" 
                                        SortExpression="servicebreakID" UniqueName="servicebreakID" Visible="False">
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
        <td align="left" valign="top">
             <telerik:RadTextBox ID="RadTextBoxpensionID" Width="325px" Runat="server" 
                 Enabled="False" Visible="False">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label6" runat="server" Text="Member Scheme ID" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
             <telerik:RadTextBox ID="RadTextBoxSchemeID" Width="325px" Runat="server" 
                 Enabled="False">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="Member full name"></asp:Label></td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxfullName" Width="325px" Runat="server" 
                Enabled="False">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Service Break"></asp:Label>
        </td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxServiceBreak" Runat="server" Width="325px" 
                MarkFirstMatch="true" 
                AutoPostBack="True" 
                onselectedindexchanged="RadComboBoxevidenceType_SelectedIndexChanged">
                 <Items>
                    <telerik:RadComboBoxItem Text="Select" />
                 </Items>
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label11" runat="server" CssClass="text" Text="Evidence required"></asp:Label></td>
        <td>
                <telerik:RadTextBox ID="RadTextBoxevidenceRequired" Width="325px" Runat="server" 
                Enabled="False">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
             <asp:Label ID="Label12" runat="server" CssClass="text" Text="Is evidence presented?"></asp:Label></td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxevidencePresented" Runat="server" 
                Width="80px" MarkFirstMatch="True">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Selected="True" 
                        Owner="RadComboBoxevidencePresented" />
                    <telerik:RadComboBoxItem runat="server" Text="Yes" Value="Yes" 
                        Owner="RadComboBoxevidencePresented" />
                    <telerik:RadComboBoxItem runat="server" Text="No" Value="No" 
                        Owner="RadComboBoxevidencePresented" />
                </Items>
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280">
             <asp:Label ID="Label13" runat="server" CssClass="text" 
                Text="Is evidence accepted?"></asp:Label></td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxRadComboBoxevidenceAccepted" Runat="server" 
                Width="80px" MarkFirstMatch="True">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Selected="True" 
                        Owner="RadComboBoxRadComboBoxevidenceAccepted" />
                    <telerik:RadComboBoxItem runat="server" Text="Yes" Value="Yes" 
                        Owner="RadComboBoxRadComboBoxevidenceAccepted" />
                    <telerik:RadComboBoxItem runat="server" Text="No" Value="No" 
                        Owner="RadComboBoxRadComboBoxevidenceAccepted" />
                </Items>
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280" style="width: 0" valign="top">
            <asp:Label ID="Label14" runat="server" CssClass="text" Text="Evidence Date" 
                Width="100px"></asp:Label>
        </td>
        <td width="280" style="width: 140px">
            <telerik:RadDatePicker ID="RadDpEvidenceDate" Runat="server" Culture="en-US" 
                Skin="Vista" Width="325px">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Vista"></Calendar>

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
            <asp:Label ID="Label2" runat="server" CssClass="text" 
                Text="Title of certifying officer"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="tbCertifyingOfficer" Runat="server" Width="325px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
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
            <asp:Label ID="Label3" runat="server" CssClass="text" 
                Text="Name of certifying officer"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxCertifyingOfficerName" Runat="server" Width="325px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
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
            <asp:Label ID="Label5" runat="server" CssClass="text" Text="Evidence Document"></asp:Label>
        </td>
        <td>
            <telerik:RadAsyncUpload ID="asyncUploadEvidenceDoc" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7" 
                onfileuploaded="RadAsyncUpload1_FileUploaded">
                <Localization Select="Select file" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td width="280" valign="top">
            <asp:Label ID="Label16" runat="server" CssClass="text" Text="Evidence Comment"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="tbEvidenceComment" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="325px" Skin="Outlook" BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td>
            <telerik:RadButton ID="RadButtonAddEvidence" runat="server" 
                        Text="Save Evidence" onclick="RadButtonAddEvidence_Click" 
                        onload="RadButtonAddEvidence_Load">
            </telerik:RadButton>
            
            </td>
    </tr>
</table>

