<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberIDSearch.ascx.cs" Inherits="User_Control_MemberIDSearch" %>
<style type="text/css">



    .style1
    {
        width: 520px;
    }
    .mybottom2
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
	color: #FFFFFF;
	background-color: #0D5376;
	font-weight: bold;
}
    .mybottom2
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
	color: #FFFFFF;
	background-color: #0D5376;
	font-weight: bold;
}
    .style3
    {
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
        color: #FFFFFF;
        font-weight: bold;
        width: 10px;
        background-color: #0D5376;
    }
    .style4
    {
        width: 10px;
    }
    .text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
}
    </style>
<table cellpadding="0" cellspacing="0">
    <tr>
        <td  width="10">
            &nbsp;</td>
        <td  colspan="3">
            &nbsp;</td>
        <td >
            &nbsp;</td>
    </tr>
    <tr>
        <td  width="10">
            &nbsp;</td>
        <td  colspan="3">
            &nbsp;</td>
        <td >
            &nbsp;</td>
    </tr>
    <tr>
        <td class="mybottom2" width="10">
            &nbsp;</td>
        <td class="mybottom2" colspan="3">
            Search by identification number</td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            
                <asp:DropDownList ID="DropDownListSearchParameter" runat="server" Width="200px" 
                    onselectedindexchanged="DropDownListSearchParameter_SelectedIndexChanged">
                <asp:ListItem Value=""></asp:ListItem>
                <asp:ListItem Value="1">Pension ID</asp:ListItem>
                <asp:ListItem Value="2">National ID</asp:ListItem>
                <asp:ListItem Value="3">Payroll number</asp:ListItem>
                <asp:ListItem Value="4">Establishment number</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;<asp:Label ID="Label1" runat="server" Text="="></asp:Label>
        </td>
        <td align="right">
            <telerik:RadMaskedTextBox ID="RadMaskedTextBoxSearchValue" Width="240px" 
                Runat="server" DisplayPromptChar=" " Mask="#########" PromptChar=" " 
                DisplayMask="#########">
            </telerik:RadMaskedTextBox>
            
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td align="right">
           
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>

        </td>
        <td>
            &nbsp;</td>
        <td align="right">
            <telerik:RadButton ID="RadButtonSearch" runat="server" Skin="Windows7" 
                Text="Search" Width="120px" onload="RadButtonSearch_Load" 
                onclick="RadButtonSearch_Click">
            </telerik:RadButton>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="3">
            <asp:Panel ID="PanelGrid" runat="server">
                     <telerik:RadGrid ID="RadGridMember" runat="server"   GridLines="None" Skin="WebBlue" 
                        Width="578px" CellSpacing="0" onneeddatasource="RadGridMember_NeedDataSource" 
       >
                        <MasterTableView autogeneratecolumns="False" datakeynames="pensionID" >
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
                                    <telerik:GridBoundColumn DataField="PensionID" DefaultInsertValue=""
                                        HeaderText="PensionID" SortExpression="PensionID" UniqueName="PensionID">
                                    </telerik:GridBoundColumn>                                                       
                                     <telerik:GridBoundColumn DataField="firstName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Given name" SortExpression="firstName" UniqueName="firstName">
                                    </telerik:GridBoundColumn>       
                                     <telerik:GridBoundColumn DataField="lastName" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Surname" SortExpression="lastName" UniqueName="lastName">
                                    </telerik:GridBoundColumn>                                 
                                     <telerik:GridBoundColumn DataField="Gender" DefaultInsertValue=""  Visible="true"
                                        HeaderText="Gender" SortExpression="Gender" UniqueName="gender" 
                                        FilterControlAltText="Filter gender column">
                                     </telerik:GridBoundColumn>   
                                    <telerik:GridTemplateColumn DataField="columnEdit" 
                                        FilterControlAltText="Filter columnSelect column" HeaderText="Select" 
                                        ReadOnly="false" UniqueName="columnEdit">
                                    </telerik:GridTemplateColumn>
                                    
                            </Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>
                        </MasterTableView>

<FilterMenu EnableImageSprites="False"></FilterMenu>

<HeaderContextMenu CssClass="GridContextMenu GridContextMenu_WebBlue"></HeaderContextMenu>
                    </telerik:RadGrid>
            </asp:Panel>
        </td>
        <td class="style4">
            &nbsp;</td>
    </tr>
</table>








