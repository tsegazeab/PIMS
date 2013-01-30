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

public partial class User_Control_Contribution_MEMBER_MemberContributionAdded : System.Web.UI.UserControl
{
    public static string _pensionID = "0";
    public static string _servicebreakID = "0";
    public int RebindGrid
    {
        get { RadGridMemberContribution.Rebind(); return 1; }
    }

    private void LoadComboBox()
    {

        //Load service break type comboBox
        RadComboBoxMDA.DataSource = new PSPITSDO().GetMDA();
        RadComboBoxMDA.DataTextField = PSPITS.COMMON.Constants.COL_LIST_MDA;
        RadComboBoxMDA.DataValueField = PSPITS.COMMON.Constants.COL_LIST_MDAID;
        RadComboBoxMDA.DataBind();
        //
        RadComboBoxMonth.DataSource = new PSPITSDO().GetMonth();
        RadComboBoxMonth.DataTextField = PSPITS.COMMON.Constants.COL_LIST_MONTH;
        RadComboBoxMonth.DataValueField = PSPITS.COMMON.Constants.COL_LIST_MONTHCODE;
        RadComboBoxMonth.DataBind();
        //Load year of birth comboBox
        RadComboBoxYear.DataSource = new PSPITSDO().GetYear();
        RadComboBoxYear.DataTextField = PSPITS.COMMON.Constants.COL_LIST_YEAR;
        RadComboBoxYear.DataValueField = PSPITS.COMMON.Constants.COL_LIST_YEARCODE;
        RadComboBoxYear.DataBind();
    }
    public string mdaID
    {
        get { return RadComboBoxMDA.SelectedValue; }
        set { RadComboBoxMDA.SelectedValue = value; }
    }
    public string MemberName
    {
        get { return RadTextBoxmemberName.Text; }
        set { RadTextBoxmemberName.Text = value; }
    }
    public int pensionID
    {
        get;
        set;
    }

