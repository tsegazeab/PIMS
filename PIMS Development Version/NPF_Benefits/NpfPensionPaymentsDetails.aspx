<%@ Page Title="NPF Pensioners - PIMS" Language="C#" MasterPageFile="~/MasterPageNpfBenefit.master" AutoEventWireup="true" CodeFile="NpfPensionPaymentsDetails.aspx.cs" Inherits="NPF_Benefits_NpfPensionPaymentsDetails" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" cellspacing="0" width="100%">
        <tr>
            <td align="left" style="font-family: Arial; font-size: large; font-weight: bold;">
                            
                NPF Pensioners Payments</td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        <tr>
            <td style="overflow: auto;">
                <dx:aspxgridview ID="ASPxGridViewNfpRetiree" runat="server" 
                    DataSourceID="ObjectDataSourcePaymentList" Theme="Office2003Blue" 
                    AutoGenerateColumns="False">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="NpfPensionerId" VisibleIndex="0" 
                            Visible="False" ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="NpfPensionerBenefitId" VisibleIndex="1" 
                            Visible="False" ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="IndexNumber" VisibleIndex="2" 
                            ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Surname" VisibleIndex="3" 
                            ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OtherNames" VisibleIndex="4" 
                            ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="BankName" VisibleIndex="5" 
                            ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="BankAddress" VisibleIndex="6" 
                            ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="BranchName" VisibleIndex="7" 
                            ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="AccountNumber" VisibleIndex="8" 
                            ShowInCustomizationForm="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Sum" VisibleIndex="9" 
                            ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Pension" VisibleIndex="10" 
                            ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ADD 1" FieldName="Addition1" 
                            VisibleIndex="11" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ADD 2" FieldName="Addition2" 
                            VisibleIndex="12" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ADD 3" FieldName="Addition3" 
                            VisibleIndex="13" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ADD 4" FieldName="Addition4" 
                            VisibleIndex="14" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="DED 1" FieldName="Deduction1" 
                            VisibleIndex="15" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="DED 2" FieldName="Deduction2" 
                            VisibleIndex="16" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="DED 3" FieldName="Deduction3" 
                            VisibleIndex="17" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="DED 4" FieldName="Deduction4" 
                            VisibleIndex="18" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="NetPension" VisibleIndex="19" 
                            ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Arrears" VisibleIndex="20" 
                            ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="TotalPension" VisibleIndex="21" 
                            ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="PensionPaid" VisibleIndex="22" 
                            ShowInCustomizationForm="True" Visible="False">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn FieldName="OutstandingBalance" VisibleIndex="23" 
                            ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="PensionStopped" VisibleIndex="26" 
                            ShowInCustomizationForm="True" Visible="False">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn Caption="Approve" UnboundType="Boolean" 
                            VisibleIndex="24">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn Caption="Stop Pension" UnboundType="Boolean" 
                            VisibleIndex="25">
                        </dx:GridViewDataCheckColumn>
                    </Columns>
                    <SettingsBehavior ConfirmDelete="True" />
                    <settingspager pagesize="50">
                    </settingspager>
                    <settings showfilterrow="True" />
                </dx:aspxgridview>
                <asp:ObjectDataSource ID="ObjectDataSourcePaymentList" runat="server" 
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

