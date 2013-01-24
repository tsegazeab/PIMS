<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProcessSurvivorBenefits.ascx.cs" Inherits="User_Control_Life_Benefit_Application_ProcessSurvivorBenefits" %>

<style type="text/css">

.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	width: 642px;
}
</style>

<link href="../Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />

<table cellpadding="10" cellspacing="0" width="650">
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="Label7" runat="server" Text="Select Deceased Member:" 
                CssClass="text"></asp:Label>
          </td>
        <td align="right" valign="top">
            <telerik:RadComboBox ID="RadComboDeceasedMember" Runat="server" Skin="Vista" 
                Width="295px" onload="RadComboDeceasedMember_Load" 
                onselectedindexchanged="RadComboDeceasedMember_SelectedIndexChanged" 
                DataSourceID="odsDeceasedMember" DataTextField="MemberFullName" 
                DataValueField="PensionId" AutoPostBack="True" 
                EmptyMessage="Please Select">
            </telerik:RadComboBox>
            <asp:ObjectDataSource ID="odsDeceasedMember" runat="server" 
                SelectMethod="GetMemberDeaths" 
                TypeName="PSPITS.DAL.DATA.Membership.MembershipService">
            </asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            &nbsp;</td>
        <td align="right" valign="top">
            <telerik:RadTextBox ID="RadTextBoxPensionID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Visible="False">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" width="280">
            <asp:Label ID="LabelSchemeID" runat="server" Text="Scheme ID:" 
                CssClass="text" Visible="False"></asp:Label>
          </td>
        <td align="right" valign="top">
            <telerik:RadTextBox ID="RadTextBoxSchemeID" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Visible="False">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="LabelPayrollNo" runat="server" Text="Payroll No.:" 
                CssClass="text" Visible="False"></asp:Label>
          </td>
        <td align="right" valign="top">
            <telerik:RadTextBox ID="RadTextBoxPayrollNo" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Visible="False">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
            </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="LabelMemberName" runat="server" Text="Member Name:" 
                CssClass="text" Visible="False"></asp:Label>
          </td>
        <td align="right" valign="top">
            <telerik:RadTextBox ID="RadTextBoxMemberFullName" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Visible="False">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="LabelDateOfBirth" runat="server" Text="Date of Birth:" 
                CssClass="text" Visible="False"></asp:Label>
          </td>
        <td align="right" valign="top">
            <telerik:RadTextBox ID="RadTextBoxDateOfBirth" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Visible="False">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="LabelDateOfFirstAppointment" runat="server" Text="Date of First Appointment:" 
                CssClass="text" Visible="False"></asp:Label>
          </td>
        <td align="right" valign="top">
            <telerik:RadTextBox ID="RadTextBoxDateOfAppointment" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Visible="False">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <asp:Label ID="LabelDateOfDeath" runat="server" Text="Date of Death:" 
                CssClass="text" Visible="False"></asp:Label>
          </td>
        <td align="right" valign="top">
            <telerik:RadTextBox ID="RadTextBoxDateOfDeath" Runat="server" Width="295px" 
                BackColor="WhiteSmoke" Enabled="False" Font-Bold="True" Visible="False">