    public string month
    {
        get { return RadComboBoxMonth.SelectedValue; }
        set { RadComboBoxMonth.SelectedValue = value.ToString(); }
    }
    public string year
    {
        get { return RadComboBoxYear.SelectedValue; }
        set { RadComboBoxYear.SelectedValue = value.ToString(); }
    }
    public string payrollNumber
    {
        get { return RadTextBoxPayrollNumber.Text; }
        set { RadTextBoxPayrollNumber.Text = value; }
    }
    public string grossPay
    {
        get { return RadNumericTextBoxgrossPay.Text; }
        set { RadNumericTextBoxgrossPay.Text = value; }
    }
    public string basicPay
    {
        get { return RadNumericTextBoxbasicPay.Text; }
        set { RadNumericTextBoxbasicPay.Text = value; }
    }
    public string Cola
    {
        get { return RadNumericTextBoxcola.Text; }
        set { RadNumericTextBoxcola.Text = value; }
    }
    public string EmployeeDeduction
    {
        get { return RadNumericTextBoxemployeeDeduction.Text; }
        set { RadNumericTextBoxemployeeDeduction.Text = value; }
    }
    public string EmployerDeduction
    {
        get { return RadNumericTextBoxemployerDeduction.Text; }
        set { RadNumericTextBoxemployerDeduction.Text = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //PSPITSDO _do = new PSPITSDO();
            //this.serviceBreakID = _do.PadCode(_do.GenServiceBreakID(), 9);
            this.month = this.year = "0";
            this.pensionID = int.Parse(PSPITS.UIL.PSPITSModuleSession.PensionID);
          //  if (this.pensionID > 0) RadButtonAddMemberContribution1.Enabled = true; else RadButtonAddMemberContribution1.Enabled = false;
            this.MemberName = PSPITSModuleSession.MemberFullName;
            //this.
            LoadComboBox();

        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        GridTemplateColumn colEditMemberContribution = (GridTemplateColumn)RadGridMemberContribution.MasterTableView.GetColumn("columnRemove");
        colEditMemberContribution.ItemTemplate = new RadGridMemberContributionTemplate();
        (MemberContributionToEditSession.MemberContributionToEdit = new MemberContributionToEdit()).OnMemberContributionEditClicked += new MemberContributionEventHandler(MemberContributionSelectedFromGrid);
 
    }
    protected void MemberContributionSelectedFromGrid(object sender, MemberContributionEventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();

        this.LoadMemberContribution(_do.GetMemberSalaryContributionByPeriod(int.Parse(e.pensionID), int.Parse(e.month), int.Parse(e.year)));
       
    }
    protected void LoadMemberContribution(PSPITS.MODEL.vwMemberSalary ms)
    {
        this.month = string.Format("{0}", ms.month);
        this.year = string.Format("{0}", ms.year);
        this.pensionID = ms.pensionID;
        this.payrollNumber = ms.payrollNumber;
        this.grossPay = string.Format("{0}", ms.grossPay);
        this.basicPay = string.Format("{0}", ms.basicPay);
        this.Cola = string.Format ("{0}", ms.COLA);
        this.EmployeeDeduction = string.Format("{0}", ms.employeeDeduction);
        this.EmployerDeduction = string.Format("{0}", ms.employerDeduction);
        this.mdaID = string.Format("{0}", ms.mdaID);

    }
    
    
    protected void RadButtonAddMemberContribution_Click(object sender, EventArgs e)
    {
        //Get handle of the Member
        PSPITSDO rdo = new PSPITSDO();
        MemberSalary aPD = new MemberSalary();
        aPD.pensionID = int.Parse(PSPITSModuleSession.PensionID);
        aPD.month = int.Parse(this.month);
        aPD.year = int.Parse(this.year);
        aPD.period = int.Parse(string.Format("{0}{1}", this.month, this.year));
        aPD.monthRSSAgency = int.Parse(this.mdaID);
        aPD.payrollNumber = this.payrollNumber;
        aPD.grossPay = decimal.Parse(this.grossPay);
        aPD.basicPay = decimal.Parse(this.basicPay);
        aPD.cola = decimal.Parse(this.Cola);
        aPD.employeeDeduction = decimal.Parse(this.EmployeeDeduction);
        aPD.employerDeduction = decimal.Parse(this.EmployerDeduction);

        aPD.whoUpdated= aPD.whoCreated = Page.User.Identity.Name;
        aPD.dateUpdated= aPD.dateCreated = DateTime.Now;

        //
        //string doa = string.Format("{0}/{1}/{2}", this.startDay,this.startMonth, this.startYear);
        rdo.SaveMemberSalary(aPD);
        RadGridMemberContribution.Rebind();
        RadGridMemberContribution.Focus();
        //clear the controls
        //PSPITS.UIL.Utility.EmptyControl(RadTextBoxmemberName);
        PSPITS.UIL.Utility.EmptyControl(RadComboBoxMDA);
        PSPITS.UIL.Utility.EmptyControl(RadComboBoxMonth);
        PSPITS.UIL.Utility.EmptyControl(RadComboBoxYear);
        PSPITS.UIL.Utility.EmptyControl(RadTextBoxPayrollNumber);
        PSPITS.UIL.Utility.EmptyControl(RadNumericTextBoxgrossPay);
        PSPITS.UIL.Utility.EmptyControl(RadNumericTextBoxbasicPay);
        PSPITS.UIL.Utility.EmptyControl(RadNumericTextBoxcola);
        PSPITS.UIL.Utility.EmptyControl(RadNumericTextBoxemployeeDeduction);
        PSPITS.UIL.Utility.EmptyControl(RadNumericTextBoxemployerDeduction);
       
    }
    protected void RadButtonAddMemberContribution_Load(object sender, EventArgs e)
    {

        RadAjaxManager radajaxmanager = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadButton RadButtonAddMemberContribution = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadButtonAddMemberContribution") as RadButton;
        RadGrid grid = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridMemberContribution") as RadGrid;
        RadTextBox RadTextBoxmemberName = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxmemberName") as RadTextBox;
        RadComboBox RadComboBoxMDA = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxMDA") as RadComboBox;
        RadComboBox RadComboBoxMonth = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxMonth") as RadComboBox;
        RadComboBox RadComboBoxYear = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxYear") as RadComboBox;
        RadTextBox RadTextBoxPayrollNumber = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPayrollNumber") as RadTextBox;
        RadNumericTextBox RadNumericTextBoxgrossPay = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxgrossPay") as RadNumericTextBox;
        RadNumericTextBox RadNumericTextBoxbasicPay = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxbasicPay") as RadNumericTextBox;
        RadNumericTextBox RadNumericTextBoxcola = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxcola") as RadNumericTextBox;
        RadNumericTextBox RadNumericTextBoxemployeeDeduction = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxemployeeDeduction") as RadNumericTextBox;
        //RadNumericTextBox RadNumericTextBoxemployerDeduction = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxemployerDeduction") as RadNumericTextBox;
        //
        //Button RadButtonAddMemberContribution = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadButtonAddMemberContribution") as Button;
        //RadGrid grid = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadGridMemberContribution") as RadGrid;
        //RadTextBox RadTextBoxmemberName = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadTextBoxmemberName") as RadTextBox;
        //RadComboBox RadComboBoxMDA = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadComboBoxMDA") as RadComboBox;
        //RadComboBox RadComboBoxMonth = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadComboBoxMonth") as RadComboBox;
        //RadComboBox RadComboBoxYear = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadComboBoxYear") as RadComboBox;
        //RadTextBox RadTextBoxPayrollNumber = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadTextBoxPayrollNumber") as RadTextBox;
        //RadNumericTextBox RadNumericTextBoxgrossPay = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadNumericTextBoxgrossPay") as RadNumericTextBox;
        //RadNumericTextBox RadNumericTextBoxbasicPay = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadNumericTextBoxbasicPay") as RadNumericTextBox;
        //RadNumericTextBox RadNumericTextBoxcola = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadNumericTextBoxcola") as RadNumericTextBox;
        //RadNumericTextBox RadNumericTextBoxemployeeDeduction = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadNumericTextBoxemployeeDeduction") as RadNumericTextBox;
        //RadNumericTextBox RadNumericTextBoxemployerDeduction = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Button).Parent, "RadNumericTextBoxemployerDeduction") as RadNumericTextBox;


        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonAddMemberContribution != null) && (grid != null))
        {
            radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, grid, radajaxloading);
            if (RadTextBoxmemberName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadTextBoxmemberName, null);
            if (RadComboBoxMDA != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadComboBoxMDA, null);
            if (RadComboBoxMonth != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadComboBoxMonth, null);
            if (RadComboBoxYear != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadComboBoxYear, null);
            if (RadTextBoxPayrollNumber != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadTextBoxPayrollNumber, null);
            if (RadNumericTextBoxgrossPay != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadNumericTextBoxgrossPay, null);
            if (RadNumericTextBoxbasicPay != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadNumericTextBoxbasicPay, null);
            if (RadNumericTextBoxcola != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadNumericTextBoxcola, null);
            if (RadNumericTextBoxemployeeDeduction != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadNumericTextBoxemployeeDeduction, null);
            //if (RadNumericTextBoxemployerDeduction != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddMemberContribution, RadNumericTextBoxemployerDeduction, null);
            
            
        }

    }
    protected void RadGridMemberContribution_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {

        RadGridMemberContribution.DataSource = new PSPITSDO().GetMemberSalaryByPensionID(int.Parse(PSPITSModuleSession.PensionID));
    }
}

