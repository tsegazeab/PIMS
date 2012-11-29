<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberTextSearch.ascx.cs" Inherits="User_Control_MemberTextSearch" %>
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
</style>
<table cellpadding="0" cellspacing="0">
    <tr>
        <td  width="10">
            &nbsp;</td>
        <td  colspan="3">
            &nbsp;</td>
        <td  width="10">
            &nbsp;</td>
    </tr>
    <tr>
        <td  width="10">
            &nbsp;</td>
        <td  colspan="3">
            &nbsp;</td>
        <td  width="10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="mybottom2" width="10">
            &nbsp;</td>
        <td class="mybottom2" colspan="3">
&nbsp;Search 
            by given name and/or surname</td>
        <td class="mybottom2" width="10">
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
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
         <asp:DropDownList ID="DropDownListSearchParameter1" runat="server" Width="200px">
                <asp:ListItem Value=""></asp:ListItem>
                <asp:ListItem Value="1">Given name</asp:ListItem>
                <asp:ListItem Value="2">Last name</asp:ListItem>               
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
         </td>
        
        <td>
                 <asp:DropDownList ID="DropDownListSearchCriteria1" runat="server" Width="120px">
                <asp:ListItem Value=""></asp:ListItem>
                <asp:ListItem Value="1">StartsWith</asp:ListItem>
                <asp:ListItem Value="2">Contains</asp:ListItem>       
                 <asp:ListItem Value="3">EndsWith</asp:ListItem>               
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
               
        </td>
        <td align="right">
            <telerik:RadTextBox ID="RadTextBoxSearchValue1" MarkFirstMatch="true" Runat="server" Skin="Windows7" 
                Width="240px">
            </telerik:RadTextBox>
        </td>
        <td align="right">
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
            &nbsp;</td>
        <td align="right">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
                    <asp:DropDownList ID="DropDownListBoxAndOr" runat="server" Width="120px">
                <asp:ListItem Value=""></asp:ListItem>
                <asp:ListItem Value="1">And</asp:ListItem>
                <asp:ListItem Value="2">Or</asp:ListItem>       
               
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
           </td>
        <td align="right">
            &nbsp;</td>
        <td align="right">
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
            &nbsp;</td>
        <td align="right">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
<asp:DropDownList ID="DropDownListSearchParameter2" runat="server" Width="200px">
                <asp:ListItem Value=""></asp:ListItem>
                <asp:ListItem Value="1">Given name</asp:ListItem>
                <asp:ListItem Value="2">Last name</asp:ListItem>               
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:DropDownList ID="DropDownListSearchCriteria2" runat="server" Width="120px">
                <asp:ListItem Value=""></asp:ListItem>
                <asp:ListItem Value="1">StartsWith</asp:ListItem>
                <asp:ListItem Value="2">Contains</asp:ListItem>       
                 <asp:ListItem Value="3">EndsWith</asp:ListItem>               
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                </td>
        <td align="right">
             <telerik:RadTextBox ID="RadTextBoxSearchValue2" MarkFirstMatch="true" Runat="server" Skin="Windows7" 
                Width="240px">
            </telerik:RadTextBox></td>
        <td align="right">
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
            &nbsp;</td>
        <td align="right">
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
        <telerik:RadButton ID="RadButtonClose" AutoPostBack="true" Visible="false" 
                runat="server" Skin="Windows7" 
                Text="Close" Width="120px" onclick="RadButtonClose_Click" >
            </telerik:RadButton>
            <telerik:RadButton ID="RadButtonSearch" AutoPostBack="true" runat="server" Skin="Windows7" 
                Text="Search" Width="120px" onload="RadButtonSearch_Load" 
                onclick="RadButtonSearch_Click">
            </telerik:RadButton>
        </td>
        <td align="right">
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
            &nbsp;</td>
        <td align="right">
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
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="3">
            <asp:Panel ID="PanelGrid" runat="server">
                <telerik:RadGrid ID="RadGridMember" runat="server"   GridLines="None" Skin="WebBlue" 
                        Width="578px" CellSpacing="0" 
                    onneeddatasource="RadGridMember_NeedDataSource" >
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
        <td>
            &nbsp;</td>
    </tr>
</table>




