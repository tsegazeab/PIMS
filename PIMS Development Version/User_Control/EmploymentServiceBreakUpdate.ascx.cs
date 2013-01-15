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

public partial class User_Control_ServiceBreakUpdate : System.Web.UI.UserControl
{
    public static string _pensionID = "0";
    public static string _servicebreakID = "0";
    private static bool _isUpdate = false;

    protected bool IsUpdate
    {
        set { _isUpdate = value; }
        get { return _isUpdate; }

    }
    public int RebindGrid
    {
        get { RadGridServiceBreak.Rebind(); this.IsUpdate = false; return 1; }
    }

    private void LoadComboBox()
    {
        //Load service break type comboBox
        RadComboBoxservicebreakType.DataSource = new PSPITSDO().GetServiceBreakType();
        RadComboBoxservicebreakType.DataTextField = PSPITS.COMMON.Constants.COL_LIST_SERVICEBREAKTYPE;
        RadComboBoxservicebreakType.DataValueField = PSPITS.COMMON.Constants.COL_LIST_SERVICEBREAKTYPEID;
        RadComboBoxservicebreakType.DataBind();
        if (this.pensionID == "0")
            RadButtonAddServiceBreak.Enabled = false;
        else
            RadButtonAddServiceBreak.Enabled = true;
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
        get
        {
            return RadDatePickerStartDate.SelectedDate;
        }
        set
        {
            RadDatePickerStartDate.SelectedDate = value;
        }
    }
    public DateTime? EndDate
    {
        get
        {
            return RadDatePickerEndDate.SelectedDate;
        }
        set
        {
            RadDatePickerEndDate.SelectedDate = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PSPITSDO _do = new PSPITSDO();
            this.serviceBreakID = _do.PadCode(_do.GenServiceBreakID(), 9);
            //this.pensionID = "0";
            LoadComboBox();

        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        GridTemplateColumn colEditServiceBreak = (GridTemplateColumn)RadGridServiceBreak.MasterTableView.GetColumn("columnEdit");
        colEditServiceBreak.ItemTemplate = new RadGridServiceBreakUpdateEditTemplate();
        (ServiceBreakToEditSession.ServiceBreakToEdit = new ServiceBreakToEdit()).OnServiceBreakEditClicked += new ServiceBreakEventHandler(ServiceBreakSelectedFromGrid);
    }

    protected void RadGridServiceBreak_DeleteCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
    {
        ServiceBreakEventArgs _bArgs = new ServiceBreakEventArgs();
        RadGrid grid = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridServiceBreak") as RadGrid;
        GridTableView gridTable = (sender as RadButton).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as RadButton).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        _bArgs.pensionID = griddataItem["pensionID"].Text.Trim();
        _bArgs.servicebreakID = griddataItem["servicebreakID"].Text.Trim();
    }
    protected void ServiceBreakSelectedFromGrid(object sender, ServiceBreakEventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();

        this.LoadServiceBreak(_do.GetServiceBreakbyPensionIDandServiceBreakID(int.Parse(e.pensionID), int.Parse(e.servicebreakID)));
        this.IsUpdate = true;
    }

    protected void ServiceBreakDeletedFromGrid(object sender, ServiceBreakEventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();
        MemberServiceBreak msb = _do.GetServiceBreakbyPensionIDandServiceBreakID(Int32.Parse(e.pensionID), Int32.Parse(e.servicebreakID));
        _do.DeleteMemberServiceBreak(msb);
        RadGridServiceBreak.Rebind();
    }

    public void LoadServiceBreak(MemberServiceBreak md)
    {
        this.pensionID = string.Format("{0}", md.pensionID);
        this.serviceBreakID = string.Format("{0}", md.serviceBreakID);
        this.servicebreakType = string.Format("{0}", md.serviceBreakType);
        this.StartDate = md.dateStart;
        this.EndDate = md.dateEnd;
    }

