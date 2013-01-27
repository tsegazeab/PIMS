using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Telerik.Web;
using PSPITS.UIL;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;

public partial class User_Control_MemberTextSearch : System.Web.UI.UserControl
{
    Boolean boolPara1, boolPara2, boolCriteria1, boolCriteria2, boolAndOr;
    string Where = string.Empty;

   
    public string Criteria1
    {
        get { return DropDownListSearchCriteria1.SelectedValue.Trim(); } 

    }
    public string Criteria2
    {
        get { return DropDownListSearchCriteria2.SelectedValue.Trim(); }

    }
    public string Value1
    {
        get { return RadTextBoxSearchValue1.Text.Trim(); }

    }
    public string Value2
    {
        get { return RadTextBoxSearchValue2.Text.Trim(); }

    }
 

    protected void Page_Load(object sender, EventArgs e)
    {
        boolAndOr = boolCriteria1 = boolCriteria2 = boolPara1 = boolPara2 = false;

        
        
    }

    protected void RadButtonSearch_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid RadGridBeneficiary = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridMember") as RadGrid;
        RadTextBox RadTextBoxSearchValue1 = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxSearchValue1") as RadTextBox;
        RadTextBox RadTextBoxSearchValue2 = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxSearchValue2") as RadTextBox;
        DropDownList DropDownListSearchParameter1 = utl.FindControlToRootOnly((sender as RadButton).Parent, "DropDownListSearchParameter1") as DropDownList;
        DropDownList DropDownListSearchParameter2 = utl.FindControlToRootOnly((sender as RadButton).Parent, "DropDownListSearchParameter2") as DropDownList;
        DropDownList DropDownListSearchCriteria1 = utl.FindControlToRootOnly((sender as RadButton).Parent, "DropDownListSearchCriteria1") as DropDownList;
        DropDownList DropDownListSearchCriteria2 = utl.FindControlToRootOnly((sender as RadButton).Parent, "DropDownListSearchCriteria2") as DropDownList;
        //
        RadButton RadButtonSearch = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonSearch") as RadButton;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonSearch != null))
        {
            //now check if the various combo boxes have been found 
            if (RadGridBeneficiary != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, RadGridBeneficiary, radajaxloading);
            if (RadTextBoxSearchValue1 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, RadTextBoxSearchValue1, null);
            if (RadTextBoxSearchValue2 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, RadTextBoxSearchValue2, null);
            if (DropDownListSearchParameter1 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, DropDownListSearchParameter1, null);
            if (DropDownListSearchParameter2 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, DropDownListSearchParameter2, null);
            if (DropDownListSearchCriteria1 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, DropDownListSearchCriteria1, null);
            if (DropDownListSearchCriteria2 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSearch, DropDownListSearchCriteria2, null);
           
        }  
    }
    protected void Page_Init(object sender, EventArgs e)
    {

        //
        GridTemplateColumn colEditMember = (GridTemplateColumn)RadGridMember.MasterTableView.GetColumn("columnEdit");
        colEditMember.ItemTemplate = new RadGridMemberTextSearchTemplate();     

    }
    protected void DropDownListBoxAndOr_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        if (DropDownListBoxAndOr.SelectedIndex >= 1) boolAndOr = true; else boolAndOr = false;
    }
    protected void DropDownListSearchParameter1_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        if (DropDownListSearchCriteria1.SelectedIndex >= 1) boolPara1 = true; else boolPara1 = false;
    }
    protected void DropDownListSearchCriteria1_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        if (DropDownListSearchCriteria1.SelectedIndex >= 1) boolCriteria1 = true; else boolCriteria1 = false;
    }
    protected void DropDownListSearchParameter2_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        if (DropDownListSearchParameter2.SelectedIndex >= 1) boolPara2 = true; else boolPara2 = false;
    }
    protected void DropDownListSearchCriteria2_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        if (DropDownListSearchCriteria2.SelectedIndex >= 1) boolCriteria2 = true; else boolCriteria2 = false;
    }
    protected void RadButtonSearch_Click(object sender, EventArgs e)
    {
        Where = string.Format(" WHERE {0}{1}'{2}'", this.FirstLastName1.Trim(), " LIKE ", this.SearchCriteria1.Trim());
        if (boolCriteria1 && boolPara1)
        {
            //firstName (or lastName) Like 'xxx%' or '%xxx' or '%xxx%'
            Where = string.Format(" WHERE {0}{1}'{2}'", this.FirstLastName1.Trim(), " LIKE ", this.SearchCriteria1.Trim());
        }
        if (boolAndOr && boolPara2 && boolCriteria2 && (boolCriteria1 && boolPara1))
        {
            Where += string.Format("{0}{1}{2}'{3} '", this.AndOr.Trim(), this.FirstLastName2.Trim(), " LIKE ", this.SearchCriteria2.Trim());
        }
        RadGridMember.Rebind();
    }
    private string FirstLastName1
    {
        get
        {
            string name = string.Empty;
            if (DropDownListSearchParameter1.SelectedValue.Contains("1")) name = "firstName";
            else if (DropDownListSearchParameter1.SelectedValue.Contains("2")) name = "lastName";
            return name; 
        }
    
    }
    private string FirstLastName2
    {
        get
        {
            string name = string.Empty;
            if (DropDownListSearchParameter2.SelectedValue.Contains("1")) name = "firstName";
            else if (DropDownListSearchParameter2.SelectedValue.Contains("2")) name = "lastName";
            return name;
        }

    }
    private string SearchCriteria1
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
    private string SearchCriteria2
    {
        get
        {
            string name = string.Empty;
            if (DropDownListSearchCriteria1.SelectedValue.Contains("1")) name = string.Format("{0}{1}", this.SearchValue2, "%");
            else if (DropDownListSearchCriteria1.SelectedValue.Contains("2")) name = string.Format("{0}{1}{2}", "%", this.SearchValue2, "%");
            else if (DropDownListSearchCriteria1.SelectedValue.Contains("3")) name = string.Format("{0}{1}", "%", this.SearchValue2);
            return name;
        }
    }
    private string AndOr
    {
        get
        {
            string name = string.Empty;
            if (DropDownListBoxAndOr.SelectedValue.Contains("1")) name = string.Format("{0}", "AND");
            else if (DropDownListBoxAndOr.SelectedValue.Contains("2")) name = string.Format("{0}", "OR");           
            return name;
        }
    }
    private string SearchValue1
    {
        get { return RadTextBoxSearchValue1.Text.Trim(); }    
    }
    private string SearchValue2
    {
        get { return RadTextBoxSearchValue2.Text.Trim(); }
    }
    protected void RadGridMember_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        RadGridMember.DataSource = new PSPITSDO().GetMemberByWhereClause(Where);
    }
    protected void RadButtonClose_Click(object sender, EventArgs e)
    {

    }
}
public class RadGridMemberTextSearchTemplate : System.Web.UI.ITemplate
{

    public void InstantiateIn(System.Web.UI.Control container)
    {

        //Edit button
        RadButton ButtonEdit = new RadButton();
        ButtonEdit.ID = "ButtonEdit";
        ButtonEdit.Text = "Edit";
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
       
        //fire the Edit clicked event
        MemberToEditSession.MemberToEdit.Member = _bArgs;

    }

 
}