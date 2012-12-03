using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;
using PSPITS.UIL;
using Telerik.Web.UI;
using Telerik.Charting;

public partial class User_Control_BeneficiaryInformation : System.Web.UI.UserControl
{
    private static string _pensionID = "0";
    private static string _beneficiaryID = "0";

    public string pensionID
    {
        get { return _pensionID; }
        set { _pensionID = value; }
    }
    public string beneficiaryID
    {
        get { return _beneficiaryID; }
        set { _beneficiaryID = value; }
    }
    public string firstName
    {
        get { return RadTextBoxfirstName.Text; }
        set { RadTextBoxfirstName.Text = value; }
    }
    public string lastName
    {
        get { return RadTextBoxlastName.Text; }
        set { RadTextBoxlastName.Text = value; }
    }
    public string Gender
    {
        get { return RadComboBoxgender.SelectedValue; }
        set { RadComboBoxgender.SelectedValue = value; }
    }
    public DateTime? DateofBirth
    {
        get
        {
            return RadDatePickerDateOfBirth.SelectedDate;
        }
        set { RadDatePickerDateOfBirth.SelectedDate = value; }
    }
    
    public string MaritalStatus
    {
        get { return RadComboBoxmaritalStatus.SelectedValue; }
        set { RadComboBoxmaritalStatus.SelectedValue = value; }
    }
    public string nationalID
    {
        get { return RadTextBoxnationalID.Text; }
        set { RadTextBoxnationalID.Text = value; }
    }
    public string eMail
    {
        get { return RadTextBoxeMail.Text; }
        set { RadTextBoxeMail.Text = value; }
    }
    public string phoneMobile
    {
        get { return RadTextBoxPhoneMobile.Text; }
        set { RadTextBoxPhoneMobile.Text = value; }
    }
    public string phoneLandline
    {
        get { return RadTextBoxPhoneLandline.Text; }
        set { RadTextBoxPhoneLandline.Text = value; }
    }
    public string postAddress
    {
        get { return RadTextBoxPostAddress.Text; }
        set { RadTextBoxPostAddress.Text = value; }
    }
    public string Address
    {
        get { return RadTextBoxAddress.Text; }
        set { RadTextBoxAddress.Text = value; }
    }
    public string homeState
    {
        get { return RadComboBoxhomeState.SelectedValue; }
        set { RadComboBoxhomeState.SelectedValue = value; }
    }
    public string RelationID
    {
        get { return RadComboBoxRelationship.SelectedValue; }
        set { RadComboBoxRelationship.SelectedValue = value; }
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //PSPITSDO _do = new PSPITSDO();
            //this.beneficiaryID = _do.PadCode(_do.GenBeneficiaryID(), 9);
            this.pensionID=this.beneficiaryID = "0";
            LoadComboBox();
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        GridTemplateColumn colDeleteServiceBreak = (GridTemplateColumn)RadGridBeneficiary.MasterTableView.GetColumn("columnRemove");
        colDeleteServiceBreak.ItemTemplate = new RadGridBeneficiaryTemplate();
    }
    private void LoadComboBox()
    {

        //Load Gender comboBox
        RadComboBoxgender.DataSource = new PSPITSDO().GetGender();
        RadComboBoxgender.DataTextField = PSPITS.COMMON.Constants.COL_LIST_GENDER;
        RadComboBoxgender.DataValueField = PSPITS.COMMON.Constants.COL_LIST_GENDER;
        RadComboBoxgender.DataBind();
       
        //Load marital status comboBox
        RadComboBoxmaritalStatus.DataSource = new PSPITSDO().GetMaritalStatus();
        RadComboBoxmaritalStatus.DataTextField = PSPITS.COMMON.Constants.COL_LIST_MARITAL;
        RadComboBoxmaritalStatus.DataValueField = PSPITS.COMMON.Constants.COL_LIST_MARITALID;
        RadComboBoxmaritalStatus.DataBind();

        //Load relationship comboBox
        RadComboBoxRelationship.DataSource = new PSPITSDO().GetBeneficiaryRelationshipType();
        RadComboBoxRelationship.DataTextField = PSPITS.COMMON.Constants.COL_LIST_BENEFICIARYRELATIONSHIP;
        RadComboBoxRelationship.DataValueField = PSPITS.COMMON.Constants.COL_LIST_BENEFICIARYRELATIONSHIPTYPEID;
        RadComboBoxRelationship.DataBind();         
        
        //Load state comboBox
        RadComboBoxhomeState.DataSource = new PSPITSDO().GetState();
        RadComboBoxhomeState.DataTextField = PSPITS.COMMON.Constants.COL_LIST_STATE;
        RadComboBoxhomeState.DataValueField = PSPITS.COMMON.Constants.COL_LIST_STATEID;
        RadComboBoxhomeState.DataBind();
    }
    protected void RadButtonSaveBeneficiary_Click(object sender, EventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();
       // this.beneficiaryID = string.Format("{0}", _do.GenBeneficiaryID());

        BeneficiaryPersonalDetail aPD = new BeneficiaryPersonalDetail();
        BeneficiaryContactDetail contact = new BeneficiaryContactDetail();
        aPD.pensionID = Int32.Parse(this.pensionID);
        aPD.beneficiaryID = _do.GenBeneficiaryID();
        this.beneficiaryID = string.Format("{0}",aPD.beneficiaryID);
        //
        //string doa = string.Format("{0}/{1}/{2}", this.dayofBirth, this.monthofBirth, this.yearofBirth);
        if (this.DateofBirth.HasValue)
            aPD.dateofBirth = this.DateofBirth.Value;
        aPD.maritalStatus = Int32.Parse(this.MaritalStatus);
        aPD.gender = this.Gender;
        aPD.relationID = Int32.Parse(this.RelationID);
        aPD.nationalID = this.nationalID;
        aPD.firstName = this.firstName;
        aPD.lastName = this.lastName;
        //
        aPD.whoCreated = "admin";
        aPD.dateCreated = DateTime.Now;
        //Get contact information
        //
        contact.pensionID = aPD.pensionID;
        contact.beneficiaryID = aPD.beneficiaryID;
        contact.email = this.eMail;
        contact.phoneMobile = this.phoneMobile;
        contact.phoneLandline = this.phoneLandline;
        contact.postAddress = this.postAddress;
        contact.homeState = Int32.Parse( this.homeState);
        contact.address=this.Address;
        contact.dateUpdated=DateTime.Now;
        contact.whoUpdated="admin";

        // NOW SAVE BOTH THE PERSONAL AND CONTACT INFORMATION OF THE MEMBER
        _do.SaveBeneficiaryPersonalDetail(aPD);
        _do.SaveBeneficiaryContactDetail(contact);
        //MOVE FOCUS TO NEAR THE GRID
        RadTextBoxfirstName.Focus();
        RadGridBeneficiary.Rebind();
        
        //clear the controls
        ClearControls();
       

    }
    private void ClearControls()
    {

        EmptyControl(RadTextBoxfirstName);
        EmptyControl(RadTextBoxlastName);
        EmptyControl(RadDatePickerDateOfBirth);
        EmptyControl(RadComboBoxmaritalStatus);
        EmptyControl(RadComboBoxgender);
        EmptyControl(RadComboBoxRelationship);
        EmptyControl(RadTextBoxnationalID);

        EmptyControl(RadTextBoxeMail);
        EmptyControl(RadTextBoxPhoneMobile);
        EmptyControl(RadTextBoxPhoneLandline);
        EmptyControl(RadTextBoxPostAddress);
        EmptyControl(RadComboBoxhomeState);
        EmptyControl(RadTextBoxAddress);
    }
    protected void RadButtonSaveBeneficiary_Load(object sender, EventArgs e)
    {
      
        RadAjaxManager radajaxmanager = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
  
        RadGrid grid = (sender as RadButton).Parent.FindControl("RadGridBeneficiary") as RadGrid;
        RadTextBox RadTextBoxfirstName = (sender as RadButton).Parent.FindControl("RadTextBoxfirstName") as RadTextBox;
        RadTextBox RadTextBoxlastName = (sender as RadButton).Parent.FindControl("RadTextBoxlastName") as RadTextBox;
        RadComboBox RadComboBoxgender = (sender as RadButton).Parent.FindControl("RadComboBoxgender") as RadComboBox;
        RadDatePicker RadDatePickerDateOfBirth = (sender as RadButton).Parent.FindControl("RadDatePickerDateOfBirth") as RadDatePicker;
        RadComboBox RadComboBoxmaritalStatus = (sender as RadButton).Parent.FindControl("RadComboBoxmaritalStatus") as RadComboBox;
        RadComboBox RadComboBoxRelationship = (sender as RadButton).Parent.FindControl("RadComboBoxRelationship") as RadComboBox;

        RadMaskedTextBox RadTextBoxnationalID = (sender as RadButton).Parent.FindControl("RadTextBoxnationalID") as RadMaskedTextBox;
        RadTextBox RadTextBoxeMail = (sender as RadButton).Parent.FindControl("RadTextBoxeMail") as RadTextBox;
        RadTextBox RadTextBoxPhoneMobile = (sender as RadButton).Parent.FindControl("RadTextBoxPhoneMobile") as RadTextBox;
        RadTextBox RadTextBoxPhoneLandline = (sender as RadButton).Parent.FindControl("RadTextBoxPhoneLandline") as RadTextBox;
        RadTextBox RadTextBoxPostAddress = (sender as RadButton).Parent.FindControl("RadTextBoxPostAddress") as RadTextBox;
        RadTextBox RadTextBoxAddress = (sender as RadButton).Parent.FindControl("RadTextBoxAddress") as RadTextBox;

        RadComboBox RadComboBoxhomeState = (sender as RadButton).Parent.FindControl("RadComboBoxhomeState") as RadComboBox;
           
        RadButton RadButtonSaveBeneficiary = (sender as RadButton).Parent.FindControl("RadButtonSaveBeneficiary") as RadButton;


        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonSaveBeneficiary != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, grid, radajaxloading);
            if (RadComboBoxgender != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadComboBoxgender, null);
            if (RadDatePickerDateOfBirth != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadDatePickerDateOfBirth, null);
            if (RadComboBoxmaritalStatus != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadComboBoxmaritalStatus, null);
            if (RadComboBoxRelationship != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadComboBoxRelationship, null);
            if (RadComboBoxhomeState != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadComboBoxhomeState, null);
            //
            if (RadTextBoxfirstName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadTextBoxfirstName, null);
            if (RadTextBoxlastName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadTextBoxlastName, null);
            if (RadTextBoxnationalID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadTextBoxnationalID, null);
            if (RadTextBoxeMail != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadTextBoxeMail, null);
            if (RadTextBoxPhoneMobile != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadTextBoxPhoneMobile, null);
            if (RadTextBoxPhoneLandline != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadTextBoxPhoneLandline, null);
            if (RadTextBoxPostAddress != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadTextBoxPostAddress, null);
            if (RadTextBoxAddress != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveBeneficiary, RadTextBoxAddress, null);            
        }        
    }

    protected void RadGridBeneficiary_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        RadGridBeneficiary.DataSource = new PSPITSDO().GetBeneficiaryByPensionID(Int32.Parse(this.pensionID));
    }
}
public class RadGridBeneficiaryTemplate : System.Web.UI.ITemplate
{

