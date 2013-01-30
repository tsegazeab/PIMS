using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using System.Data;
using System.Data.SqlClient;
using PSPITS.UIL;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;
public partial class User_Control_Contribution_RSSAGENCY_AgencyActualContribution : System.Web.UI.UserControl
{
    private static DataTable _dt;
    public void RebindGrid()
    {
        RadGridAgencyContribution.Rebind();
    }
    public DataTable DataSource
    {
        set { _dt = value; }
        get { return _dt; }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        GridTemplateColumn colEditMemberContribution = (GridTemplateColumn)RadGridAgencyContribution.MasterTableView.GetColumn("columnEdit");
        colEditMemberContribution.ItemTemplate = new RadGridActualContributionTemplate();
        (ActualContributionToEditSession.ActualContributionToEdit = new ActualContributionToEdit()).OnActualContributionEditClicked += new ActualContributionEventHandler(AgencyContributionSelectedFromGrid);
 
    }
    protected void AgencyContributionSelectedFromGrid(object sender, ActualContributionEventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();
        string pr = string.Format("{0}{1}", e.month, e.year);
        //this.LoadActualContribution(_do.GetMDA_ActualContributionHistoryByIDandPeriod(int.Parse(e.mdaID), int.Parse(pr), int.Parse(pr)));
        this.LoadActualContribution(_do.GetActualContributionByPeriodandID(int.Parse(e.mdaID), int.Parse(pr), int.Parse(pr)));

    }
    public string month
    {
        get { return RadTextBoxMonth.Text; }
        set { RadTextBoxMonth.Text = value; }
    }
    public string year
    {
        get { return RadTextBoxYear.Text; }
        set { RadTextBoxYear.Text = value; }
    }
    public string mdaID { get; set;}
   
