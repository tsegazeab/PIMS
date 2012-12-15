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

public partial class User_Control_MemberEvidence : System.Web.UI.UserControl
{
    private static string _pensionID = "0";
    private static string _schemeID = "";
    private static string _evidencebyfunctionID = "0";
    private static string _filecontenttype = string.Empty;
    private static string _fileoriginalname = string.Empty;
    private static string _memberfullname = string.Empty;
    private static byte[] _filecontent;
   // private static int _filesize;
    private static bool _isUpdate = false;
    private static UploadedFile _uploadedfile;
   //
    public string filecontentType 
    {
        
        get 
        { 
            return this.TheUploadedFile.ContentType; 
        } 
    }
    public UploadedFile TheUploadedFile
    {
        set
        {
            _uploadedfile = value;
        }
        get
        {
            return _uploadedfile;
        }
    }
    public string fileOriginalName
    {
      
        get
        {
            return this.TheUploadedFile.GetName();
        }
    }
    public int fileSize
    {
       get
        {
            return this.TheUploadedFile.ContentLength;
        }
    }
    public byte[] fileContent
    {
       get
        {
            if (_uploadedfile != null)
            {
                byte[] bytes = new byte[this.fileSize];
                this.TheUploadedFile.InputStream.Read(bytes, 0, this.fileSize);
                return bytes;
            }
            else return new byte[0];
        }
        set { _filecontent = value; }
    }
    protected bool IsUpdate
    {
        set { _isUpdate = value; }
        get { return _isUpdate; }

    }
    public string EvidenceByFunctionID
    {
        set { _evidencebyfunctionID = value; }
        get { return _evidencebyfunctionID; }
    
    }
    public void RebindGrid()
    {
        RadGridEvidence.Rebind();
        this.IsUpdate = false;
    }
    public string pensionID
    {
        get { return _pensionID; }
        set {  _pensionID = value;

        RadTextBoxpensionID.Text = _pensionID;
        }
    }
    public string functionID
    {
        get { return RadComboBoxfunction.SelectedValue; }
        set { RadComboBoxfunction.SelectedValue = value; }
    }
   
    public string memberName
    {
        get { return RadTextBoxfullName.Text; }
        set { RadTextBoxfullName.Text = value; }
    }
    public string Evidence
    {
        get { return RadTextBoxevidenceRequired.Text; }
        set { RadTextBoxevidenceRequired.Text = value; }
    }
    public string evidenceType
    {
        get { return RadComboBoxevidenceType.SelectedValue; }
        set { RadComboBoxevidenceType.SelectedValue = value; }
    }
    public string whoVerified
    {
        get { return RadTextBoxEvidenceVerifiedBy.Text; }
        set { RadTextBoxEvidenceVerifiedBy.Text = value; }
    }

    public DateTime? DateofVerification
    {
        get
        {
            return RadDatePickerVerifiedOn.SelectedDate;
        }
        set
        {
            RadDatePickerVerifiedOn.SelectedDate = value;
        }

    }
    public string evidencePresented
    {
        get { return RadComboBoxevidencePresented.SelectedValue; }
        set { RadComboBoxevidencePresented.SelectedValue = value; }
    }

    public void DisplayMemberNameAndPensionID(int pensionID)
    {
        MemberPersonalDetail md = new PSPITSDO().GetMemberbyPensionID(pensionID);
        this.memberName= string.Format("{0}{1}{2}", md.firstName, ' ', md.lastName);
        RadTextBoxpensionID.Text= string.Format("{0}", pensionID);
        RadTextBoxSchemeID.Text = new PSPITSDO().GetSchemeIDByPensionID(pensionID);
        this.pensionID = string.Format("{0}", pensionID);          
    }

