﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.UIL;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;
using Telerik.Web.UI;
public partial class User_Control_MemberSearch : System.Web.UI.UserControl
{
    Boolean boolID = false;
    string Where = string.Empty;

    public string SearchValue
    {
        get { return RadTextBoxSearchValue.Text.Trim(); }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadButtonSearch_Load(object sender, EventArgs e)
    {
         Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid RadGridMember = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridMember") as RadGrid;
        RadMaskedTextBox RadMaskedTextBoxSearchValue = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadMaskedTextBoxSearchValue") as RadMaskedTextBox;
        DropDownList DropDownListSearchParameter = utl.FindControlToRootOnly((sender as RadButton).Parent, "DropDownListSearchParameter") as DropDownList;
        //
        RadButton RadButtonSearch = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonSearch") as RadButton;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonSearch != null))
        {
            //now check if the various combo boxes have been found 
            if (RadGridMember != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, RadGridMember, radajaxloading);
            if (RadMaskedTextBoxSearchValue != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, RadMaskedTextBoxSearchValue, null);
            if (DropDownListSearchParameter != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, DropDownListSearchParameter, null);
           
        }  
    }
    private string IDSearchParameter
    {
        get
        {
            string name = string.Empty;
            if (DropDownListSearchParameter.SelectedValue.Contains("1")) name = "schemeID";
            else if (DropDownListSearchParameter.SelectedValue.Contains("2")) name = "nationalID";
            else if (DropDownListSearchParameter.SelectedValue.Contains("3")) name = "payrollNumber";
            else if (DropDownListSearchParameter.SelectedValue.Contains("4")) name = "establishmentNumber";
            return name;
        }
    }

    private string TextSearchParameter
    {
        get
        {
            string name = string.Empty;
            if (DropDownListSearchParameter1.SelectedValue.Contains("1")) name = "firstName";
            else if (DropDownListSearchParameter1.SelectedValue.Contains("2")) name = "lastName";
            return name; 
        }
    }

    private string SearchCriteria
    {
        get
        {
            string name = string.Empty;
            if (DropDownListSearchCriteria1.SelectedValue.Contains("1")) name = string.Format("{0}{1}", this.SearchValue1, "%");
            else if (DropDownListSearchCriteria1.SelectedValue.Contains("2")) name = string.Format("{0}{1}{2}", "%", this.SearchValue1, "%");
            else if (DropDownListSearchCriteria1.SelectedValue.Contains("3")) name = string.Format("{0}{1}", "%", this.SearchValue1);
            return name;
        }
    }

    private string SearchValue1
    {
        get { return RadTextBoxSearchValue1.Text.Trim(); }
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        //
        GridTemplateColumn colEditMember = (GridTemplateColumn)RadGridMember.MasterTableView.GetColumn("columnEdit");
        colEditMember.ItemTemplate = new RadGridMemberIDSearchTemplate();
    }
    protected void RadButtonSearch_Click(object sender, EventArgs e)
    {
        if (this.IDSearchParameter.Trim().Length > 0 && this.SearchValue.Trim().Length > 2)
        {
            //firstName (or lastName) Like 'xxx%' or '%xxx' or '%xxx%'
            Where = string.Format(" WHERE {0}{1}'{2}'", this.IDSearchParameter.Trim(), " = ", this.SearchValue.Trim());
            RadGridMember.Rebind();
        }
        else if (this.TextSearchParameter.Length > 0 && this.SearchCriteria.Length > 0 && this.SearchValue1.Length > 2)
        {
            Where = string.Format(" WHERE {0}{1}'{2}'", this.TextSearchParameter.Trim(), " LIKE ", this.SearchCriteria);            
            RadGridMember.Rebind();
        }
    }
  
    protected void RadGridMember_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        RadGridMember.DataSource = new PSPITSDO().GetMemberByWhereClause(Where);
    }
    protected void DropDownListSearchParameter_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownListSearchParameter.SelectedIndex >= 1) boolID = true; else boolID = false;
    }
}
public class RadGridMemberIDSearchTemplate : System.Web.UI.ITemplate
{
    public void InstantiateIn(System.Web.UI.Control container)
    {
        //Edit button
        RadButton ButtonEdit = new RadButton();
        ButtonEdit.ID = "ButtonEdit";
        ButtonEdit.Text = "Select";
        ButtonEdit.Click += new EventHandler(ButtonEdit_Click);
        //ButtonEdit.Load += new EventHandler(ButtonEdit_Load);
        container.Controls.Add(ButtonEdit);
    }

    protected void ButtonEdit_Click(object sender, EventArgs e)
    {
        MemberEventArgs _bArgs = new MemberEventArgs();
        RadGrid grid = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridMember") as RadGrid;

        GridTableView gridTable = (sender as RadButton).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as RadButton).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        _bArgs.pensionID = griddataItem["pensionID"].Text.Trim();
         
        //fire the Edit clicked event only if there is a subscriber to the event
        if (MemberToEditSession.MemberToEdit !=null)   MemberToEditSession.MemberToEdit.Member = _bArgs;
        grid.Page.Response.Redirect(grid.Page.Request.RawUrl);       
                
    }
}