    public string mdaName
    {
        get { return PSPITSModuleSession.mdaName; }
        set { RadTextBoxMDA.Text = value; } 
        
    }
    public DateTime DateRemitted { get { return RadDatePickerDateRemitted.SelectedDate.Value.Date; }
        set { RadDatePickerDateRemitted.SelectedDate = value; }

    }
    public string employeeActual
    {
        get { return RadNumericTextBoxEmployeeActual.Text; }
        set { RadNumericTextBoxEmployeeActual.Text = value; } 
    }
    public string employerActual 
    {
    get{return RadNumericTextBoxEmployerActual.Text; }
        set { RadNumericTextBoxEmployerActual.Text = value;} 
    }
    protected void LoadActualContribution(PSPITS.MODEL.GetMDA_ActualContributionHistoryByPeriodAndID_Result ms)
    {
        this.month = string.Format("{0}", ms.month);
        this.year = string.Format("{0}", ms.year);
        if (ms.dateRemitted == null) { ;} else this.DateRemitted = ms.dateRemitted.Value.Date;
        this.employeeActual = string.Format("{0}", ms.employeeDeductionActual);
        this.employerActual = string.Format("{0}", ms.employerDeductionActual);
        this.mdaID = string.Format("{0}", ms.mdaID);
        this.mdaName = string.Format("{0}", ms.mdaID); ;

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.DataSource = new PSPITS.DAL.DATA.PSPITSDO().GetMDA_ActualContributionHistoryByID(int.Parse(PSPITSModuleSession.mdaID));
        }
    }
    protected void RadGridAgencyContribution_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
    {
        this.RadGridAgencyContribution.MasterTableView.AllowMultiColumnSorting = true;
        GridSortExpression expressionYear = new GridSortExpression();
        GridSortExpression expressionMonth = new GridSortExpression();
        expressionYear.FieldName = "year";
        expressionYear.SetSortOrder("Ascending");
        this.RadGridAgencyContribution.MasterTableView.SortExpressions.AddSortExpression(expressionYear);
        expressionMonth.FieldName = "month";
        expressionMonth.SetSortOrder("Ascending");
        this.RadGridAgencyContribution.MasterTableView.SortExpressions.AddSortExpression(expressionMonth);
        RadGridAgencyContribution.DataSource = this.DataSource;
    }
    protected void RadGridAgencyContribution_ItemDataBound(object sender, Telerik.Web.UI.GridItemEventArgs e)
    {
        GridDataItem griddataItem;
        if (e.Item is GridDataItem)//&& e.Item.OwnerTableView.DataSourceID == "AccessDataSource1")
        {
            griddataItem = (GridDataItem)e.Item;
            //var obj = (vwMemberSalary)griddataItem.DataItem;
            int month = int.Parse(griddataItem["month"].Text);
            //var employeeName = griddataItem.g.get_gridDataItem().get_dataItem()["month"]; e.Item
            Label lbl = e.Item.FindControl("monthLabel") as Label;

            switch (month)
            {
                case 1: lbl.Text = "January"; break;
                case 2: lbl.Text = "February"; break;
                case 3: lbl.Text = "March"; break;
                case 4: lbl.Text = "April"; break;
                case 5: lbl.Text = "May"; break;
                case 6: lbl.Text = "June"; break;
                case 7: lbl.Text = "July"; break;
                case 8: lbl.Text = "August"; break;
                case 9: lbl.Text = "September"; break;
                case 10: lbl.Text = "October"; break;
                case 11: lbl.Text = "November"; break;
                case 12: lbl.Text = "December"; break;
                default: lbl.Text = "Missing"; break;
            }

        }
    }
    protected void RadButtonAddActualContribution_Click(object sender, EventArgs e)
    {
        PSPITS.MODEL.ActualContribution be = new PSPITS.MODEL.ActualContribution();
        be.mdaID = int.Parse(PSPITSModuleSession.mdaID); 
        be.month = int.Parse(this.month);
        be.year = int.Parse(this.year);
        be.period = int.Parse(string.Format("{0}{1}", this.month, this.year));
        be.employeeDeduction = decimal.Parse( this.employeeActual);
        be.employerDeduction = decimal.Parse( this.employerActual);
        be.dateRemitted = this.DateRemitted;
        be.whoCreated = PSPITSModuleSession.Username;
        be.dateCreated = DateTime.Now;
        be.logRef = 1234567;        
        new PSPITSDO().SaveActualContribution(be);
        this.RebindGrid();
        RadGridAgencyContribution.Focus();
        PSPITS.UIL.Utility.EmptyControl(RadTextBoxMDA);
        PSPITS.UIL.Utility.EmptyControl(RadTextBoxMonth);
        PSPITS.UIL.Utility.EmptyControl(RadTextBoxYear);
        PSPITS.UIL.Utility.EmptyControl(RadNumericTextBoxEmployeeActual);
        PSPITS.UIL.Utility.EmptyControl(RadNumericTextBoxEmployerActual);
        PSPITS.UIL.Utility.EmptyControl(RadDatePickerDateRemitted);
        this.DataSource = new PSPITS.DAL.DATA.PSPITSDO().GetMDA_ActualContributionHistoryByID(int.Parse(PSPITSModuleSession.mdaID));
        

    }
    protected void RadButtonAddActualContribution_Load(object sender, EventArgs e)
    {
        
        Utility utl = new Utility();
        RadAjaxManager radajaxmanager = new Utility().FindControlToRootOnly((sender as Button).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = new Utility().FindControlToRootOnly((sender as Button).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid grid = utl.FindControlToRootOnly((sender as Button).Parent, "RadGridAgencyContribution") as RadGrid;
        Button RadButtonAddActualContribution = utl.FindControlToRootOnly((sender as Button).Parent, "RadButtonAddActualContribution") as Button;

        //find the radtextbox and radcombo box
        //RadTextBox txtbox = (sender as Button).Parent.FindControl("RadTextBoxJobTitle") as RadTextBox;
        RadTextBox RadTextBoxMonth = (sender as Button).Parent.FindControl("RadTextBoxMonth") as RadTextBox;
        RadTextBox RadTextBoxYear = (sender as Button).Parent.FindControl("RadTextBoxYear") as RadTextBox;
        RadTextBox RadTextBoxMDA = (sender as Button).Parent.FindControl("RadTextBoxMDA") as RadTextBox;
        RadNumericTextBox RadNumericTextBoxEmployeeActual = (sender as Button).Parent.FindControl("RadNumericTextBoxEmployeeActual") as RadNumericTextBox;
        RadNumericTextBox RadNumericTextBoxEmployerActual = (sender as Button).Parent.FindControl("RadNumericTextBoxEmployerActual") as RadNumericTextBox;


        RadDatePicker RadDatePickerDateRemitted = (sender as Button).Parent.FindControl("RadDatePickerDateRemitted") as RadDatePicker;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonAddActualContribution != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddActualContribution, grid, radajaxloading);
            if (RadTextBoxMonth != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddActualContribution, RadTextBoxMonth, null);
            if (RadTextBoxYear != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddActualContribution, RadTextBoxYear, null);
            if (RadTextBoxMDA != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddActualContribution, RadTextBoxMDA, null);
            if (RadNumericTextBoxEmployeeActual != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddActualContribution, RadNumericTextBoxEmployeeActual, null);
            if (RadNumericTextBoxEmployerActual != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddActualContribution, RadNumericTextBoxEmployerActual, null);
            if (RadDatePickerDateRemitted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddActualContribution, RadDatePickerDateRemitted, null);
        }
    }
}
public class RadGridActualContributionTemplate : System.Web.UI.ITemplate
{

