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

public partial class User_Control_MemberServiceBreakEvidence : System.Web.UI.UserControl
{
    private static string _pensionID = "0";
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
    public string schemeID
    {
        get { return RadTextBoxSchemeID.Text; }
        set { RadTextBoxSchemeID.Text = value; }
    }
    public string serviceBreakID
    {
        get
        {
            if (RadComboBoxServiceBreak.SelectedIndex != -1)
                return RadComboBoxServiceBreak.SelectedValue;
            else
                return string.Empty;
        }
        set
        {
            RadComboBoxServiceBreak.SelectedValue = value;
        }
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

    public string evidenceSignedByTitle
    {
        get { return tbCertifyingOfficer.Text; }
        set { tbCertifyingOfficer.Text = value; }
    }

    public string evidenceSignedByName
    {
        get { return RadTextBoxCertifyingOfficerName.Text; }
        set { RadTextBoxCertifyingOfficerName.Text = value; }
    }

    public string whoVerified
    {
        get { return RadTextBoxCertifyingOfficerName.Text + " [" + tbCertifyingOfficer.Text + "]"; }        
    }

    public DateTime? dateofVerification
    {
        get
        {
            return RadDpEvidenceDate.SelectedDate;
        }
        set
        {
            RadDpEvidenceDate.SelectedDate = value;
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
        this.pensionID = string.Format("{0}", pensionID);          
    }

    public string evidenceAccepted
    {
        get { return RadComboBoxRadComboBoxevidenceAccepted.SelectedValue; }
        set { RadComboBoxRadComboBoxevidenceAccepted.SelectedValue = value; }
    }
    public string Comment
    {
        get { return tbEvidenceComment.Text; }
        set { tbEvidenceComment.Text = value; }
    }
    private void LoadComboBox()
    {

        ////Load day of birth comboBox
        //RadComboBoxdayofEvidence.DataSource = new PSPITSDO().GetDay();
        //RadComboBoxdayofEvidence.DataTextField = PSPITS.COMMON.Constants.COL_LIST_DAY;
        //RadComboBoxdayofEvidence.DataValueField = PSPITS.COMMON.Constants.COL_LIST_DAY;
        //RadComboBoxdayofEvidence.DataBind();
        ////Load month of birth comboBox
        //RadComboBoxmonthofEvidence.DataSource = new PSPITSDO().GetMonth();
        //RadComboBoxmonthofEvidence.DataTextField = PSPITS.COMMON.Constants.COL_LIST_MONTH;
        //RadComboBoxmonthofEvidence.DataValueField = PSPITS.COMMON.Constants.COL_LIST_MONTH;
        //RadComboBoxmonthofEvidence.DataBind();
        ////Load year of birth comboBox
        //RadComboBoxyearofEvidence.DataSource = new PSPITSDO().GetYear();
        //RadComboBoxyearofEvidence.DataTextField = PSPITS.COMMON.Constants.COL_LIST_YEAR;
        //RadComboBoxyearofEvidence.DataValueField = PSPITS.COMMON.Constants.COL_LIST_YEAR;
        //RadComboBoxyearofEvidence.DataBind();
        //Load service break combo box
        RadComboBoxServiceBreak.DataSource = new PSPITSDO().GetServiceBreakbyPensionID(Int32.Parse(this.pensionID));
        RadComboBoxServiceBreak.DataTextField = PSPITS.COMMON.Constants.COL_MEMBERSERVICEBREAK_TYPE;
        RadComboBoxServiceBreak.DataValueField = PSPITS.COMMON.Constants.COL_MEMBERSERVICEBREAK_ID;
        RadComboBoxServiceBreak.SelectedIndex = -1;
        RadComboBoxServiceBreak.EmptyMessage = "--Please Select--";    
        RadComboBoxServiceBreak.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //PSPITSDO _do = new PSPITSDO();
            //this.beneficiaryID = _do.PadCode(_do.GenBeneficiaryID(), 9);
            this.pensionID = this.pensionID.Trim().Length > 0 ? this.pensionID : "0";            
            LoadComboBox();
            EnableCombo(true);
            LabelUploadedFile.Text = "";
        }
    }

    protected void RadButtonAddEvidence_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        
        RadGrid grid = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadGridEvidence") as RadGrid;
        RadTextBox RadTextBoxpensionID = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxpensionID") as RadTextBox;
        RadTextBox RadTextBoxfullName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxfullName") as RadTextBox;
        RadTextBox tbCertifyingOfficer = utl.FindControlToRootOnly((sender as RadButton).Parent, "tbCertifyingOfficer") as RadTextBox;
        RadTextBox RadTextBoxComment = utl.FindControlToRootOnly((sender as RadButton).Parent, "tbEvidenceComment") as RadTextBox;
        RadTextBox RadTextBoxCertifyingOfficerName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxCertifyingOfficerName") as RadTextBox;
        RadDatePicker RadDpEvidenceDate = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDpEvidenceDate") as RadDatePicker;
        //
        //RadTextBox RadTextBoxevidenceRequired = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxevidenceRequired") as RadTextBox;
        //
        RadComboBox RadComboBoxServiceBreak = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxServiceBreak") as RadComboBox;
        RadComboBox RadComboBoxDisability = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxDisability") as RadComboBox;
        RadComboBox RadComboBoxDay = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxDay") as RadComboBox;
        RadComboBox RadComboBoxMonth = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxMonth") as RadComboBox;
        //
        RadComboBox RadComboBoxfunction = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxfunction") as RadComboBox;
        RadComboBox RadComboBoxYear = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxYear") as RadComboBox;
        RadComboBox RadComboBoxevidencePresented = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxevidencePresented") as RadComboBox;
        RadComboBox RadComboBoxRadComboBoxevidenceAccepted = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxRadComboBoxevidenceAccepted") as RadComboBox;
        RadAsyncUpload RadAsyncUpload1 = utl.FindControlToRootOnly((sender as RadButton).Parent, "asyncUploadEvidenceDoc") as RadAsyncUpload;
        Label LabelUploadedFile = utl.FindControlToRootOnly((sender as RadButton).Parent, "LabelUploadedFile") as Label;
          
        //RadComboBox RadComboBoxhomeState = (sender as RadButton).Parent.FindControl("RadComboBoxhomeState") as RadComboBox;
        //RadButton RadButtonEditEvidence = utl.FindControlToRootOnly((sender as RadButton).Parent, "ButtonEdit") as RadButton;
        RadButton RadButtonAddEvidence = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonAddEvidence") as RadButton;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonAddEvidence != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, grid, radajaxloading);
            if (RadTextBoxpensionID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxpensionID, null);
            if (RadTextBoxfullName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxfullName, null);
            if (RadComboBoxServiceBreak != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxServiceBreak, null);
            if (RadTextBoxevidenceRequired != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxevidenceRequired, null);
            if (RadComboBoxevidencePresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxevidencePresented, null);
            if (RadComboBoxRadComboBoxevidenceAccepted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxRadComboBoxevidenceAccepted, null);
            if (tbCertifyingOfficer != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, tbCertifyingOfficer, null);
            if (RadTextBoxComment != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxComment, null);
            if (RadComboBoxDay != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxDay, null);
            if (RadComboBoxMonth != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxMonth, null);
            if (RadComboBoxYear != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxYear, null);
            if (RadComboBoxfunction != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadComboBoxfunction, null);
            if (LabelUploadedFile != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, LabelUploadedFile, null);
            if (RadTextBoxCertifyingOfficerName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadTextBoxCertifyingOfficerName, null);            
            //
            if (RadAsyncUpload1 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadAsyncUpload1, null);
            if (RadDpEvidenceDate != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonAddEvidence, RadDpEvidenceDate, null);
           //LET AJAX ALSO KNOW THAT THE EVIDENCE TYPE COMBO POSTBOX AFFECTS THE REQUIRED EVIDENCE TEXTBOX
            if (RadTextBoxevidenceRequired != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxServiceBreak, RadTextBoxevidenceRequired, null);
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
        (MemberServiceBreakEvidenceToEditSession.MemberServiceBreakEvidenceToEdit = new MemberServiceBreakEvidenceToEdit()).OnMemberServiceBreakEvidenceToEditClicked += new MemberEvidenceEventHandler(MemberEvidenceSelectedFromGrid);
        
    }
    protected void MemberEvidenceSelectedFromGrid(object sender, MemberEvidenceEventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();

        this.LoadMemberEvidenceDetail(_do.GetMemberEmploymentServiceBreakEvidenceByPensionAndServiceBreakID(int.Parse(e.pensionID), int.Parse(e.servicebreakID)));
        this.IsUpdate = true;
        EnableCombo(false);
    }

