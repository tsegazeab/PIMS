<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberEvidence.ascx.cs" Inherits="User_Control_MemberEvidence" %>
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

.RadPicker_Outlook .rcCalPopup
{
	background-position:0 0;
}

.RadPicker_Outlook .rcCalPopup
{
	background-image:url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Outlook.Calendar.sprite.gif');
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
                        <ValidationSettings EnableValidation="False" />
                        <MasterTableView autogeneratecolumns="False" datakeynames="pensionID,evidencebyfunctionID" >
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
                                    <telerik:GridBoundColumn DataField="EvidenceByFunctionID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="EvidenceByFunctionID" SortExpression="EvidenceByFunctionID" UniqueName="EvidenceByFunctionID">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="memberfullName" DefaultInsertValue=""  Visible="False"
                                        HeaderText="Member full name" SortExpression="memberfullName" 
                                        UniqueName="memberfullName">
                                    </telerik:GridBoundColumn>       
                                         
                                      <telerik:GridBoundColumn DataField="evidence" 
                                        FilterControlAltText="Filter evidenceID column" HeaderText="Evidence presented" 
                                        SortExpression="evidence" UniqueName="evidence" Visible="true">
                                    </telerik:GridBoundColumn>                          
                                     
                                     <telerik:GridBoundColumn DataField="evidenceType" DefaultInsertValue=""
                                        HeaderText="Evidence For" 
                                        UniqueName="evidenceType" FilterControlAltText="Filter filesize column">
                                    </telerik:GridBoundColumn> 
                                     
                                    <telerik:GridBoundColumn DataField="fileOriginalName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="File name" SortExpression="fileOriginalName" 
                                        UniqueName="fileOriginalName" FilterControlAltText="Filter fileOriginalName column">
                                    </telerik:GridBoundColumn> 
                                    <telerik:GridBoundColumn DataField="fileContentType" DefaultInsertValue=""  Visible="False"
                                        HeaderText="File type" SortExpression="fileContentType" 
                                        UniqueName="fileContentType" 
                                        FilterControlAltText="Filter fileContentType column">
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
            <telerik:RadTextBox ID="RadTextBoxSchemeID" Runat="server" Width="325px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
        <td valign="top" width="280">
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="Member Full Name"></asp:Label></td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxfullName" Runat="server" Width="325px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
        <td valign="top" width="280">
            <asp:Label ID="Label14" runat="server" CssClass="text" Text="Function requiring evidence"></asp:Label></td>
        <td align="left" valign="top">
            <telerik:RadComboBox ID="RadComboBoxfunction" Runat="server" Width="325px" 
                MarkFirstMatch="true" 
                onselectedindexchanged="RadComboBoxfunction_SelectedIndexChanged" 
                AutoPostBack="True">
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFunction" 
                runat="server" ControlToValidate="RadComboBoxfunction" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label1" runat="server" CssClass="text" Text="Evidence For"></asp:Label>
        </td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxevidenceType" Runat="server" Width="325px" 
                MarkFirstMatch="true" 
                AutoPostBack="True" 
                onselectedindexchanged="RadComboBoxevidenceType_SelectedIndexChanged">
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceType" 
                runat="server" ControlToValidate="RadComboBoxevidenceType" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidencePresented" 
                runat="server" ControlToValidate="RadComboBoxevidencePresented" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceAccepted" 
                runat="server" ControlToValidate="RadComboBoxRadComboBoxevidenceAccepted" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label8" runat="server" CssClass="text" 
                Text="Evidence verified by"></asp:Label></td>
        <td>
             <telerik:RadTextBox ID="RadTextBoxEvidenceVerifiedBy" Width="325px" Runat="server" 
                Enabled="True">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceVerifiedBy" 
                runat="server" ControlToValidate="RadTextBoxEvidenceVerifiedBy" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="Evidence verified on"></asp:Label></td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerVerifiedOn" Runat="server" Culture="en-US" 
                Skin="Web20" Width="325px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" EmptyMessage="DD/MM/YYYY"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
    </tr>

    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceVerfiedOn" 
                runat="server" ControlToValidate="RadDatePickerVerifiedOn" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="MemberEvidence1"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td width="280">
            <asp:Label ID="Label9" runat="server" CssClass="text" Text="Comments"></asp:Label></td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxComment" Width="325px" Runat="server" 
                Height="70px" TextMode="MultiLine">
            </telerik:RadTextBox></td>
    </tr>

    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label5" runat="server" CssClass="text" 
                Text="Evidence file"></asp:Label>
        &nbsp;</td>
        <td>
            <telerik:RadAsyncUpload ID="RadAsyncUpload1" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7" 
                onfileuploaded="RadAsyncUpload1_FileUploaded">
                <Localization Select="Select file" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td>
            <asp:Label ID="LabelUploadedFile" runat="server" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td>
            &nbsp;<asp:Button ID="RadButtonAddEvidence" runat="server" 
                onclick="RadButtonAddEvidence_Click" onload="RadButtonAddEvidence_Load" 
                Text="Save Evidence" ValidationGroup="MemberEvidence1" />
            
            </td>
    </tr>
</table>