    public string evidenceAccepted
    {
        get { return RadComboBoxRadComboBoxevidenceAccepted.SelectedValue; }
        set { RadComboBoxRadComboBoxevidenceAccepted.SelectedValue = value; }
    }
    public string Comment
    {
        get { return RadTextBoxComment.Text; }
        set { RadTextBoxComment.Text = value; }
    }
    private void LoadComboBox()
    {
        //Load function combo box
        RadComboBoxfunction.DataSource = new PSPITSDO().GetMemberFunctions();
        RadComboBoxfunction.DataTextField = PSPITS.COMMON.Constants.COL_LIST_FUNCTION;
        RadComboBoxfunction.DataValueField = PSPITS.COMMON.Constants.COL_LIST_FUNCTIONID;
        RadComboBoxfunction.DataBind();
        //

        LoadTypeOfEvidenceCombo(int.Parse(this.functionID));
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //PSPITSDO _do = new PSPITSDO();
            //this.beneficiaryID = _do.PadCode(_do.GenBeneficiaryID(), 9);
            this.pensionID = this.pensionID.Trim().Length > 3 ? this.pensionID : "0";
            //Yes, at the start, lets be explicit and say that we are working with the member's registration function only
            this.functionID = "1277";
            LabelUploadedFile.Text = "";
            LoadComboBox();

        }
    }

    protected void RadButtonAddEvidence_Load(object sender, EventArgs e)
    {


        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid grid = utl.FindControlToRootOnly((sender as Button).Parent, "RadGridEvidence") as RadGrid;
        RadTextBox RadTextBoxpensionID = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxpensionID") as RadTextBox;
        RadTextBox RadTextBoxfullName = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxfullName") as RadTextBox;
        RadTextBox RadTextBoxevidenceRequired = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxevidenceRequired") as RadTextBox;
        RadTextBox RadTextBoxEvidenceVerifiedBy = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxEvidenceVerifiedBy") as RadTextBox;
        RadTextBox RadTextBoxComment = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxComment") as RadTextBox;
        //
        //RadTextBox RadTextBoxevidenceRequired = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxevidenceRequired") as RadTextBox;
        //
        RadComboBox RadComboBoxevidenceType = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxevidenceType") as RadComboBox;
        RadComboBox RadComboBoxDisability = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxDisability") as RadComboBox;
        RadDatePicker RadDatePickerVerifiedOn = utl.FindControlToRootOnly((sender as Button).Parent, "RadDatePickerVerifiedOn") as RadDatePicker;        
        //
        RadComboBox RadComboBoxfunction = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxfunction") as RadComboBox;
        RadComboBox RadComboBoxevidencePresented = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxevidencePresented") as RadComboBox;
        RadComboBox RadComboBoxRadComboBoxevidenceAccepted = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxRadComboBoxevidenceAccepted") as RadComboBox;
        RadAsyncUpload RadAsyncUpload1 = utl.FindControlToRootOnly((sender as Button).Parent, "RadAsyncUpload1") as RadAsyncUpload;
        Label LabelUploadedFile = utl.FindControlToRootOnly((sender as Button).Parent, "LabelUploadedFile") as Label;
          
        //RadComboBox RadComboBoxhomeState = (sender as RadButton).Parent.FindControl("RadComboBoxhomeState") as RadComboBox;
        //RadButton RadButtonEditEvidence = utl.FindControlToRootOnly((sender as RadButton).Parent, "ButtonEdit") as RadButton;
        Button RadButtonAddEvidence = utl.FindControlToRootOnly((sender as Button).Parent, "RadButtonAddEvidence") as Button;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonAddEvidence != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, grid, radajaxloading);
            if (RadTextBoxpensionID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxpensionID, null);
            if (RadTextBoxfullName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxfullName, null);
            if (RadComboBoxevidenceType != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxevidenceType, null);
            if (RadTextBoxevidenceRequired != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxevidenceRequired, null);
            if (RadComboBoxevidencePresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxevidencePresented, null);
            if (RadComboBoxRadComboBoxevidenceAccepted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxRadComboBoxevidenceAccepted, null);
            if (RadTextBoxEvidenceVerifiedBy != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxEvidenceVerifiedBy, null);
            if (RadTextBoxComment != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxComment, null);
            if (RadDatePickerVerifiedOn != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadDatePickerVerifiedOn, null);
            if (RadComboBoxfunction != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxfunction, null);
            if (LabelUploadedFile != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, LabelUploadedFile, null);
            //
            if (RadAsyncUpload1 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadAsyncUpload1, null);
            //LET AJAX MANAGER ALSO KNOW THAT THE FUNCTIONCOMBO COMBO AFFECTS THE EVIDENCETYPECOMBO
            if (RadComboBoxevidenceType != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxfunction, RadComboBoxevidenceType, null);
            if (RadComboBoxevidenceType != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxfunction, RadTextBoxevidenceRequired, null);
           //LET AJAX ALSO KNOW THAT THE EVIDENCE TYPE COMBO POSTBOX AFFECTS THE REQUIRED EVIDENCE TEXTBOX
            if (RadTextBoxevidenceRequired != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxevidenceType, RadTextBoxevidenceRequired, null);
      }        
   }
    protected void Page_Init(object sender, EventArgs e)
    {

        // We have made the columnRemove invisible - uncomment only after changing to visible
        //GridTemplateColumn colDeleteBeneficiary = (GridTemplateColumn)RadGridBeneficiary.MasterTableView.GetColumn("columnRemove");
        //colDeleteBeneficiary.ItemTemplate = new RadGridBeneficiaryUpdateDeleteTemplate();
        //
        GridTemplateColumn colEditMemberEvidence = (GridTemplateColumn)RadGridEvidence.MasterTableView.GetColumn("columnEdit");
        colEditMemberEvidence.ItemTemplate = new RadGridMemberEvidenceEditTemplate();
        (MemberEvidenceToEditSession.MemberEvidenceToEdit = new MemberEvidenceToEdit()).OnMemberEvidenceEditClicked += new MemberEvidenceEventHandler(MemberEvidenceSelectedFromGrid);
        
    }
    protected void MemberEvidenceSelectedFromGrid(object sender, MemberEvidenceEventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();

        this.LoadMemberEvidenceDetail(_do.GetMemberEvidenceByPensionIDandEvidenceByFunctionID(int.Parse(e.pensionID), int.Parse(e.evidencebyfunctionID)));
        this.IsUpdate = true;

        ////Do not allow user to change beneficiary when in edit mode
        //RadComboBox RadComboBoxName = new Utility().FindControlFromRoot(this, "RadComboBoxName") as RadComboBox;
        //if (RadComboBoxName != null) RadComboBoxName.Enabled = false;

    }
   
    public void LoadMemberEvidenceDetail(MemberEvidenceDetail md)
    {
        this.pensionID = string.Format("{0}", md.pensionID);
        this.RadTextBoxSchemeID.Text = new PSPITSDO().GetSchemeIDByPensionID(md.pensionID);
        this.memberName = md.memberfullName.Trim();
        this.evidenceType = string.Format("{0}", md.EvidenceTypeID);
        this.Evidence = md.Evidence.Trim();
        this.evidencePresented = md.evidencePresented.Trim();
        this.evidenceAccepted = md.evidenceAccepted.Trim();
        this.whoVerified = md.whoVerified.Trim();
        this.Comment = md.evidenceComment.Trim();
        this.functionID = string.Format("{0}", new PSPITSDO().GetEvidenceType(md.EvidenceTypeID).FunctionID);
        //      
        this.DateofVerification = md.dateVerified;
        //file attributes
        //this.fileContent = md.fileContent;
        //this.filecontentType = md.filecontentType.Trim();
        //this.fileOriginalName = md.fileOriginalName.Trim();
        //this.fileSize = md.fileSize;

    }
    protected void RadGridEvidence_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        RadGridEvidence.DataSource = new PSPITSDO().GetMemberEvidenceByPensionIDandFunctionID(Int32.Parse(this.pensionID), Int32.Parse(this.functionID));
    }
    public void ClearControl()
    {

        Utility.EmptyControl(RadTextBoxpensionID);
        Utility.EmptyControl(RadTextBoxfullName);
        Utility.EmptyControl(RadDatePickerVerifiedOn);
        Utility.EmptyControl(RadTextBoxComment);
        Utility.EmptyControl(RadTextBoxEvidenceVerifiedBy);
        Utility.EmptyControl(RadComboBoxevidencePresented);
        Utility.EmptyControl(RadComboBoxRadComboBoxevidenceAccepted);
        Utility.EmptyControl(RadComboBoxevidenceType);
        Utility.EmptyControl(RadComboBoxfunction);
        Utility.EmptyControl(RadTextBoxevidenceRequired);
    }

    protected void RadButtonAddEvidence_Click(object sender, EventArgs e)
    {
        
        MemberEvidenceDetail aPD = new MemberEvidenceDetail();
        if (!this.IsUpdate && this.TheUploadedFile == null)
        {
            RebindGrid();
            LabelUploadedFile.Text = "No file was uploaded. CANNOT PROCEED!";
            return;
        }
        LabelUploadedFile.Text = "";
        if (this.IsUpdate)
        {
            //aPD.serviceBreakID = Int32.Parse(this.serviceBreakID);
            aPD.whoUpdated = Page.User.Identity.Name;
            aPD.dateUpdated = DateTime.Now;
        }
        else
        {
            //aPD.serviceBreakID = int.Parse(this.serviceBreakID = string.Format("{0}", rdo.GenServiceBreakID()));
            aPD.whoCreated = Page.User.Identity.Name;
            aPD.dateCreated = DateTime.Now;
        }
        aPD.pensionID = Int32.Parse(this.pensionID);
        aPD.EvidenceByFunctionID = Int32.Parse(this.EvidenceByFunctionID);
        aPD.EvidenceTypeID = Int32.Parse(this.evidenceType);
        aPD.evidencePresented = this.evidencePresented.Trim();
        aPD.evidenceAccepted = this.evidenceAccepted.Trim();
        aPD.whoVerified = this.whoVerified.Trim();
        if (this.DateofVerification.HasValue)
            aPD.dateVerified = this.DateofVerification.Value;
        //Evidence attributes        
        if (this.TheUploadedFile != null)
        {
            aPD.fileOriginalName = this.fileOriginalName.Trim();
            aPD.filecontentType = this.filecontentType;
            aPD.fileSize = this.fileSize;
            aPD.fileContent = this.fileContent;
        }
        //
        aPD.evidenceComment = this.Comment.Trim();
        new PSPITSDO().SaveMemberEvidenceDetail(aPD);
        RebindGrid();
        //clear the controls
        ClearControl();
        this.DisplayMemberNameAndPensionID(int.Parse(this.pensionID));
        //enable selection of beneficiary 
        //RadComboBox RadComboBoxName = new Utility().FindControlFromRoot(this, "RadComboBoxName") as RadComboBox;
        //if (RadComboBoxName != null) RadComboBoxName.Enabled = true;
    }

    protected void RadAsyncUpload1_FileUploaded(object sender, FileUploadedEventArgs e)
    {
        this.TheUploadedFile = e.File;
    }
    protected void RadComboBoxfunction_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
       LoadTypeOfEvidenceCombo( int.Parse (this.functionID = e.Value));
       RadTextBoxevidenceRequired.Text = string.Empty;
    }
    public void LoadTypeOfEvidenceCombo(int functionID)
    {
        //Load evidencetype comboBox
        RadComboBoxevidenceType.DataSource = new PSPITSDO().GetEvidenceType4ComboByFunctionID(int.Parse(this.functionID));
        RadComboBoxevidenceType.DataTextField = PSPITS.COMMON.Constants.COL_LIST_EVIDENCETYPE;
        RadComboBoxevidenceType.DataValueField = PSPITS.COMMON.Constants.COL_LIST_EVIDENCETYPEID;
        RadComboBoxevidenceType.DataBind();    
      
    }
    protected void RadComboBoxevidenceType_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        if (e.Value.ToString().Trim() == string.Empty)
            return;
        EvidenceDetail ed = new PSPITSDO().GetEvidenceType(int.Parse(e.Value));
        RadTextBoxevidenceRequired.Text = ed.Evidence.Trim();
        this.EvidenceByFunctionID = string.Format("{0}", ed.EvidenceByFunctionID);
    }
}

