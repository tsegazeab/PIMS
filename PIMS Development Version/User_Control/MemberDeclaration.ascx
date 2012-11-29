<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberDeclaration.ascx.cs" Inherits="User_Control_MemberDeclaration" %>
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

.RadPicker
{
	vertical-align:middle;
}

.RadPicker
{
	vertical-align:middle;
}

.RadPicker td a
{
	position:relative;/*FF*/
	outline:none;/*FF*/
	z-index:2;/*Opera*/
	margin:0 2px;
	text-decoration:none;
}
.text
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: large;
}

</style>

<table>
    <tr>
        <td width="280">
            <asp:Label ID="Label6" runat="server" Text="Date of Application" 
                CssClass="text"></asp:Label>
        </td>
        <td>
            <telerik:RadDatePicker ID="RadDatePickerDateOfApplication" Runat="server" Culture="en-US" 
                Skin="Outlook" Width="100%" MinDate="1800-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" 
                    ViewSelectorText="x" Skin="Outlook"></Calendar>

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
            <asp:Label ID="Label7" runat="server" Text="Signature of Applicant" 
                CssClass="text"></asp:Label>
        </td>
        <td>
            <telerik:RadTextBox ID="RadTextBox3" Runat="server" Width="295px" 
                BackColor="WhiteSmoke">
            </telerik:RadTextBox>
        </td>
    </tr>
</table>

