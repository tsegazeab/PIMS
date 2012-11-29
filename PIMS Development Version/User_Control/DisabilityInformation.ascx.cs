using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;
using PSPITS.UIL;
using Telerik.Web.UI;
using Telerik.Charting;
using System.Web.UI.WebControls;

public partial class User_Control_DisabilityInformation : System.Web.UI.UserControl
{
    private static string _pensionID = "0";
    private static string _beneficiaryID = "0";
    private static bool _isUpdate = false;

    protected bool IsUpdate
    {
        set { _isUpdate = value; }
        get { return _isUpdate; }

    }
    public void RebindGrid()
    {
        RadGridDisability.Rebind();
        this.IsUpdate = false;
    }
    public string pensionID
    {
        get { return _pensionID; }
        set { _pensionID = value; }
    }
    public string beneficiaryID
    {
        get { return _beneficiaryID; }
        set {  _beneficiaryID = value; }//RadComboBoxName.SelectedValue = _beneficiaryID = value; }
    }
    public string BeneficiaryName
    {
        get { return RadComboBoxName.SelectedValue; }
        set { RadComboBoxName.SelectedValue = value; }
    }
   
    public string DisabilityType
    {
        get { return RadComboBoxDisability.SelectedValue; }
        set { RadComboBoxDisability.SelectedValue = value; }
    }
    
