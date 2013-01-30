<%@ Page Title="Generate Payment Schedule - PIMS" Language="C#" MasterPageFile="~/MasterPagePayment.master" AutoEventWireup="true" CodeFile="GenerateSchedule.aspx.cs" Inherits="Payment_GenerateSchedule" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" cellspacing="0" width="100%">
        <tr>
            <td align="left">
                            
            </td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        <tr>
            <td>
                <table width="45%" align="center">
                    <tr>
                        <td width="100%">
                            <div id="ProcessForm" style="font-family: Arial; font-size: small; border: 1px solid Navy; border-radius: 8px 8px 8px 8px;">
                                <table>
                                    <tr>
                                        <td align="center" width="50%" colspan="2" style="width: 100%; font-size: large; font-weight: bold">
                                            Select Month, Year</td>
                                    </tr>
                                    <tr>
                                        <td align="right" width="50%">
                                            Select Year:</td>
                                        <td width="50%" align="left">
                                            <telerik:RadComboBox ID="RadComboBoxYear" Runat="server" Skin="Vista" 
                                                ValidationGroup="ProcessPayment">
                                                <Items>
                                                    <telerik:RadComboBoxItem runat="server" Text="2016" Value="2016" />
                                                    <telerik:RadComboBoxItem runat="server" Text="2015" Value="2015" />
                                                    <telerik:RadComboBoxItem runat="server" Text="2014" Value="2014" />
                                                    <telerik:RadComboBoxItem runat="server" Selected="True" Text="2013" 
                                                        Value="2013" />
                                                    <telerik:RadComboBoxItem runat="server" Text="2012" Value="2012" />
                                                    <telerik:RadComboBoxItem runat="server" Text="2011" Value="2011" />
                                                    <telerik:RadComboBoxItem runat="server" Text="2010" Value="2010" />
                                                    <telerik:RadComboBoxItem runat="server" Text="2009" Value="2009" />
                                                </Items>
                                            </telerik:RadComboBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Select Month</td>
                                        <td align="left">
                                            <telerik:RadComboBox ID="RadComboBoxMonth" Runat="server" Skin="Vista" 
                                                ValidationGroup="ProcessPayment">
                                                <Items>
                                                    <telerik:RadComboBoxItem runat="server" />
                                                    <telerik:RadComboBoxItem runat="server" Text="January" Value="1" />
                                                    <telerik:RadComboBoxItem runat="server" Text="February" Value="2" />
                                                    <telerik:RadComboBoxItem runat="server" Text="March" Value="3" />
                                                    <telerik:RadComboBoxItem runat="server" Text="April" Value="4" />
                                                    <telerik:RadComboBoxItem runat="server" Text="May" Value="5" />
                                                    <telerik:RadComboBoxItem runat="server" Text="June" Value="6" />
                                                    <telerik:RadComboBoxItem runat="server" Text="July" Value="7" />
                                                    <telerik:RadComboBoxItem runat="server" Text="August" Value="8" />
                                                    <telerik:RadComboBoxItem runat="server" Text="September" Value="9" />
                                                    <telerik:RadComboBoxItem runat="server" Text="October" Value="10" />
                                                    <telerik:RadComboBoxItem runat="server" Text="November" Value="11" />
                                                    <telerik:RadComboBoxItem runat="server" Text="December" Value="12" />
                                                </Items>
                                            </telerik:RadComboBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            &nbsp;</td>
                                        <td align="left">
                                            <telerik:RadButton ID="RadButtonProcessPayments" runat="server" Skin="Vista" 
                                                Text="Generate Schedule" onclick="RadButtonProcessPayments_Click" 
                                                ValidationGroup="ProcessPayment">
                                            </telerik:RadButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>                            
                        </td>
                    </tr>
                </table>                
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    </asp:Content>