    protected void RadButtonAddServiceBreak_Click(object sender, EventArgs e)
    {
        PSPITSDO rdo = new PSPITSDO();
        MemberServiceBreak aPD = new MemberServiceBreak();
        if (this.IsUpdate)
        {
            aPD.serviceBreakID = Int32.Parse(this.serviceBreakID);
            aPD.whoUpdated = Page.User.Identity.Name;
            aPD.dateUpdated = DateTime.Now;
        }
        else
        {
            aPD.serviceBreakID = int.Parse(this.serviceBreakID = string.Format("{0}", rdo.GenServiceBreakID()));
            aPD.whoCreated = Page.User.Identity.Name;
            aPD.dateCreated = DateTime.Now;
        }
        this.IsUpdate = false;
        aPD.pensionID = Int32.Parse(this.pensionID);
        aPD.serviceBreakType = Int32.Parse(this.servicebreakType);
        if (this.StartDate.HasValue)
            aPD.dateStart = this.StartDate.Value;
        if (this.EndDate.HasValue)
            aPD.dateEnd = this.EndDate.Value;
        //
        rdo.SaveMemberServiceBreak(aPD);
        RadGridServiceBreak.Rebind();
        ClearControl();
    }
    public void ClearControl()
    {
        Utility.EmptyControl(RadComboBoxservicebreakType);
        Utility.EmptyControl(RadDatePickerStartDate);
        Utility.EmptyControl(RadDatePickerEndDate);
    }
    protected void RadButtonAddServiceBreak_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        RadGrid grid = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridServiceBreak") as RadGrid;
        //THE ADD BUTTON

        RadButton RadButtonAddServiceBreak = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonAddServiceBreak") as RadButton;
        //COMBO BOXES CONTROLS
        RadComboBox RadComboBoxservicebreakType = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxservicebreakType") as RadComboBox;
        RadDatePicker RadDatePickerStartDate = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerStartDate") as RadDatePicker;
        RadDatePicker RadDatePickerEndDate = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerEndDate") as RadDatePicker;
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

public class RadGridServiceBreakUpdateEditTemplate : System.Web.UI.ITemplate
{

    public void InstantiateIn(System.Web.UI.Control container)
    {
        //Edit button
        RadButton ButtonEdit = new RadButton();
        ButtonEdit.ID = "ButtonEdit";
        ButtonEdit.Text = "Edit";
        ButtonEdit.Click += new EventHandler(ButtonEdit_Click);
        ButtonEdit.Load += new EventHandler(ButtonEdit_Load);
        container.Controls.Add(ButtonEdit);
    }

    protected void ButtonEdit_Click(object sender, EventArgs e)
    {
        ServiceBreakEventArgs _bArgs = new ServiceBreakEventArgs();
        RadGrid grid = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridServiceBreak") as RadGrid;

        GridTableView gridTable = (sender as RadButton).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as RadButton).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        _bArgs.pensionID = griddataItem["pensionID"].Text.Trim();
        _bArgs.servicebreakID = griddataItem["servicebreakID"].Text.Trim();
        //Fire the event!
        ServiceBreakToEditSession.ServiceBreakToEdit.ServiceBreak = _bArgs;
    }

    protected void ButtonEdit_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadButton btnEdit = (sender as RadButton).FindControl("ButtonEdit") as RadButton;
        RadGrid grid = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridServiceBreak") as RadGrid;
        //COMBO BOXES CONTROLS
        RadComboBox RadComboBoxservicebreakType = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxservicebreakType") as RadComboBox;
        RadDatePicker RadDatePickerStartDate = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerStartDate") as RadDatePicker;
        RadDatePicker RadDatePickerEndDate = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerEndDate") as RadDatePicker;

        if ((radajaxmanager != null) && (radajaxloading != null) && (btnEdit != null) && (grid != null))
        {
            radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, grid, radajaxloading);
            if (RadComboBoxservicebreakType != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadComboBoxservicebreakType, null);
            if (RadDatePickerStartDate != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadDatePickerStartDate, null);
            if (RadDatePickerEndDate != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadDatePickerEndDate, null);
        }
    }
}