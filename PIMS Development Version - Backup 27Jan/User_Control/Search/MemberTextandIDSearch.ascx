<%@ Control Language="C#" AutoEventWireup="true" ClassName="MemberTextandIDSearch" CodeFile="MemberTextandIDSearch.ascx.cs" Inherits="User_Control_MemberTextandIDSearch" %>
<%@ Register src="MemberIDSearch.ascx" tagname="MemberIDSearch" tagprefix="uc1" %><%@ Register src="MemberTextSearch.ascx" tagname="MemberTextSearch" tagprefix="uc2" %>
<%@ Register src="../ContactInformationUpdate.ascx" tagname="ContactInformationUpdate" tagprefix="uc3" %>
<style type="text/css">

    .mybottom2
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
	color: #FFFFFF;
	background-color: #0D5376;
	font-weight: bold;
}
</style>
<telerik:RadTabStrip ID="RadTabStripSearch" runat="server" SelectedIndex="0" 
    ontabclick="RadToolBarClicked">
    <Tabs>
        <telerik:RadTab runat="server" Selected="True" Text="Search by identification number">          
        </telerik:RadTab>
        <telerik:RadTab runat="server" Text="Search by member name">
        </telerik:RadTab>
    </Tabs>
</telerik:RadTabStrip>




<telerik:RadMultiPage ID="RadMultiPageSearchMember" runat="server">
    <telerik:RadPageView ID="RadPageViewSearchMemberByID" runat="server" 
        Width="714px">
        <uc1:MemberIDSearch ID="MemberIDSearch1" runat="server" />
        
        <br />
        
    </telerik:RadPageView>
    <telerik:RadPageView ID="RadPageViewSearchMemberByName" runat="server">
     <uc2:MemberTextSearch ID="MemberTextSearch1" runat="server" />
    </telerik:RadPageView>
</telerik:RadMultiPage>





