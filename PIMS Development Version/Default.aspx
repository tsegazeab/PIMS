﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Public Servants Pension MIS</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 100%;
        }
        .style2
        {
            height: 19px;
        }
        .style3
        {
            width: 100%;
        }
    </style>
    <link href="Styles/PISPITSSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1" 
            
            style="background-position: center center; top: 0px; left: 0px; background-image: url('images/modules/Desktop_icons/Final_PF_Logo.png'); background-repeat: no-repeat;">
            <tr>
                <td colspan="6" rowspan="12" valign="top">
                    <table cellpadding="0" cellspacing="0">
                        <tr>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
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
                                <telerik:RadToolBar ID="RadToolBar1" Runat="server" Skin="Windows7" 
                                    >
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            Text="Membership" 
                                            ImageUrl="~/images/modules/Desktop_icons/Nations-African-Male-icon.png" 
                                            NavigateUrl="~/Membership/MembershipMenu.aspx">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <telerik:RadToolBar ID="RadToolBar5" Runat="server" Skin="Windows7">
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            ImageUrl="~/images/modules/Desktop_icons/Column-Chart-icon.png" 
                                            Owner="RadToolBar5" Text="Reports">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
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
                                <telerik:RadToolBar ID="RadToolBar2" Runat="server" Skin="Windows7" 
                                    onbuttonclick="RadToolBar2_ButtonClick">
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            Text="Contribution" 
                                            ImageUrl="~/images/modules/Desktop_icons/Money_Plus.png" 
                                            NavigateUrl="~/Contribution/Contribution.aspx">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td width="30">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <telerik:RadToolBar ID="RadToolBar6" Runat="server" Skin="Windows7">
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            ImageUrl="~/images/modules/Desktop_icons/Office-Customer-Male-Dark-icon.png" 
                                            Text="Sys Admin">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
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
                                <telerik:RadToolBar ID="RadToolBar3" Runat="server" Skin="Windows7">
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            Text="Benefit" ImageUrl="~/images/modules/Desktop_icons/Favorites.png" 
                                            NavigateUrl="~/Benefit/LifeBenefitApplication.aspx">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <telerik:RadToolBar ID="RadToolBar10" Runat="server" Skin="Windows7">
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            ImageUrl="~/images/modules/Desktop_icons/Security_Reader1.png" 
                                            Text="Tracking" 
                                            NavigateUrl="~/Application_Section/FrontDeskApplicationTracker.aspx">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
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
                                <telerik:RadToolBar ID="RadToolBar4" Runat="server" Skin="Windows7">
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            Text="Payment" ImageUrl="~/images/modules/Desktop_icons/11.png">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <telerik:RadToolBar ID="RadToolBar7" Runat="server" Skin="Windows7">
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            ImageUrl="~/images/modules/Desktop_icons/Books-1-icon.png" 
                                            Owner="RadToolBar7" Text="Archive">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
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
                                <telerik:RadToolBar ID="RadToolBar11" Runat="server" Skin="Windows7">
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            ImageUrl="~/images/modules/Desktop_icons/search (2).png" Text="Search">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <telerik:RadToolBar ID="RadToolBar8" Runat="server" Skin="Windows7">
                                    <Items>
                                        <telerik:RadToolBarButton runat="server" ImagePosition="AboveText" 
                                            ImageUrl="~/images/modules/Desktop_icons/Question_Mark-175x175.png" Text="Help">
                                        </telerik:RadToolBarButton>
                                    </Items>
                                </telerik:RadToolBar>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
                    <telerik:RadCalendar ID="RadCalendar1" Runat="server" EnableMultiSelect="False" 
                        SelectedDate="" Skin="Windows7" ViewSelectorText="x">
                        <SpecialDays>
                            <telerik:RadCalendarDay Date="" Repeatable="Today">
                                <ItemStyle CssClass="rcToday" />
                            </telerik:RadCalendarDay>
                        </SpecialDays>
<WeekendDayStyle CssClass="rcWeekend"></WeekendDayStyle>

<CalendarTableStyle CssClass="rcMainTable"></CalendarTableStyle>

<OtherMonthDayStyle CssClass="rcOtherMonth"></OtherMonthDayStyle>

<OutOfRangeDayStyle CssClass="rcOutOfRange"></OutOfRangeDayStyle>

<DisabledDayStyle CssClass="rcDisabled"></DisabledDayStyle>

<SelectedDayStyle CssClass="rcSelected"></SelectedDayStyle>

<DayOverStyle CssClass="rcHover"></DayOverStyle>

<FastNavigationStyle CssClass="RadCalendarMonthView RadCalendarMonthView_Windows7"></FastNavigationStyle>

<ViewSelectorStyle CssClass="rcViewSel"></ViewSelectorStyle>
                    </telerik:RadCalendar>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="220">
                    <table cellpadding="0" cellspacing="0" class="style3">
                        <tr>
                            <td align="center" bgcolor="#9CCDFE" height="22">
                                <span class="text">My Tasks</span></td>
                        </tr>
                        <tr>
                            <td bgcolor="#BBDCFE">
                                <asp:BulletedList ID="BulletedList1" runat="server">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:BulletedList>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" bgcolor="#BBDCFE">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="220">
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
                <td>
                    &nbsp;</td>
                <td align="right" width="220">
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
                <td>
                    &nbsp;</td>
                <td align="right" width="220">
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
                <td>
                    &nbsp;</td>
                <td align="right" width="220">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="8">
                    <telerik:RadToolBar ID="RadToolBar9" Runat="server" Skin="Vista" 
                        Width="100%" onbuttonclick="RadToolBar9_ButtonClick">
                        <Items>
                            <telerik:RadToolBarDropDown runat="server" DropDownHeight="190px" 
                                ExpandDirection="Up" Height="46px" ImagePosition="Right" 
                                ImageUrl="~/images/modules/Desktop_icons/Aqua-Button.png">
                                <Buttons>
                                    <telerik:RadToolBarButton runat="server" Text="Switch user">
                                    </telerik:RadToolBarButton>
                                    <telerik:RadToolBarButton runat="server" IsSeparator="True" 
                                        Text="Child Button 3">
                                    </telerik:RadToolBarButton>
                                    <telerik:RadToolBarButton runat="server" Text="Logout">
                                    </telerik:RadToolBarButton>
                                </Buttons>
                            </telerik:RadToolBarDropDown>
                            <telerik:RadToolBarButton runat="server" Text="Button 0" IsSeparator="True">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" Width="1150px">
                            </telerik:RadToolBarButton>
                            <telerik:RadToolBarButton runat="server" Text="Button 4">
                                <ItemTemplate>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label ID="LabelTime" runat="server" CssClass="text">11:39 AM</asp:Label>
                                            <asp:Timer ID="Timer1" runat="server" Interval="6000">
                                            </asp:Timer>
                                        </ContentTemplate>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                        </Triggers>
                                    </asp:UpdatePanel>
                                </ItemTemplate>
                            </telerik:RadToolBarButton>
                        </Items>
                    </telerik:RadToolBar>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>