<PasswordStrengthSettings ShowIndicator="False" CalculationWeightings="50;15;15;20" PreferredPasswordLength="10" MinimumNumericCharacters="2" RequiresUpperAndLowerCaseCharacters="True" MinimumLowerCaseCharacters="2" MinimumUpperCaseCharacters="2" MinimumSymbolCharacters="2" OnClientPasswordStrengthCalculating="" TextStrengthDescriptions="Very Weak;Weak;Medium;Strong;Very Strong" TextStrengthDescriptionStyles="riStrengthBarL0;riStrengthBarL1;riStrengthBarL2;riStrengthBarL3;riStrengthBarL4;riStrengthBarL5;" IndicatorElementBaseStyle="riStrengthBar" IndicatorElementID=""></PasswordStrengthSettings>
                <DisabledStyle BackColor="#F0F0F0" ForeColor="Black" />
            </telerik:RadTextBox>
        </td>
    </tr>
    <tr>
        <td valign="top" align="center" colspan="2">
            <asp:GridView ID="GridViewSurvivors" runat="server" Caption="Survivors" 
                Font-Names="Verdana" Font-Size="Small" Width="100%" 
                AutoGenerateColumns="False" DataKeyNames="beneficiaryID" 
                DataSourceID="odsMemberSurvivors" Visible="False">
                <Columns>
                    <asp:BoundField DataField="pensionID" HeaderText="pensionID" 
                        SortExpression="pensionID" Visible="False" />
                    <asp:BoundField DataField="beneficiaryID" HeaderText="beneficiaryID" 
                        SortExpression="beneficiaryID" Visible="False" />
                    <asp:BoundField DataField="firstName" HeaderText="First Name" 
                        SortExpression="firstName">
                    <HeaderStyle BackColor="#0066CC" ForeColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" 
                        SortExpression="lastName">
                    <HeaderStyle BackColor="#0066CC" ForeColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="dateofBirth" DataFormatString="{0:dd/MM/yyyy}" 
                        HeaderText="Date Of Birth" SortExpression="dateofBirth">
                    <HeaderStyle BackColor="#0066CC" ForeColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="maritalStatus" HeaderText="Marital Status" 
                        SortExpression="maritalStatus" Visible="False" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender">
                    <HeaderStyle BackColor="#0066CC" ForeColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="relationID" HeaderText="relationID" 
                        SortExpression="relationID" Visible="False" />
                    <asp:BoundField DataField="nationalID" HeaderText="Nationality ID" 
                        SortExpression="nationalID">
                    <HeaderStyle BackColor="#0066CC" ForeColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="bankAccountID" HeaderText="bankAccountID" 
                        SortExpression="bankAccountID" Visible="False" />
                    <asp:BoundField DataField="hasDisability" HeaderText="Has Disability" 
                        SortExpression="hasDisability" Visible="False">
                    <HeaderStyle BackColor="#0066CC" ForeColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" 
                        Visible="False" />
                    <asp:BoundField DataField="phoneMobile" HeaderText="phoneMobile" 
                        SortExpression="phoneMobile" Visible="False" />
                    <asp:BoundField DataField="phoneLandline" HeaderText="phoneLandline" 
                        SortExpression="phoneLandline" Visible="False" />
                    <asp:BoundField DataField="postAddress" HeaderText="postAddress" 
                        SortExpression="postAddress" Visible="False" />
                    <asp:BoundField DataField="homeState" HeaderText="homeState" 
                        SortExpression="homeState" Visible="False" />
                    <asp:BoundField DataField="address" HeaderText="address" 
                        SortExpression="address" Visible="False" />
                    <asp:BoundField DataField="dateCreated" HeaderText="dateCreated" 
                        SortExpression="dateCreated" Visible="False" />
                    <asp:BoundField DataField="dateUpdated" HeaderText="dateUpdated" 
                        SortExpression="dateUpdated" Visible="False" />
                    <asp:BoundField DataField="whoCreated" HeaderText="whoCreated" 
                        SortExpression="whoCreated" Visible="False" />
                    <asp:BoundField DataField="whoUpdated" HeaderText="whoUpdated" 
                        SortExpression="whoUpdated" Visible="False" />
                    <asp:BoundField DataField="logRef" HeaderText="logRef" SortExpression="logRef" 
                        Visible="False" />
                    <asp:BoundField DataField="Relationship" HeaderText="Relationship" 
                        SortExpression="Relationship">
                    <HeaderStyle BackColor="#0066CC" ForeColor="White" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="#0066CC" ForeColor="White" />
            </asp:GridView>
            <asp:ObjectDataSource ID="odsMemberSurvivors" runat="server" 
                SelectMethod="GetMemberBeneficiaries" 
                TypeName="PSPITS.DAL.DATA.Membership.MembershipService">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="0" Name="pensionId" 
                        SessionField="PensionID" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:Label ID="LabelStatusMsg" runat="server" 
                CssClass="text" Visible="False"></asp:Label>
          </td>
    </tr>
    <tr>
        <td valign="top">
            &nbsp;</td>
        <td align="left" valign="top">
            <telerik:RadButton ID="RadButtonProcessBenefit" runat="server" 
                onclick="RadButtonProcessBenefit_Click" Skin="Vista" Text="Process Survivor Benefits" 
                onload="RadButtonProcessBenefit_Load" 
                ValidationGroup="ProcessMemberBenefit" Enabled="False">
            </telerik:RadButton>
        </td>
    </tr>
</table>