    private void EnableCombo(bool enable)
    {
        RadComboBox RadComboBoxServiceBreak = new Utility().FindControlToRootOnly(this, "RadComboBoxServiceBreak") as RadComboBox;
        RadComboBoxServiceBreak.Enabled = enable;
    }
   
    public void LoadMemberEvidenceDetail(MemberServiceBreakEvidenceDetail md)
    {
        this.pensionID = string.Format("{0}", md.pensionID);
        this.memberName = md.memberfullName.Trim();
        this.evidencePresented = md.evidencePresented.Trim();
        this.evidenceAccepted = md.evidenceAccepted.Trim();
        this.evidenceSignedByTitle = md.evidenceSignedByTitle;
        this.evidenceSignedByName = md.evidenceSignedByName;
        this.Comment = md.evidenceComment.Trim();
        this.serviceBreakID = string.Format("{0}", md.serviceBreakID);
        this.dateofVerification = md.evidenceDated;
        this.Evidence = "Authorization Letter";
        //        
        //this.dayofVerification = string.Format("{0}", md.dateVerified.Day);
        //this.monthofVerification = string.Format("{0}", DateTimeHandler.Month(md.dateVerified));
        //this.yearofVerification = string.Format("{0}", md.dateVerified.Year);
        //file attributes
        //this.fileContent = md.fileContent;
        //this.filecontentType = md.filecontentType.Trim();
        //this.fileOriginalName = md.fileOriginalName.Trim();
        //this.fileSize = md.fileSize;

    }
    protected void RadGridEvidence_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        int pId = 0;
        if (Int32.TryParse(this.pensionID, out pId))
            RadGridEvidence.DataSource = new PSPITSDO().GetMemberEmploymentServiceBreakEvidenceByPensionID(Int32.Parse(this.pensionID));
    }
    public void ClearControl()
    {
        Utility.EmptyControl(RadTextBoxevidenceRequired);
        Utility.EmptyControl(RadComboBoxServiceBreak);
        Utility.EmptyControl(tbCertifyingOfficer);
        Utility.EmptyControl(RadTextBoxCertifyingOfficerName);
        Utility.EmptyControl(RadComboBoxevidencePresented);
        Utility.EmptyControl(RadComboBoxRadComboBoxevidenceAccepted);
        //Utility.EmptyControl(asyncUploadEvidenceDoc);
        Utility.EmptyControl(tbEvidenceComment);
        Utility.EmptyControl(RadDpEvidenceDate);
    }

    protected void RadButtonAddEvidence_Click(object sender, EventArgs e)
    {
        MemberServiceBreakEvidenceDetail aPD = new MemberServiceBreakEvidenceDetail();

        //No need to proceed if service break is not captured
        if (this.serviceBreakID.Trim() == string.Empty)
            return;
        aPD.serviceBreakID = Int32.Parse(this.serviceBreakID);        
        if (!_isUpdate)
        {
            aPD.whoCreated = "admin";
            aPD.dateCreated = DateTime.Now;
        }
        _isUpdate = false;
        aPD.whoUpdated = "admin";
        aPD.dateUpdated = DateTime.Now;

        if (this.TheUploadedFile == null)
        {
            RebindGrid();
            LabelUploadedFile.Text = "No file was uploaded. CANNOT PROCEED!";
            return;
        }
        LabelUploadedFile.Text = "";
                
        aPD.pensionID = Int32.Parse(this.pensionID);
        aPD.evidencePresented = this.evidencePresented;
        aPD.evidenceAccepted = this.evidenceAccepted;

        aPD.evidenceDated = this.dateofVerification;
        aPD.evidenceSignedByTitle = this.evidenceSignedByTitle;
        aPD.evidenceSignedByName = this.evidenceSignedByName;
        aPD.whoVerified = this.whoVerified.Trim();
        if (this.dateofVerification.HasValue)
        {
            aPD.dateVerified = this.dateofVerification.Value;
            aPD.evidenceDated = this.dateofVerification.Value;
        }
        //Evidence attributes
        aPD.fileOriginalName = this.fileOriginalName.Trim();
       // aPD.filecontentType = this.filecontentType.Trim();
        aPD.filecontentType = aPD.fileOriginalName.Substring(aPD.fileOriginalName.LastIndexOf('.') + 1).ToUpper();
        aPD.fileSize = this.fileSize;
        aPD.fileContent = this.fileContent;
        //
        aPD.evidenceComment = this.Comment.Trim();
        new PSPITSDO().SaveMemberServiceBreakEvidenceDetail(aPD);
        RadGridEvidence.Rebind();
        //clear the controls
        ClearControl();
        EnableCombo(true);
        this.DisplayMemberNameAndPensionID(int.Parse(this.pensionID));
        
        RadGridEvidence.Focus();
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
       LoadTypeOfEvidenceCombo( int.Parse (this.serviceBreakID = e.Value));
       RadTextBoxevidenceRequired.Text = string.Empty;
    }
    public void LoadTypeOfEvidenceCombo(int functionID)
    {
        //Load evidencetype comboBox
        RadComboBoxServiceBreak.DataSource = new PSPITSDO().GetEvidenceType4ComboByFunctionID(int.Parse(this.serviceBreakID));
        RadComboBoxServiceBreak.DataTextField = PSPITS.COMMON.Constants.COL_LIST_EVIDENCETYPE;
        RadComboBoxServiceBreak.DataValueField = PSPITS.COMMON.Constants.COL_LIST_EVIDENCETYPEID;
        RadComboBoxServiceBreak.DataBind();    
      
    }
    protected void RadComboBoxevidenceType_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        //EvidenceDetail ed = new PSPITSDO().GetEvidenceType(int.Parse(e.Value));
        RadTextBoxevidenceRequired.Text = "Authorization Letter";
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
        _bArgs.servicebreakID = griddataItem["servicebreakID"].Text.Trim();
        //fire the Edit clicked event
        MemberServiceBreakEvidenceToEditSession.MemberServiceBreakEvidenceToEdit.MemberEvidence = _bArgs;
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
        RadTextBox tbCertifyingOfficer = utl.FindControlToRootOnly((sender as RadButton).Parent, "tbCertifyingOfficer") as RadTextBox;
        RadTextBox RadTextBoxComment = utl.FindControlToRootOnly((sender as RadButton).Parent, "tbEvidenceComment") as RadTextBox;
        RadTextBox RadTextBoxCertifyingOfficerName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxCertifyingOfficerName") as RadTextBox;
        
        //RadComboBox1
        
        //RadComboBox RadComboBoxevidenceType = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxevidenceType") as RadComboBox;
        //RadComboBox RadComboBoxDisability = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxDisability") as RadComboBox;
        //RadComboBox RadComboBoxDay = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxDay") as RadComboBox;
        //RadComboBox RadComboBoxMonth = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxMonth") as RadComboBox;
        //

        //RadComboBox RadComboBoxfunction = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxfunction") as RadComboBox;
        //RadComboBox RadComboBoxYear = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxYear") as RadComboBox;
        RadComboBox RadComboBoxServiceBreak = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxServiceBreak") as RadComboBox;
        RadComboBox RadComboBoxevidencePresented = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxevidencePresented") as RadComboBox;
        RadComboBox RadComboBoxRadComboBoxevidenceAccepted = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxRadComboBoxevidenceAccepted") as RadComboBox;
        RadAsyncUpload RadAsyncUpload1 = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAsyncUpload1") as RadAsyncUpload;

        RadDatePicker RadDpEvidenceDate = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDpEvidenceDate") as RadDatePicker;
        
        RadButton RadButtonEditEvidence = utl.FindControlToRootOnly((sender as RadButton).Parent, "ButtonEdit") as RadButton;
      
        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonEditEvidence != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, grid, radajaxloading);
            if (RadTextBoxpensionID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxpensionID, null);
            if (RadTextBoxfullName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxfullName, null);
            if (RadComboBoxServiceBreak != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadComboBoxServiceBreak, null);
            if (RadTextBoxevidenceRequired != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxevidenceRequired, null);
            if (RadComboBoxevidencePresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadComboBoxevidencePresented, null);
            if (RadComboBoxRadComboBoxevidenceAccepted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadComboBoxRadComboBoxevidenceAccepted, null);
            if (tbCertifyingOfficer != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, tbCertifyingOfficer, null);
            if (RadTextBoxComment != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxComment, null);
            if (RadTextBoxCertifyingOfficerName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadTextBoxCertifyingOfficerName, null);            
            //
            if (RadAsyncUpload1 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadAsyncUpload1, null);
            if (RadDpEvidenceDate != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonEditEvidence, RadDpEvidenceDate, null);
            //if (RadComboBoxevidenceType != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxfunction, RadTextBoxevidenceRequired, null);
            //LET AJAX ALSO KNOW THAT THE EVIDENCE TYPE COMBO POSTBOX AFFECTS THE REQUIRED EVIDENCE TEXTBOX
            //if (RadTextBoxevidenceRequired != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxevidenceType, RadTextBoxevidenceRequired, null); 
        }        
    }
}