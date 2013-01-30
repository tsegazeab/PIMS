<%@ Page Title="NPF Pensioners Payment Details - PIMS" Language="C#" MasterPageFile="~/MasterPageNpfBenefit.master" AutoEventWireup="true" CodeFile="NpfPensionPaymentsDetails.aspx.cs" Inherits="NPF_Benefits_NpfPensionPaymentsDetails" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" cellspacing="0">
        <tr>
            <td align="left" style="font-family: Arial; font-size: large; font-weight: bold;">
                            
                NPF Pensioners Payment Schedule</td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        <tr>
            <td style="overflow: auto;">
                <dx:aspxgridview ID="ASPxGridViewNfpRetiree" runat="server" ClientInstanceName="grid"
                    DataSourceID="ObjectDataSourcePaymentList" Theme="Office2003Blue" 
                    AutoGenerateColumns="False" 
                    onrowcommand="ASPxGridViewNfpRetiree_RowCommand" 
                    onselectionchanged="ASPxGridViewNfpRetiree_SelectionChanged" 
                    EnableCallBacks="False">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="NpfPensionerId" VisibleIndex="0" 
                            Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="NpfPensionerBenefitId" VisibleIndex="1" 
                            Visible="False">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="IndexNumber" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Surname" VisibleIndex="3">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="OtherNames" VisibleIndex="4">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="BankName" VisibleIndex="5">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="BankAddress" VisibleIndex="6">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="BranchName" VisibleIndex="7">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="AccountNumber" VisibleIndex="8">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Sum" VisibleIndex="9">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Pension" VisibleIndex="10">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ADD 1" FieldName="Addition1" 
                            VisibleIndex="11">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ADD 2" FieldName="Addition2" 
                            VisibleIndex="12">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ADD 3" FieldName="Addition3" 
                            VisibleIndex="13">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ADD 4" FieldName="Addition4" 
                            VisibleIndex="14">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="DED 1" FieldName="Deduction1" 
                            VisibleIndex="15">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="DED 2" FieldName="Deduction2" 
                            VisibleIndex="16">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="DED 3" FieldName="Deduction3" 
                            VisibleIndex="17">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="DED 4" FieldName="Deduction4" 
                            VisibleIndex="18">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="NetPension" VisibleIndex="19">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Arrears" VisibleIndex="20">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="TotalPension" VisibleIndex="21">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="PensionPaid" VisibleIndex="22" 
                            Visible="False">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn FieldName="OutstandingBalance" VisibleIndex="23">
                            <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                            </PropertiesTextEdit>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="PensionStopped" VisibleIndex="25" 
                            Visible="False">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewCommandColumn Caption="Select" ShowSelectCheckbox="True" 
                            VisibleIndex="24">
                            <ClearFilterButton Visible="True">
                            </ClearFilterButton>
                        </dx:GridViewCommandColumn>
                    </Columns>
                    <SettingsBehavior ConfirmDelete="True" ProcessFocusedRowChangedOnServer="True" 
                        ProcessSelectionChangedOnServer="True" />
                    <settingspager pagesize="50">
                    </settingspager>
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
        <tr>
            <td style="overflow: auto;" align="left">
                            <dx:ASPxButton ID="ASPxButtonApprove" runat="server" UseSubmitBehavior="false" AutoPostBack="true"
                                Text="Approve Payment Schedule" Theme="Office2003Blue" 
                                onclick="ASPxButtonApprove_Click" Width="200px">                                
                            </dx:ASPxButton>
                </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
</asp:Content>


