<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BeneficiaryEvidence.ascx.cs" Inherits="User_Control_BeneficiaryEvidence" %>
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

.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
    display: -moz-inline-stack;
    display: inline-block;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
    display: -moz-inline-stack;
    display: inline-block;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox_Default
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox
{
	vertical-align: middle;
    display: -moz-inline-stack;
    display: inline-block;
}

.RadComboBox
{
	text-align: left;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbInputCellLeft
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbInputCellLeft
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox *
{
	margin: 0;
	padding: 0;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbInput
{
	font: 12px "Segoe UI", Arial, sans-serif;
	color: #333;
}

.RadComboBox .rcbInput
{
	text-align: left;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
}

.RadComboBox_Default .rcbArrowCellRight
{
	background-image: url('mvwres://Telerik.Web.UI, Version=2011.2.712.40, Culture=neutral, PublicKeyToken=121fae78165ba3d4/Telerik.Web.UI.Skins.Default.ComboBox.rcbSprite.png');
}

.RadComboBox .rcbArrowCellRight
{
	background-color: transparent;
	background-repeat: no-repeat;
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

</style>
<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table>
    <tr>
        <td width="280" colspan="2">
<telerik:RadGrid ID="RadGridBeneficiaryEvidence" runat="server"   GridLines="None" Skin="WebBlue" 
                        Width="578px" CellSpacing="0" 
        onneeddatasource="RadGridEvidence_NeedDataSource" >
                        <MasterTableView autogeneratecolumns="False" 
                            datakeynames="beneficiaryID,evidenceID" >
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
                                    <telerik:GridTemplateColumn DataField="columnEdit"   HeaderText="Edit" 
                                        UniqueName="columnEdit" ReadOnly="false" 
                                        FilterControlAltText="Filter columnEdit column">
                                    </telerik:GridTemplateColumn> 
                                    <telerik:GridBoundColumn DataField="pensionID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="PensionID" SortExpression="PensionID" UniqueName="pensionID" 
                                        FilterControlAltText="Filter pensionID column">
                                    </telerik:GridBoundColumn>                                                       
                                    <telerik:GridBoundColumn DataField="beneficiaryID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="beneficiaryID" SortExpression="beneficiaryID" UniqueName="beneficiaryID">
                                    </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="BeneficiaryName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Beneficiary" SortExpression="BeneficiaryName" 
                                        UniqueName="BeneficiaryName" 
                                        FilterControlAltText="Filter BeneficiaryName column">
                                    </telerik:GridBoundColumn>       
                                    <telerik:GridBoundColumn DataField="Relationship" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Relationship" SortExpression="Relationship" 
                                        UniqueName="Relationship" FilterControlAltText="Filter Relationship column">
                                    </telerik:GridBoundColumn> 
                                    
                                     <telerik:GridBoundColumn DataField="EvidenceType" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Evidence" SortExpression="EvidenceType" 
                                        UniqueName="EvidenceType" FilterControlAltText="Filter EvidenceType column">
                                    </telerik:GridBoundColumn>                                 
                                     <telerik:GridBoundColumn DataField="fileOriginalName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="File Name" SortExpression="fileOriginalName" 
                                        UniqueName="fileOriginalName" 
                                        FilterControlAltText="Filter fileOriginalName column">
                                     </telerik:GridBoundColumn>   
                                    <telerik:GridBoundColumn DataField="evidenceID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="Evidence ID" UniqueName="evidenceID" 
                                        FilterControlAltText="Filter evidenceID column">
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
        <td width="280">
            &nbsp;</td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxPensionID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Visible="False">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td width="280">
            <asp:Label ID="Label7" runat="server" Text="Scheme ID:" 
                CssClass="text"></asp:Label>
          </td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxSchemeID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
            <asp:Label ID="Label8" runat="server" Text="Member Name:" 
                CssClass="text"></asp:Label>
          </td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxMemberFullName" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
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
            <asp:Label ID="Label1" runat="server" CssClass="text" 
                Text="Beneficiary Name"></asp:Label>
        </td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxName" Runat="server" Width="295px" 
                MarkFirstMatch="true">
            </telerik:RadComboBox>
        </td>
    </tr>
    <tr>
        <td width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSurname" runat="server" 
                ControlToValidate="RadComboBoxName" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="BeneficiaryEvidence"></asp:RequiredFieldValidator>
          </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            <asp:Label ID="Label4" runat="server" CssClass="text" Text="Evidence Type"></asp:Label>
        </td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxEvidenceType" Runat="server" Width="295px" 
                MarkFirstMatch="true">
            </telerik:RadComboBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSurname0" runat="server" 
                ControlToValidate="RadComboBoxEvidenceType" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="BeneficiaryEvidence"></asp:RequiredFieldValidator>
          </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
             <asp:Label ID="Label12" runat="server" CssClass="text" Text="Is evidence presented?"></asp:Label>
        </td>
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
            </telerik:RadComboBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidencePresented" 
                runat="server" ControlToValidate="RadComboBoxevidencePresented" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="BeneficiaryEvidence"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
             <asp:Label ID="Label13" runat="server" CssClass="text" 
                Text="Is evidence accepted?"></asp:Label>
        </td>
        <td>
            <telerik:RadComboBox ID="RadComboBoxEvidenceAccepted" Runat="server" 
                Width="80px" MarkFirstMatch="True">
                <Items>
                    <telerik:RadComboBoxItem runat="server" Selected="True" 
                        Owner="RadComboBoxEvidenceAccepted" />
                    <telerik:RadComboBoxItem runat="server" Text="Yes" Value="Yes" 
                        Owner="RadComboBoxEvidenceAccepted" />
                    <telerik:RadComboBoxItem runat="server" Text="No" Value="No" 
                        Owner="RadComboBoxEvidenceAccepted" />
                </Items>
            </telerik:RadComboBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceAccepted" 
                runat="server" ControlToValidate="RadComboBoxEvidenceAccepted" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="BeneficiaryEvidence"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            <asp:Label ID="Label14" runat="server" CssClass="text" 
                Text="Evidence verified by"></asp:Label></td>
        <td>
             <telerik:RadTextBox ID="RadTextBoxEvidenceVerifiedBy" Width="295px" Runat="server" 
                Enabled="True">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceVerifiedBy" 
                runat="server" ControlToValidate="RadTextBoxEvidenceVerifiedBy" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="BeneficiaryEvidence"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            <asp:Label ID="Label3" runat="server" CssClass="text" Text="Evidence verified on"></asp:Label></td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerVerifiedOn" Runat="server" Culture="en-US" 
                Skin="Web20" Width="295px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" EmptyMessage="DD/MM/YYYY"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" width="280">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEvidenceVerfiedOn" 
                runat="server" ControlToValidate="RadDatePickerVerifiedOn" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="BeneficiaryEvidence"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" valign="top" width="280">
            <asp:Label ID="Label6" runat="server" CssClass="text" Text="Comment"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBoxComment" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="295px" Skin="Outlook" BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" valign="top" width="280">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="margin-left: 80px" valign="top" width="280">
            <asp:Label ID="Label5" runat="server" CssClass="text" Text="Evidence Document"></asp:Label>
        </td>
        <td>
            <telerik:RadAsyncUpload ID="RadAsyncUpload1" runat="server" 
                MaxFileInputsCount="1" Skin="Windows7" 
                onfileuploaded="RadAsyncUpload1_FileUploaded">
                <Localization Select="Select file" />
            </telerik:RadAsyncUpload>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" valign="top" width="280">
            &nbsp;</td>
        <td>
            <asp:Label ID="LabelUploadedFile" runat="server" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="margin-left: 80px" valign="top" width="280">
            &nbsp;</td>
        <td>
            <telerik:RadButton ID="RadButtonSaveEvidence" runat="server" 
                onclick="RadButtonSaveEvidence_Click" Skin="Vista" Text="Save Evidence" 
                onload="RadButtonSaveEvidence_Load" ValidationGroup="BeneficiaryEvidence">
            </telerik:RadButton>
        </td>
    </tr>
</table>

