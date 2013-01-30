<%@ Page Title="Member Payment Schedule - PIMS" Language="C#" MasterPageFile="~/MasterPagePayment.master" AutoEventWireup="true" CodeFile="PaymentSchedule.aspx.cs" Inherits="Payment_PaymentSchedule" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

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
                                
                <rsweb:ReportViewer ID="ReportViewerPSchedule" runat="server" Width="100%" 
                    Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
                    <LocalReport ReportPath="Report\MemberPaymentSchedule.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="obsPayments" Name="dsPayment" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                                
                <asp:ObjectDataSource ID="obsPayments" runat="server" 
                    SelectMethod="GeneratePaymentSchedule" 
                    TypeName="PSPITS.DAL.DATA.MemberPayments.MemberPaymentService">
                    <SelectParameters>
                        <asp:SessionParameter Name="month" SessionField="Month" Type="Int32" />
                        <asp:SessionParameter Name="year" SessionField="Year" Type="Int32" />
                        <asp:Parameter Name="mdaId" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                                
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    </asp:Content>