public class RadGridMemberContributionTemplate : System.Web.UI.ITemplate
{

    public void InstantiateIn(System.Web.UI.Control container)
    {
        RadButton ButtonEdit = new RadButton();
        ButtonEdit.ID = "ButtonEdit";
        ButtonEdit.Text = "Edit";
        ButtonEdit.Click += new EventHandler(EditMemberContribution_Click);
        ButtonEdit.Load += new EventHandler(EditMemberContribution_Load);
        container.Controls.Add(ButtonEdit);

    }
    protected void EditMemberContribution_Click(object sender, EventArgs e)
    {
        //PSPITSDO rdo = new PSPITSDO();

        MemberContributionEventArgs _bArgs = new MemberContributionEventArgs();

        RadGrid grid = (sender as RadButton).Parent.Parent.Parent.Parent.Parent as RadGrid;
        GridTableView gridTable = (sender as RadButton).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as RadButton).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        _bArgs.pensionID = griddataItem["pensionID"].Text;
        _bArgs.month = griddataItem["month"].Text;
        _bArgs.year = griddataItem["year"].Text;
        //fire the Edit clicked event
        MemberContributionToEditSession.MemberContributionToEdit.MemberContribution = _bArgs;
    }
    protected void EditMemberContribution_Load(object sender, EventArgs e)
    {
        RadAjaxManager radajaxmanager = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        RadButton btnEdit = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "ButtonEdit") as RadButton;

        RadGrid grid = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridMemberContribution") as RadGrid;
        RadTextBox RadTextBoxmemberName = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxmemberName") as RadTextBox;
        RadComboBox RadComboBoxMDA = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxMDA") as RadComboBox;
        RadComboBox RadComboBoxMonth = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxMonth") as RadComboBox;
        RadComboBox RadComboBoxYear = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxYear") as RadComboBox;
        RadTextBox RadTextBoxPayrollNumber = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPayrollNumber") as RadTextBox;
        RadNumericTextBox RadNumericTextBoxgrossPay = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxgrossPay") as RadNumericTextBox;
        RadNumericTextBox RadNumericTextBoxbasicPay = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxbasicPay") as RadNumericTextBox;
        RadNumericTextBox RadNumericTextBoxcola = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxcola") as RadNumericTextBox;
        RadNumericTextBox RadNumericTextBoxemployeeDeduction = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxemployeeDeduction") as RadNumericTextBox;
        RadNumericTextBox RadNumericTextBoxemployerDeduction = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadNumericTextBoxemployerDeduction") as RadNumericTextBox;
    //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (btnEdit != null) && (grid != null))
        {
            radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, grid, radajaxloading);

            if (RadTextBoxmemberName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxmemberName, null);
            if (RadComboBoxMDA != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadComboBoxMDA, null);
            if (RadComboBoxMonth != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadComboBoxMonth, null);
            if (RadComboBoxYear != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadComboBoxYear, null);
            if (RadTextBoxPayrollNumber != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxPayrollNumber, null);
            if (RadNumericTextBoxgrossPay != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadNumericTextBoxgrossPay, null);
            if (RadNumericTextBoxbasicPay != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadNumericTextBoxbasicPay, null);
            if (RadNumericTextBoxcola != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadNumericTextBoxcola, null);
            if (RadNumericTextBoxemployeeDeduction != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadNumericTextBoxemployeeDeduction, null);
            if (RadNumericTextBoxemployerDeduction != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadNumericTextBoxemployerDeduction, null);
      
    
        }

    }
}