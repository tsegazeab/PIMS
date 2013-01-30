<%@ Page Title="NPF Pensioners - PIMS" Language="C#" MasterPageFile="~/MasterPageNpfBenefit.master" AutoEventWireup="true" CodeFile="NpfPensioners.aspx.cs" Inherits="NPF_Benefits_NpfPensioners" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" cellspacing="0" width="100%">
        <tr>
            <td align="left" style="font-family: Arial; font-size: large; font-weight: bold;" width="100%">
                            
                NPF Pensioners</td>
        </tr>
        <tr>
            <td>
                <hr /></td>
        </tr>
        <tr>
            <td width="100%" align="center">
                <div style="max-width: 1200px; overflow: auto;">
                    <dx:aspxgridview ID="ASPxGridViewNfpRetiree" runat="server" 
                        DataSourceID="EntityDataSourceNpfRetiree" Theme="Office2003Blue" 
                        AutoGenerateColumns="False" KeyFieldName="NpfPensionerId">
                        <Columns>
                            <dx:GridViewCommandColumn VisibleIndex="0">
                                <EditButton Visible="True">
                                </EditButton>
                                <NewButton Visible="True">
                                </NewButton>
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="NpfPensionerId" ReadOnly="True" 
                                Visible="False" VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="IndexNumber" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Surname" VisibleIndex="3">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="OtherNames" VisibleIndex="4">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="BankName" VisibleIndex="5">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="BranchName" VisibleIndex="6">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="BankAddress" VisibleIndex="7">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="AccountNumber" VisibleIndex="8">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataComboBoxColumn FieldName="WorkState" VisibleIndex="9">
                                <PropertiesComboBox DataSourceID="EntityDataSourceStates" TextField="State" 
                                    ValueField="stateID">
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataTextColumn Caption="SUM" FieldName="Sum" VisibleIndex="10">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="PENSION" FieldName="Pension" 
                                VisibleIndex="11">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="ADD 1" FieldName="Addition1" 
                                VisibleIndex="12">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="ADD 2" FieldName="Addition2" 
                                VisibleIndex="13">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="ADD 3" FieldName="Addition3" 
                                VisibleIndex="14">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="ADD 4" FieldName="Addition4" 
                                VisibleIndex="15">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="DED 1" FieldName="Deduction1" 
                                VisibleIndex="16">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="DED 2" FieldName="Deduction2" 
                                VisibleIndex="17">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="DED 3" FieldName="Deduction3" 
                                VisibleIndex="18">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="DED 4" FieldName="Deduction4" 
                                VisibleIndex="19">
                                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0">
                                </PropertiesTextEdit>
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <SettingsBehavior ConfirmDelete="True" />
                        <settingspager pagesize="50">
                        </settingspager>
                        <SettingsEditing Mode="Inline" NewItemRowPosition="Bottom" />
                        <settings showfilterrow="True" showgrouppanel="True" />
                    </dx:aspxgridview>
                    <asp:EntityDataSource ID="EntityDataSourceNpfRetiree" runat="server" 
                        ConnectionString="name=PSPITSEntities" DefaultContainerName="PSPITSEntities" 
                        EnableFlattening="False" EntitySetName="NpfPensioners" EnableDelete="True" 
                        EnableInsert="True" EnableUpdate="True">
                    </asp:EntityDataSource>
                    &nbsp;
                    <asp:EntityDataSource ID="EntityDataSourceStates" runat="server" 
                        ConnectionString="name=PSPITSEntities" DefaultContainerName="PSPITSEntities" 
                        EnableFlattening="False" EntitySetName="vwlistStates" 
                        Select="it.[stateID], it.[State]">
                    </asp:EntityDataSource>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

