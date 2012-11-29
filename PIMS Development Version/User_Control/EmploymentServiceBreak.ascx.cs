using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;
using PSPITS.DAL;
using PSPITS.UIL;
using Telerik.Web.UI;
using Telerik.Charting;

public partial class User_Control_ServiceBreak : System.Web.UI.UserControl
{
    public static string _pensionID = "0";
    public static string _servicebreakID = "0";
    public int RebindGrid
    {
        get { RadGridServiceBreak.Rebind(); return 1; }
    }

    private void LoadComboBox()
    {

        //Load service break type comboBox
        RadComboBoxservicebreakType.DataSource = new PSPITSDO().GetServiceBreakType();
        RadComboBoxservicebreakType.DataTextField = PSPITS.COMMON.Constants.COL_LIST_SERVICEBREAKTYPE;
        RadComboBoxservicebreakType.DataValueField = PSPITS.COMMON.Constants.COL_LIST_SERVICEBREAKTYPEID;
        RadComboBoxservicebreakType.DataBind();

    }
    public string servicebreakType
    {
        get { return RadComboBoxservicebreakType.SelectedValue; }
        set { RadComboBoxservicebreakType.SelectedValue = value; }
    }
    public string pensionID
    {
        get { return _pensionID; }
        set { _pensionID = value; }
    }

    public string serviceBreakID
    {
        get { return _servicebreakID; }
        set { _servicebreakID = value; }
    }
    public DateTime? StartDate
    {
        get { return RadDatePickerStartDate.SelectedDate; }
        set { RadDatePickerStartDate.SelectedDate = value; }
    }
    public DateTime? EndDate
    {
        get { return RadDatePickerEndDate.SelectedDate; }
        set { RadDatePickerEndDate.SelectedDate = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //PSPITSDO _do = new PSPITSDO();
            //this.serviceBreakID = _do.PadCode(_do.GenServiceBreakID(), 9);
            this.pensionID = "0";
            LoadComboBox();

        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        GridTemplateColumn colDeleteServiceBreak = (GridTemplateColumn)RadGridServiceBreak.MasterTableView.GetColumn("columnRemove");
        colDeleteServiceBreak.ItemTemplate = new RadGridServiceBreakTemplate();
    }
    private void EmptyControl(Control ctrl)
    {

        if ((ctrl.GetType() == typeof(TextBox)))
        {
            ((TextBox)(ctrl)).Text = string.Empty;

        }
        else if ((ctrl.GetType() == typeof(RadComboBox)))
        {
            ((RadComboBox)(ctrl)).Text = string.Empty;
            ((RadComboBox)(ctrl)).SelectedIndex = -1;
            ((RadComboBox)(ctrl)).ClearSelection();
        }
        else if ((ctrl.GetType() == typeof(RadTextBox)))
        {
            ((RadTextBox)(ctrl)).Text = string.Empty;

        }

    }
    protected void RadButtonAddServiceBreak_Click(object sender, EventArgs e)
    {
        //Get handle of the Member
        PSPITSDO rdo = new PSPITSDO();
        MemberServiceBreak aPD = new MemberServiceBreak();
        aPD.pensionID = Int32.Parse(this.pensionID);
        aPD.whoCreated = "admin";
        aPD.dateCreated = DateTime.Now;
        aPD.serviceBreakID = rdo.GenServiceBreakID();
        aPD.serviceBreakType = Int32.Parse(this.servicebreakType);
        //
        //string doa = string.Format("{0}/{1}/{2}", this.startDay,this.startMonth, this.startYear);
        if (this.StartDate.HasValue)
            aPD.dateStart = this.StartDate.Value;
        //
        //string dob = string.Format("{0}/{1}/{2}", this.endDay, this.endMonth, this.endYear);
        if (this.EndDate.HasValue)
            aPD.dateEnd = this.EndDate.Value;
        //
        rdo.SaveMemberServiceBreak(aPD);
        RadGridServiceBreak.Rebind();
        //clear the controls
        EmptyControl(RadComboBoxservicebreakType);
        EmptyControl(RadDatePickerStartDate);
        EmptyControl(RadDatePickerEndDate);
    }
    protected void RadButtonAddServiceBreak_Load(object sender, EventArgs e)
    {

        RadAjaxManager radajaxmanager = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;


        RadGrid grid = (sender as RadButton).Parent.FindControl("RadGridServiceBreak") as RadGrid;
        //find the radtextbox and radcombo box
        //RadTextBox txtbox = (sender as Button).Parent.FindControl("RadTextBoxJobTitle") as RadTextBox;
        RadComboBox RadComboBoxservicebreakType = (sender as RadButton).Parent.FindControl("RadComboBoxservicebreakType") as RadComboBox;
        RadDatePicker RadDatePickerStartDate = (sender as RadButton).Parent.FindControl("RadDatePickerStartDate") as RadDatePicker;
        RadDatePicker RadDatePickerEndDate = (sender as RadButton).Parent.FindControl("RadDatePickerEndDate") as RadDatePicker;
        RadButton RadButtonAddServiceBreak = (sender as RadButton).Parent.FindControl("RadButtonAddServiceBreak") as RadButton;


        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonAddServiceBreak != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddServiceBreak, grid, radajaxloading);
            if (RadComboBoxservicebreakType != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddServiceBreak, RadComboBoxservicebreakType, null);
            if (RadDatePickerStartDate != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddServiceBreak, RadDatePickerStartDate, null);
            if (RadDatePickerEndDate != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddServiceBreak, RadDatePickerEndDate, null);
        }
    }
    protected void RadGridServiceBreak_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        //MemberServiceBreak mo=new MemberServiceBreak();
        //mo.pensionID=Int32.Parse(this.pensionID);
        //mo.serviceBreakID = Int32.Parse(this.serviceBreakID); 
        RadGridServiceBreak.DataSource = new PSPITSDO().GetServiceBreakbyPensionID(Int32.Parse(this.pensionID));
    }
}

public class RadGridServiceBreakTemplate : System.Web.UI.ITemplate
{

    public void InstantiateIn(System.Web.UI.Control container)
    {
        Button ButtonDelSB = new Button();
        ButtonDelSB.ID = "ButtonDelSB";
        ButtonDelSB.Text = "Remove";
        ButtonDelSB.Click += new EventHandler(RemoveServiceRecord_Click);
        ButtonDelSB.Load += new EventHandler(ButtonDelete_Load);
        container.Controls.Add(ButtonDelSB);

    }
    protected void RemoveServiceRecord_Click(object sender, EventArgs e)
    {
        PSPITSDO rdo = new PSPITSDO();

        MemberServiceBreak oL = new MemberServiceBreak();

        RadGrid grid = (sender as Button).Parent.Parent.Parent.Parent.Parent as RadGrid;
        GridTableView gridTable = (sender as Button).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as Button).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        oL.pensionID = int.Parse(griddataItem["pensionID"].Text);
        oL.serviceBreakID = int.Parse(griddataItem["servicebreakID"].Text);
        int i = rdo.DeleteMemberServiceBreak(oL);
        grid.Rebind();

    }
    protected void ButtonDelete_Load(object sender, EventArgs e)
    {
        RadAjaxManager radajaxmanager = (sender as Button).Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.FindControl("RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = (sender as Button).Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.FindControl("RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        Button btnRmove = (sender as Button).FindControl("ButtonDelSB") as Button;

        RadGrid grid = (sender as Button).Parent.Parent.Parent.Parent.Parent as RadGrid;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (btnRmove != null) && (grid != null))
        {
            radajaxmanager.AjaxSettings.AddAjaxSetting(btnRmove, grid, radajaxloading);
        }

    }
}