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

public partial class User_Control_BeneficiaryInformationUpdate : System.Web.UI.UserControl
{
    private static string _pensionID = "0";
    private static string _beneficiaryID = "0";
    private static bool _isUpdate = false;

    protected bool IsUpdate
    {
        set { _isUpdate = value; }
        get { return _isUpdate; }
    
    }
    public void RebindGrid ()
    {
        RadGridBeneficiary.Rebind();
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
    public DateTime? DateOfBirth
    {
        get { return RadDatePickerDateOfBirth.SelectedDate; }
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
    protected void BeneficiarySelectedFromGrid(object sender, BeneficiaryEventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();       

        this.LoadBeneficiaryPersonalDetail(_do.GetBeneficiaryPersonalDetailByBeneficiaryID(int.Parse(e.beneficiaryID)));
        this.LoadBeneficiaryContact(_do.GetBeneficiaryContactDetailByBeneficiaryID(int.Parse(e.beneficiaryID)));

        this.IsUpdate = true;

        //change label text of the RadButton
        //RadButton RadButtonSaveBeneficiary = new Utility().FindControlFromRoot(this, "RadButtonSaveBeneficiary") as RadButton;
        //if (RadButtonSaveBeneficiary != null) RadButtonSaveBeneficiary.Text = "Update Beneficiary Info";
       
    }
    public void LoadBeneficiaryContact(BeneficiaryContactDetail md)
    {
        this.pensionID = string.Format("{0}", md.pensionID);
        this.beneficiaryID = string.Format("{0}", md.beneficiaryID);
        this.eMail = md.email.Trim();
        this.phoneMobile = md.phoneMobile.Trim();
        this.phoneLandline = md.phoneLandline.Trim();
        this.postAddress = md.postAddress.Trim();
        this.homeState = string.Format("{0}", md.homeState);
        this.Address = md.address.Trim();

    }
    public void LoadBeneficiaryPersonalDetail(BeneficiaryPersonalDetail md)
    {
        this.pensionID = string.Format("{0}", md.pensionID);
        this.beneficiaryID = string.Format("{0}", md.beneficiaryID);
        this.firstName = md.firstName.Trim();
        this.lastName = md.lastName.Trim();
        this.Gender = md.gender.Trim();
        this.MaritalStatus = string.Format("{0}", md.maritalStatus);
        this.RelationID = string.Format("{0}", md.relationID);
        this.nationalID = md.nationalID.Trim();
        this.DateOfBirth = md.dateofBirth;       
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        
       // We have made the columnRemove invisible - uncomment only after changing to visible
        //GridTemplateColumn colDeleteBeneficiary = (GridTemplateColumn)RadGridBeneficiary.MasterTableView.GetColumn("columnRemove");
        //colDeleteBeneficiary.ItemTemplate = new RadGridBeneficiaryUpdateDeleteTemplate();
        //
        GridTemplateColumn colEditBeneficiary = (GridTemplateColumn)RadGridBeneficiary.MasterTableView.GetColumn("columnEdit");
        colEditBeneficiary.ItemTemplate = new RadGridBeneficiaryUpdateEditTemplate();
        (BeneficiaryToEditSession.BeneficiaryToEdit = new BeneficiaryToEdit()).OnBeneficiaryEditClicked += new BeneficiaryEventHandler(BeneficiarySelectedFromGrid); 
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

        
            BeneficiaryPersonalDetail aPD = new BeneficiaryPersonalDetail();
            BeneficiaryContactDetail contact = new BeneficiaryContactDetail();
            if (this.IsUpdate)
            {
                aPD.beneficiaryID = Int32.Parse(this.beneficiaryID);
                aPD.whoUpdated = Page.User.Identity.Name;
                aPD.dateUpdated = DateTime.Now;
            }
            else
            {
                aPD.beneficiaryID= int.Parse (this.beneficiaryID = string.Format("{0}", _do.GenBeneficiaryID()));
                aPD.whoCreated = Page.User.Identity.Name;
                aPD.dateCreated = DateTime.Now;
            }
            aPD.pensionID = Int32.Parse(this.pensionID);       
            //
            if (this.DateOfBirth.HasValue)
                aPD.dateofBirth = this.DateOfBirth.Value;
            aPD.maritalStatus = Int32.Parse(this.MaritalStatus);
            aPD.gender = this.Gender;
            aPD.relationID = Int32.Parse(this.RelationID);
            aPD.nationalID = this.nationalID;
            aPD.firstName = this.firstName;
            aPD.lastName = this.lastName;
            //
           
            //Get contact information
            //
            contact.pensionID = aPD.pensionID;
            contact.beneficiaryID = aPD.beneficiaryID;
            contact.email = this.eMail;
            contact.phoneMobile = this.phoneMobile;
            contact.phoneLandline = this.phoneLandline;
            contact.postAddress = this.postAddress;
            contact.homeState = Int32.Parse(this.homeState);
            contact.address = this.Address;
            contact.dateUpdated = DateTime.Now;
            contact.whoUpdated = Page.User.Identity.Name;

            // NOW SAVE BOTH THE PERSONAL AND CONTACT INFORMATION OF THE MEMBER
            _do.SaveBeneficiaryPersonalDetail(aPD);
            _do.SaveBeneficiaryContactDetail(contact);
            //MOVE FOCUS TO NEAR THE GRID
            RadTextBoxfirstName.Focus();
            RadGridBeneficiary.Rebind();

            //clear the controls
            ClearControls();
            this.IsUpdate = false;
        //}

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
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid grid = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridBeneficiary") as RadGrid;
        RadTextBox RadTextBoxfirstName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxfirstName") as RadTextBox;
        RadTextBox RadTextBoxlastName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxlastName") as RadTextBox;
        RadComboBox RadComboBoxgender = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxgender") as RadComboBox;
        RadDatePicker RadDatePickerDateOfBirth = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerDateOfBirth") as RadDatePicker;
        RadComboBox RadComboBoxmaritalStatus = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxmaritalStatus") as RadComboBox;
        RadComboBox RadComboBoxRelationship = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxRelationship") as RadComboBox;

        RadMaskedTextBox RadTextBoxnationalID = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxnationalID") as RadMaskedTextBox;
        RadTextBox RadTextBoxeMail = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxeMail") as RadTextBox;
        RadTextBox RadTextBoxPhoneMobile = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPhoneMobile") as RadTextBox;
        RadTextBox RadTextBoxPhoneLandline = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPhoneLandline") as RadTextBox;
        RadTextBox RadTextBoxPostAddress = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPostAddress") as RadTextBox;
        RadTextBox RadTextBoxAddress = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxAddress") as RadTextBox;

        RadComboBox RadComboBoxhomeState = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxhomeState") as RadComboBox;
        //RadComboBox RadComboBoxhomeState = (sender as RadButton).Parent.FindControl("RadComboBoxhomeState") as RadComboBox;
        RadButton RadButtonSaveBeneficiary = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonSaveBeneficiary") as RadButton;

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
//we have commented out because the colRemove has been made invisible inside the grid. uncomment after changing to visible
//public class RadGridBeneficiaryUpdateDeleteTemplate : System.Web.UI.ITemplate
//{
    
//    public void InstantiateIn(System.Web.UI.Control container)
//    {
//        Button ButtonDelete = new Button();
//        ButtonDelete.ID = "ButtonDelete";
//        ButtonDelete.Text = "Remove";
//        ButtonDelete.Click += new EventHandler(ButtonDelete_Click);
//        ButtonDelete.Load += new EventHandler(ButtonDelete_Load);
//        container.Controls.Add(ButtonDelete);
       

//    }
//    protected void ButtonDelete_Click(object sender, EventArgs e)
//    {
//        PSPITSDO rdo = new PSPITSDO();

//        BeneficiaryPersonalDetail oL = new BeneficiaryPersonalDetail();
      
//        RadGrid grid = (sender as Button).Parent.Parent.Parent.Parent.Parent as RadGrid;
//        GridTableView gridTable = (sender as Button).Parent.Parent.Parent.Parent as GridTableView;
//        GridItem gridItem = ((sender as Button).Parent.Parent as GridItem);
//        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
//        oL.pensionID = int.Parse(griddataItem["pensionID"].Text);
//        oL.beneficiaryID = int.Parse(griddataItem["beneficiaryID"].Text);
//        int i = rdo.DeleteBeneficiary(oL);
//        grid.Rebind();

//    }
   
//    protected void ButtonDelete_Load(object sender, EventArgs e)
//    {
//        Utility utl = new Utility();

//        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxManager1") as RadAjaxManager;
//        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

//        //Button btnRmove = (sender as Button).FindControl("ButtonDelete") as Button;
//        Button btnRmove = utl.FindControlToRootOnly((sender as Button).Parent, "ButtonDelete") as Button;
//        RadGrid grid = utl.FindControlToRootOnly((sender as Button).Parent, "RadGridBeneficiary") as RadGrid;

//        //RadGrid grid = (sender as Button).Parent.Parent.Parent.Parent.Parent as RadGrid;

//        //load only when non of the controls are null
//        if ((radajaxmanager != null) && (radajaxloading != null) && (btnRmove != null) && (grid != null))
//        {
//            radajaxmanager.AjaxSettings.AddAjaxSetting(btnRmove, grid, radajaxloading);
//        }

//    } 

   
//}
public class RadGridBeneficiaryUpdateEditTemplate : System.Web.UI.ITemplate
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
        RadGrid grid = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridBeneficiary") as RadGrid;
    
        GridTableView gridTable = (sender as RadButton).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as RadButton).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        _bArgs.pensionID= griddataItem["pensionID"].Text.Trim();
        _bArgs.beneficiaryID= griddataItem["beneficiaryID"].Text.Trim();
       
        BeneficiaryToEditSession.BeneficiaryToEdit.Beneficiary = _bArgs;
       

    }
  
    protected void ButtonEdit_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
       
        RadButton btnEdit = (sender as RadButton).FindControl("ButtonEdit") as RadButton;
        RadGrid grid = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridBeneficiary") as RadGrid;
        //COMBO BOXES CONTROLS
        RadComboBox RadComboBoxgender = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxgender") as RadComboBox;
        RadComboBox RadComboBoxmaritalStatus = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxmaritalStatus") as RadComboBox;
        RadComboBox RadComboBoxRelationship = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxRelationship") as RadComboBox;
        RadDatePicker RadDatePickerDateOfBirth = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerDateOfBirth") as RadDatePicker;
       
        //
        RadComboBox RadComboBoxhomeState = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxhomeState") as RadComboBox;
        
        //TEXT BOXES CONTROLS
        RadTextBox RadTextBoxfirstName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxfirstName") as RadTextBox;
        RadTextBox RadTextBoxlastName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxlastName") as RadTextBox;
        RadMaskedTextBox RadTextBoxnationalID = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxnationalID") as RadMaskedTextBox;
        RadTextBox RadTextBoxeMail = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxeMail") as RadTextBox;
        //
        RadTextBox RadTextBoxPhoneMobile = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPhoneMobile") as RadTextBox;
        RadTextBox RadTextBoxPhoneLandline = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPhoneLandline") as RadTextBox;
        RadTextBox RadTextBoxPostAddress = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPostAddress") as RadTextBox;
        RadTextBox RadTextBoxAddress = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxAddress") as RadTextBox;
        

        if ((radajaxmanager != null) && (radajaxloading != null) && (btnEdit != null) && (grid != null))
        {
            radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, grid, radajaxloading);
            if (RadComboBoxgender != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadComboBoxgender, null);
            if (RadComboBoxmaritalStatus != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadComboBoxmaritalStatus, null);
            if (RadComboBoxRelationship != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadComboBoxRelationship, null);
            if (RadDatePickerDateOfBirth != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadDatePickerDateOfBirth, null);
            if (RadComboBoxhomeState != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadComboBoxhomeState, null);
            //
            if (RadTextBoxfirstName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxfirstName, null);
            if (RadTextBoxlastName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxlastName, null);
            if (RadTextBoxnationalID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxnationalID, null);
            if (RadTextBoxeMail != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxeMail, null);
            if (RadTextBoxPhoneMobile != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxPhoneMobile, null);
            if (RadTextBoxPhoneLandline != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxPhoneLandline, null);
            if (RadTextBoxPostAddress != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxPostAddress, null);
            if (RadTextBoxAddress != null) radajaxmanager.AjaxSettings.AddAjaxSetting(btnEdit, RadTextBoxAddress, null);
        }

    }
}