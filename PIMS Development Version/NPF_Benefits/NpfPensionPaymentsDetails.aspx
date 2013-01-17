<%@ Page Title="NPF Pensioners - PIMS" Language="C#" MasterPageFile="~/MasterPageNpfBenefit.master" AutoEventWireup="true" CodeFile="NpfPensionPaymentsDetails.aspx.cs" Inherits="NPF_Benefits_NpfPensionPaymentsDetails" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" cellspacing="0" width="100%">
        <tr>
            <td align="left" style="font-family: Arial; font-size: large; font-weight: bold;">
                            
                NPF Pensioners</td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        <tr>
            <td style="overflow: auto;">
                <dx:aspxgridview ID="ASPxGridViewNfpRetiree" runat="server" 
                    DataSourceID="ObjectDataSource1" Theme="Office2003Blue" 
                    AutoGenerateColumns="False">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="NpfPensionerBenefitId" VisibleIndex="0">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="NpfPensionerId" VisibleIndex="1">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Month" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Year" VisibleIndex="3">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="NetPension" VisibleIndex="4">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Arrears" VisibleIndex="5">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="TotalPension" VisibleIndex="6">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="PensionPaid" VisibleIndex="7">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn FieldName="OutstandingBalance" VisibleIndex="8">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="PensionStopped" VisibleIndex="9">
                        </dx:GridViewDataCheckColumn>
                    </Columns>
                    <SettingsBehavior ConfirmDelete="True" />
                    <settingspager pagesize="50">
                    </settingspager>
                    <settings showfilterrow="True" />
                </dx:aspxgridview>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetMonthlyPaymentList" 
                    TypeName="PSPITS.DAL.DATA.MemberBenefits.NpfPensionerService">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="2013" Name="year" 
                            SessionField="SelectedYear" Type="Int32" />
                        <asp:SessionParameter DefaultValue="1" Name="month" 
                            SessionField="SelectedMonth" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                &nbsp;
                </td>
        </tr>
    </table>
</asp:Content>

