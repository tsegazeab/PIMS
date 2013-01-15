<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BeneficiaryInformation.ascx.cs" Inherits="User_Control_BeneficiaryInformation" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register src="Grid_RequiredDocuments.ascx" tagname="Grid_RequiredDocuments" tagprefix="uc2" %>
<%@ Register src="DayMonthYear.ascx" tagname="DayMonthYear" tagprefix="uc1" %>
<%@ Register src="ContactInformation.ascx" tagname="ContactInformation" tagprefix="uc3" %>

<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
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

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
}

.RadComboBox .rcbReadOnly .rcbInput
{
	cursor: default;
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
<telerik:RadGrid ID="RadGridBeneficiary" runat="server"   GridLines="None" Skin="WebBlue" 
                        Width="578px" CellSpacing="0" 
        onneeddatasource="RadGridBeneficiary_NeedDataSource" >
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
                                    <telerik:GridTemplateColumn DataField="columnRemove"   HeaderText="Remove" UniqueName="columnRemove" ReadOnly="false">
                                    </telerik:GridTemplateColumn> 
                                    <telerik:GridBoundColumn DataField="PensionID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="PensionID" SortExpression="PensionID" UniqueName="PensionID">
                                    </telerik:GridBoundColumn>                                                       
                                    <telerik:GridBoundColumn DataField="beneficiaryID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="beneficiaryID" SortExpression="beneficiaryID" UniqueName="beneficiaryID">
                                    </telerik:GridBoundColumn>
                                    <telerik:GridBoundColumn DataField="relationID" DefaultInsertValue=""  Visible="false"
                                        HeaderText="relationID" SortExpression="relationID" UniqueName="relationID">
                                    </telerik:GridBoundColumn>
                                     <telerik:GridBoundColumn DataField="firstName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Given name" SortExpression="firstName" UniqueName="firstName">
                                    </telerik:GridBoundColumn>       
                                     <telerik:GridBoundColumn DataField="lastName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Surname" SortExpression="lastName" UniqueName="lastName">
                                    </telerik:GridBoundColumn>                                 
                                     <telerik:GridBoundColumn DataField="dateofBirth" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Date of birth" SortExpression="dateofBirth" UniqueName="dateofBirth" 
                                        DataFormatString="{0:dd'/'MM'/'yyyy}">
                                     </telerik:GridBoundColumn>   
                                    <telerik:GridBoundColumn DataField="relationship" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Relationship" SortExpression="relationship" UniqueName="relationship">
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
    <table cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top" width="280">
            
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            
            <strong>Beneficiary personal information</strong></td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
             <asp:Label ID="Label13" runat="server" Text="Surname (last name)" 
                CssClass="text"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
             <telerik:RadTextBox ID="RadTextBoxlastName" Runat="server" Width="295px">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSurname" runat="server" 
                ControlToValidate="RadTextBoxlastName" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="BeneficiaryInfo"></asp:RequiredFieldValidator>
          </td>
    </tr>
    <tr>
        <td valign="top" width="280">
             <asp:Label ID="Label14" runat="server" Text="Given name (first name)" 
                CssClass="text"></asp:Label>
                <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
            </td>
        <td align="left" valign="top">
             <telerik:RadTextBox ID="RadTextBoxfirstName" Runat="server" Width="295px">
            </telerik:RadTextBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" 
                ControlToValidate="RadTextBoxfirstName" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="BeneficiaryInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>    
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label18" runat="server" Text="Gender" 
                CssClass="text"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
             <telerik:RadComboBox ID="RadComboBoxgender" Runat="server"  Width="295px" MarkFirstMatch="true">
            </telerik:RadComboBox>
            </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" 
                ControlToValidate="RadComboBoxgender" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="BeneficiaryInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label17" runat="server" Text="Date of birth" 
                CssClass="text"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
            <telerik:RadDatePicker ID="RadDatePickerDateOfBirth" Runat="server" Culture="en-US" 
                Skin="Web20" Width="295px" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Web20"></Calendar>

<DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" EmptyMessage="DD/MM/YYYY"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
            
            </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDoB" runat="server" 
                ControlToValidate="RadDatePickerDateOfBirth" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="BeneficiaryInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label10" runat="server" Text="Marital status" 
                CssClass="text"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
            <telerik:RadComboBox ID="RadComboBoxmaritalStatus" Runat="server"  Width="295px" MarkFirstMatch="true">
            </telerik:RadComboBox></td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMaritalStatus" 
                runat="server" ControlToValidate="RadComboBoxmaritalStatus" 
                ErrorMessage="Required" Font-Names="Arial,Helvetica,sans-serif" 
                Font-Size="Small" ForeColor="Red" ValidationGroup="BeneficiaryInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
                       <asp:Label ID="Label7" runat="server" Text="Relationship to member" 
                CssClass="text"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
<td align="left" valign="top">
                    <telerik:RadComboBox ID="RadComboBoxRelationship" Runat="server"  Width="295px" MarkFirstMatch="true">
            </telerik:RadComboBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
                       &nbsp;</td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorRelationship" 
                runat="server" ControlToValidate="RadComboBoxRelationship" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="BeneficiaryInfo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
                       <asp:Label ID="Label6" runat="server" Text="National ID Number" 
                CssClass="text"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
            <telerik:RadMaskedTextBox ID="RadTextBoxnationalID" Runat="server" 
                DisplayMask="#########" DisplayPromptChar=" " Mask="#########" PromptChar=" " 
                Width="295px">
            </telerik:RadMaskedTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNationalID" 
                runat="server" ControlToValidate="RadTextBoxnationalID" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="BeneficiaryInfo"></asp:RequiredFieldValidator>
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
            <strong>Beneficiary Contact Information <strong></td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label1" runat="server" Text="Email address" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxeMail" Runat="server" Width="295px">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                runat="server" ControlToValidate="RadTextBoxeMail" ErrorMessage="Invalid Email" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                SetFocusOnError="True" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="BeneficiaryInfo"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label21" runat="server" Text="Phone Number (Mobile)" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxPhoneMobile" Runat="server" Width="295px">
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
            <asp:Label ID="Label4" runat="server" Text="Phone Number (Fixed)" 
                CssClass="text"></asp:Label>
        </td>
        <td align="left" valign="top">
            <telerik:RadTextBox ID="RadTextBoxPhoneLandline" Runat="server" Width="295px">
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
            <asp:Label ID="Label12" runat="server" 
                Text="Postal Address" CssClass="text"></asp:Label>
            <br />
        </td>
        <td valign="top">
            <telerik:RadTextBox ID="RadTextBoxPostAddress" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="295px" Skin="Outlook">
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
            <asp:Label ID="Label5" runat="server" CssClass="text" 
                Text="Home State within South Sudan"></asp:Label>
            <font color="red" style="font-size: small; font-family: Arial, Helvetica, sans-serif">*</font>
        </td>
        <td align="left" valign="top">
                    <telerik:RadComboBox ID="RadComboBoxhomeState" Runat="server"  Width="295px" MarkFirstMatch="true">
            </telerik:RadComboBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="left" valign="top">
    
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorHomeState" runat="server" 
                ControlToValidate="RadComboBoxhomeState" ErrorMessage="Required" 
                Font-Names="Arial,Helvetica,sans-serif" Font-Size="Small" ForeColor="Red" 
                ValidationGroup="BeneficiaryInfo"></asp:RequiredFieldValidator>
    
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label11" runat="server" 
                Text="Address" CssClass="text"></asp:Label>
            <br />
        </td>
        <td valign="top">
            <telerik:RadTextBox ID="RadTextBoxAddress" Runat="server" Height="40px" 
                TextMode="MultiLine" Width="295px" Skin="Outlook">
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td valign="top">
            &nbsp;</td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td valign="top">
            <telerik:RadButton ID="RadButtonSaveBeneficiary" runat="server" 
                Text="Save Beneficiary Info" onload="RadButtonSaveBeneficiary_Load" 
                onclick="RadButtonSaveBeneficiary_Click" ValidationGroup="BeneficiaryInfo">
            </telerik:RadButton>
        </td>
    </tr>
    </table>