    public void InstantiateIn(System.Web.UI.Control container)
    {
        RadButton ButtonDelSB = new RadButton();
        ButtonDelSB.ID = "ButtonEdit";
        ButtonDelSB.Text = "Edit";
        ButtonDelSB.Click += new EventHandler(EditActualContribution_Click);
        ButtonDelSB.Load += new EventHandler(EditActualContribution_Load);
        container.Controls.Add(ButtonDelSB);

    }
    protected void EditActualContribution_Click(object sender, EventArgs e)
    {
        ActualContributionEventArgs _bArgs = new ActualContributionEventArgs();

        //RadGrid grid = (sender as RadButton).Parent.Parent.Parent.Parent.Parent as RadGrid;
        RadGrid grid = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridAgencyContribution") as RadGrid;
        GridTableView gridTable = (sender as RadButton).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as RadButton).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        _bArgs.mdaID = griddataItem["mdaID"].Text;
        _bArgs.month = griddataItem["month"].Text;
        _bArgs.year = griddataItem["year"].Text;
        //fire the Edit clicked event
        ActualContributionToEditSession.ActualContributionToEdit.ActualContribution = _bArgs;

    }
    protected void EditActualContribution_Load(object sender, EventArgs e)
    {
        //RadAjaxManager radajaxmanager = (sender as RadButton).Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.FindControl("RadAjaxManager1") as RadAjaxManager;
        //RadAjaxLoadingPanel radajaxloading = (sender as RadButton).Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.FindControl("RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        //RadButton btnEdit = (sender as RadButton).FindControl("ButtonEdit") as RadButton;

        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        RadButton btnEdit = utl.FindControlToRootOnly((sender as RadButton).Parent, "ButtonEdit") as RadButton;


        //RadButton RadButtonAddActualContribution = sender as RadButton; 
        RadGrid grid = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridAgencyContribution") as RadGrid;
        //find the radtextbox and radcombo box
        //RadTextBox txtbox = (sender as Button).Parent.FindControl("RadTextBoxJobTitle") as RadTextBox;
        RadTextBox RadTextBoxMonth = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxMonth") as RadTextBox;
        RadTextBox RadTextBoxYear = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxYear") as RadTextBox;
        RadTextBox RadTextBoxMDA = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxMDA") as RadTextBox;
        RadNumericTextBox RadNumericTextBoxEmployeeActual = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxEmployeeActual") as RadNumericTextBox;
        RadNumericTextBox RadNumericTextBoxEmployerActual = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxEmployerActual") as RadNumericTextBox;


        RadDatePicker RadDatePickerDateRemitted = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerDateRemitted") as RadDatePicker;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (btnEdit != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, grid, radajaxloading);
            if (RadTextBoxMonth != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxMonth, null);
            if (RadTextBoxYear != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxYear, null);
            if (RadTextBoxMDA != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxMDA, null);
            if (RadNumericTextBoxEmployeeActual != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadNumericTextBoxEmployeeActual, null);
            if (RadNumericTextBoxEmployerActual != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadNumericTextBoxEmployerActual, null);
            if (RadDatePickerDateRemitted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadDatePickerDateRemitted, null);
        }

    }
}