public class RadGridMemberEvidenceEditTemplate : System.Web.UI.ITemplate
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
        MemberEvidenceEventArgs _bArgs = new MemberEvidenceEventArgs();
        RadGrid grid = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridEvidence") as RadGrid;

        GridTableView gridTable = (sender as RadButton).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as RadButton).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        _bArgs.pensionID = griddataItem["pensionID"].Text.Trim();
        _bArgs.evidencebyfunctionID = griddataItem["EvidenceByFunctionID"].Text.Trim();
        //fire the Edit clicked event
        MemberEvidenceToEditSession.MemberEvidenceToEdit.MemberEvidence = _bArgs;

    }
    
    protected void ButtonEdit_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid grid = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridEvidence") as RadGrid;
        RadTextBox RadTextBoxpensionID = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxpensionID") as RadTextBox;
        RadTextBox RadTextBoxfullName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxfullName") as RadTextBox;
        RadTextBox RadTextBoxevidenceRequired = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxevidenceRequired") as RadTextBox;
        RadTextBox RadTextBoxEvidenceVerifiedBy = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxEvidenceVerifiedBy") as RadTextBox;
        RadTextBox RadTextBoxComment = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxComment") as RadTextBox;

        //RadComboBox1        
        RadComboBox RadComboBoxevidenceType = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxevidenceType") as RadComboBox;
        RadComboBox RadComboBoxDisability = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxDisability") as RadComboBox;
        RadDatePicker RadDatePickerVerifiedOn = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerVerifiedOn") as RadDatePicker;        
        //

        RadComboBox RadComboBoxfunction = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxfunction") as RadComboBox;
        RadComboBox RadComboBoxevidencePresented = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxevidencePresented") as RadComboBox;
        RadComboBox RadComboBoxRadComboBoxevidenceAccepted = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxRadComboBoxevidenceAccepted") as RadComboBox;
        RadAsyncUpload RadAsyncUpload1 = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAsyncUpload1") as RadAsyncUpload;
        
        RadButton RadButtonEditEvidence = utl.FindControlToRootOnly((sender as RadButton).Parent, "ButtonEdit") as RadButton;
      
        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonEditEvidence != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, grid, radajaxloading);
            if (RadTextBoxpensionID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxpensionID, null);
            if (RadTextBoxfullName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxfullName, null);
            if (RadComboBoxevidenceType != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadComboBoxevidenceType, null);
            if (RadTextBoxevidenceRequired != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxevidenceRequired, null);
            if (RadComboBoxevidencePresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadComboBoxevidencePresented, null);
            if (RadComboBoxRadComboBoxevidenceAccepted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadComboBoxRadComboBoxevidenceAccepted, null);
            if (RadTextBoxEvidenceVerifiedBy != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxEvidenceVerifiedBy, null);
            if (RadTextBoxComment != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxComment, null);
            if (RadDatePickerVerifiedOn != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadDatePickerVerifiedOn, null);
            if (RadComboBoxfunction != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadComboBoxfunction, null);
            //
            if (RadAsyncUpload1 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadAsyncUpload1, null);
            if (RadComboBoxevidenceType != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxfunction, RadComboBoxevidenceType, null);
            if (RadComboBoxevidenceType != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxfunction, RadTextBoxevidenceRequired, null);
            //LET AJAX ALSO KNOW THAT THE EVIDENCE TYPE COMBO POSTBOX AFFECTS THE REQUIRED EVIDENCE TEXTBOX
            if (RadTextBoxevidenceRequired != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxevidenceType, RadTextBoxevidenceRequired, null);
        }        
    }
}