    public DateTime? DateofDisability
    {
        get
        {
            return RadDatePickerDateOfDisability.SelectedDate;
        }
        set
        {
            RadDatePickerDateOfDisability.SelectedDate = value;
        }

    }
    public string ReportPresented
    {
        get { return RadComboBoxReportPresented.SelectedValue; }
        set { RadComboBoxReportPresented.SelectedValue = value; }
    }
    public void LoadBeneficiaryNameCombo(int pensionID)
    {
        //Load Gender comboBox
        RadComboBoxName.DataSource = new PSPITSDO().GetBeneficiaryFullName4ComboByPensionID(pensionID);
        RadComboBoxName.DataTextField = PSPITS.COMMON.Constants.COL_BENEFICIARY_FULLNAME;
        RadComboBoxName.DataValueField = PSPITS.COMMON.Constants.COL_BENEFICIARY_BENEFICIARYID;
        RadComboBoxName.DataBind();
    
    }
    public string ReportAccepted
    {
        get { return RadComboBoxReportAccepted.SelectedValue; }
        set { RadComboBoxReportAccepted.SelectedValue = value; }
    }
    public string Description
    {
        get { return RadTextBoxDescription.Text; }
        set { RadTextBoxDescription.Text = value; }
    }
    private void LoadComboBox()
    {
        //Load marital status comboBox 
        RadComboBoxDisability.DataSource = new PSPITSDO().GetDisabilityType();
        RadComboBoxDisability.DataTextField = PSPITS.COMMON.Constants.COL_LIST_DISABILITYTYPE;
        RadComboBoxDisability.DataValueField = PSPITS.COMMON.Constants.COL_LIST_DISABILITYTYPEID;
        RadComboBoxDisability.DataBind();

        ////Load relationship comboBox
        //RadComboBoxRelationship.DataSource = new PSPITSDO().GetBeneficiaryRelationshipType();
        //RadComboBoxRelationship.DataTextField = PSPITS.COMMON.Constants.COL_LIST_BENEFICIARYRELATIONSHIP;
        //RadComboBoxRelationship.DataValueField = PSPITS.COMMON.Constants.COL_LIST_BENEFICIARYRELATIONSHIPTYPEID;
        //RadComboBoxRelationship.DataBind();
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //PSPITSDO _do = new PSPITSDO();
            //this.beneficiaryID = _do.PadCode(_do.GenBeneficiaryID(), 9);
            //this.pensionID = this.beneficiaryID = "0";
            
            LoadComboBox();

        }
    }
    protected void RadButtonAddDisability_Load(object sender, EventArgs e)
    {
      
    
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid grid = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridDisability") as RadGrid;
        RadTextBox RadTextBoxDescription = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxDescription") as RadTextBox;
        //
        RadComboBox RadComboBoxName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxName") as RadComboBox;
        RadComboBox RadComboBoxDisability = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxDisability") as RadComboBox;
        //
        RadDatePicker RadDatePickerDateOfDisability = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerDateOfDisability") as RadDatePicker;
        RadComboBox RadComboBoxReportPresented = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxReportPresented") as RadComboBox;
        RadComboBox RadComboBoxReportAccepted = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxReportAccepted") as RadComboBox;
     
        //RadComboBox RadComboBoxhomeState = (sender as RadButton).Parent.FindControl("RadComboBoxhomeState") as RadComboBox;
        RadButton RadButtonAddDisability = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonAddDisability") as RadButton;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonAddDisability != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, grid, radajaxloading);
            if (RadTextBoxDescription != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadTextBoxDescription, null);
            if (RadComboBoxName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadComboBoxName, null);
            if (RadComboBoxDisability != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadComboBoxDisability, null);
            if (RadDatePickerDateOfDisability != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadDatePickerDateOfDisability, null);
            //
            if (RadComboBoxReportPresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadComboBoxReportPresented, null);
            if (RadComboBoxReportAccepted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadComboBoxReportAccepted, null);
                      
        }        
    
    }
    protected void Page_Init(object sender, EventArgs e)
    {

        // We have made the columnRemove invisible - uncomment only after changing to visible
        //GridTemplateColumn colDeleteBeneficiary = (GridTemplateColumn)RadGridBeneficiary.MasterTableView.GetColumn("columnRemove");
        //colDeleteBeneficiary.ItemTemplate = new RadGridBeneficiaryUpdateDeleteTemplate();
        //
        GridTemplateColumn colEditBeneficiary = (GridTemplateColumn)RadGridDisability.MasterTableView.GetColumn("columnEdit");
        colEditBeneficiary.ItemTemplate = new RadGridBeneficiaryDisabilityEditTemplate();
        (BeneficiaryToEditSession.BeneficiaryToEdit = new BeneficiaryToEdit()).OnBeneficiaryEditClicked += new BeneficiaryEventHandler(BeneficiarySelectedFromGrid);
    }
    protected void BeneficiarySelectedFromGrid(object sender, BeneficiaryEventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();

        this.LoadBeneficiaryPersonalDetail(_do.GetBeneficiaryDisabilityByPensionIDandBeneficiaryID(int.Parse(e.pensionID),int.Parse(e.beneficiaryID)));
        

        this.IsUpdate = true;

        //Do not allow user to change beneficiary when in edit mode
        RadComboBox RadComboBoxName = new Utility().FindControlFromRoot(this, "RadComboBoxName") as RadComboBox;
        if (RadComboBoxName != null) RadComboBoxName.Enabled = false;

    }
    public void LoadBeneficiaryPersonalDetail(BeneficiaryDisabilityDetail md)
    {
        this.pensionID = string.Format("{0}", md.pensionID);
        this.beneficiaryID = string.Format("{0}", md.beneficiaryID);
        this.BeneficiaryName = md.beneficiaryfullName.Trim();
        this.DisabilityType = string.Format("{0}", md.disabilityType) ;
        this.ReportPresented = md.evidencePresented.Trim();
        this.ReportAccepted = md.evidenceAccepted.Trim();
        this.Description = md.description.Trim();
        this.DateofDisability = md.dateofDisability;
    }
    protected void RadGridDisability_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        //RadGridDisability.DataSource = new PSPITSDO().GetBeneficiaryDisabilityFullNameByPensionIDandBeneficiaryID(Int32.Parse(this.pensionID), Int32.Parse(this.beneficiaryID));
        RadGridDisability.DataSource = new PSPITSDO().GetBeneficiaryDisabilityFullNameByPensionID(Int32.Parse(this.pensionID));
    }
    public void ClearControl()
    {

        Utility.EmptyControl(RadComboBoxName);
        Utility.EmptyControl(RadComboBoxDisability);
        Utility.EmptyControl(RadDatePickerDateOfDisability);
        Utility.EmptyControl(RadTextBoxDescription);
        Utility.EmptyControl(RadComboBoxReportPresented);
        Utility.EmptyControl(RadComboBoxReportAccepted);
    }
    protected void RadButtonAddDisability_Click(object sender, EventArgs e)
    {
        
        BeneficiaryDisabilityDetail aPD = new BeneficiaryDisabilityDetail();
        if (this.IsUpdate)
        {
            //aPD.serviceBreakID = Int32.Parse(this.serviceBreakID);
            aPD.whoUpdated = "admin";
            aPD.dateUpdated = DateTime.Now;
        }
        else
        {
            //aPD.serviceBreakID = int.Parse(this.serviceBreakID = string.Format("{0}", rdo.GenServiceBreakID()));
            aPD.whoCreated = "admin";
            aPD.dateCreated = DateTime.Now;
        }
        this.IsUpdate = false;
        aPD.pensionID = Int32.Parse(this.pensionID);
        aPD.beneficiaryID = Int32.Parse(this.beneficiaryID);
        aPD.disabilityType = Int32.Parse(this.DisabilityType);
        if (this.DateofDisability.HasValue)
            aPD.dateofDisability = this.DateofDisability.Value;
        aPD.description = this.Description.Trim();
        aPD.evidencePresented = this.ReportPresented.Trim();
        aPD.evidenceAccepted = this.ReportAccepted.Trim();
        //
        new PSPITSDO().SaveBeneficiaryDisabilityDetail(aPD);
        RadGridDisability.Rebind();
        //clear the controls
        ClearControl();
        //enable selection of beneficiary 

        RadComboBox RadComboBoxName = new Utility().FindControlFromRoot(this, "RadComboBoxName") as RadComboBox;
        if (RadComboBoxName != null) RadComboBoxName.Enabled = true;
    }
    protected void RadComboBoxName_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        this.beneficiaryID = e.Value.Trim();
    }

}
public class RadGridBeneficiaryDisabilityEditTemplate : System.Web.UI.ITemplate
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
        BeneficiaryEventArgs _bArgs = new BeneficiaryEventArgs();
        RadGrid grid = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridDisability") as RadGrid;

        GridTableView gridTable = (sender as RadButton).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as RadButton).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        _bArgs.pensionID = griddataItem["pensionID"].Text.Trim();
        _bArgs.beneficiaryID = griddataItem["beneficiaryID"].Text.Trim();

        BeneficiaryToEditSession.BeneficiaryToEdit.Beneficiary = _bArgs;


    }

    protected void ButtonEdit_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid grid = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridDisability") as RadGrid;
        RadTextBox RadTextBoxDescription = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxDescription") as RadTextBox;
        //
        RadComboBox RadComboBoxName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxName") as RadComboBox;
        RadComboBox RadComboBoxDisability = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxDisability") as RadComboBox;
        RadDatePicker RadDatePickerDateOfDisability = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerDateOfDisability") as RadDatePicker;
        //
        RadComboBox RadComboBoxReportPresented = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxReportPresented") as RadComboBox;
        RadComboBox RadComboBoxReportAccepted = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxReportAccepted") as RadComboBox;

        //RadComboBox RadComboBoxhomeState = (sender as RadButton).Parent.FindControl("RadComboBoxhomeState") as RadComboBox;
        RadButton RadButtonAddDisability = utl.FindControlToRootOnly((sender as RadButton).Parent, "ButtonEdit") as RadButton;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonAddDisability != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, grid, radajaxloading);
            if (RadTextBoxDescription != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadTextBoxDescription, null);
            if (RadComboBoxName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadComboBoxName, null);
            if (RadComboBoxDisability != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadComboBoxDisability, null);
            if (RadDatePickerDateOfDisability != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadDatePickerDateOfDisability, null);
            //
            if (RadComboBoxReportPresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadComboBoxReportPresented, null);
            if (RadComboBoxReportAccepted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddDisability, RadComboBoxReportAccepted, null);

        }        
    

    }
}