    public void InstantiateIn(System.Web.UI.Control container)
    {
        Button ButtonDel = new Button();
        ButtonDel.ID = "ButtonDel";
        ButtonDel.Text = "Remove";
        ButtonDel.Click += new EventHandler(ButtonDelete_Click);
        ButtonDel.Load += new EventHandler(ButtonDelete_Load);
        container.Controls.Add(ButtonDel);

    }
    protected void ButtonDelete_Click(object sender, EventArgs e)
    {
        PSPITSDO rdo = new PSPITSDO();

        BeneficiaryPersonalDetail oL = new BeneficiaryPersonalDetail();
       
        RadGrid grid = (sender as Button).Parent.Parent.Parent.Parent.Parent as RadGrid;
        GridTableView gridTable = (sender as Button).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as Button).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        oL.pensionID = int.Parse(griddataItem["pensionID"].Text);
        oL.beneficiaryID = int.Parse(griddataItem["beneficiaryID"].Text);
        int i = rdo.DeleteBeneficiary(oL);
        grid.Rebind();

    }
    protected void ButtonDelete_Load(object sender, EventArgs e)
    {
        RadAjaxManager radajaxmanager = (sender as Button).Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.FindControl("RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = (sender as Button).Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.FindControl("RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        Button btnRmove = (sender as Button).FindControl("ButtonDel") as Button;

        RadGrid grid = (sender as Button).Parent.Parent.Parent.Parent.Parent as RadGrid;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (btnRmove != null) && (grid != null))
        {
            radajaxmanager.AjaxSettings.AddAjaxSetting(btnRmove, grid, radajaxloading);
        }

    }
}