using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using PSPITS.DAL.DATA;
using PSPITS.UIL;
using PSPITS.COMMON;
using PSPITS.MODEL;

public partial class User_Control_BeneficiaryEvidence : System.Web.UI.UserControl
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

    #region .public properties.

    public string FileExtension
    {
        get
        {
            return this.TheUploadedFile.GetExtension();
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

    public string FileOriginalName
    {

        get
        {
            return this.TheUploadedFile.GetName();
        }
    }

    public int FileSize
    {
        get
        {
            return this.TheUploadedFile.ContentLength;
        }
    }

    public byte[] FileContent
    {
        get
        {
            if (_uploadedfile != null)
            {
                byte[] bytes = new byte[this.FileSize];
                this.TheUploadedFile.InputStream.Read(bytes, 0, this.FileSize);
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
        RadGridBeneficiaryEvidence.Rebind();
        this.IsUpdate = false;
    }

    public string PensionID
    {
        get { return _pensionID; }
        set
        {
            _pensionID = value;

            RadTextBoxPensionID.Text = _pensionID;
        }
    }

    public string SchemeID
    {
        get { return _schemeID; }
        set
        {
            _schemeID = value;

            RadTextBoxSchemeID.Text = _schemeID;
        }
    }

    public int BeneficiaryID
    {
        get { return Int32.Parse(RadComboBoxName.SelectedValue); }
        set { RadComboBoxName.SelectedValue = value.ToString(); }
    }

    public int EvidenceID
    {
        get { return Int32.Parse(RadComboBoxEvidenceType.SelectedValue); }
        set { RadComboBoxEvidenceType.SelectedValue = value.ToString(); }
    }


    public string MemberName
    {
        get { return RadTextBoxMemberFullName.Text; }
        set { RadTextBoxMemberFullName.Text = value; }
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

    public string EvidencePresented
    {
        get { return RadComboBoxevidencePresented.SelectedValue; }
        set { RadComboBoxevidencePresented.SelectedValue = value; }
    }

    public string EvidenceAccepted
    {
        get { return RadComboBoxEvidenceAccepted.SelectedValue; }
        set { RadComboBoxEvidenceAccepted.SelectedValue = value; }
    }

    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.PensionID = this.PensionID.Length > 3 ? this.PensionID : "0";
            DisplayMemberNameAndPensionID(Int32.Parse(this.PensionID));
            LoadBeneficiaryNameCombo(Int32.Parse(this.PensionID));
            LoadComboBox();
        }
    }

    public void LoadBeneficiaryNameCombo(int pensionID)
    {
        //Load Gender comboBox
        RadComboBoxName.DataSource = new PSPITSDO().GetBeneficiaryFullName4ComboByPensionID(pensionID);
        RadComboBoxName.DataTextField = PSPITS.COMMON.Constants.COL_BENEFICIARY_FULLNAME;
        RadComboBoxName.DataValueField = PSPITS.COMMON.Constants.COL_BENEFICIARY_BENEFICIARYID;
        RadComboBoxName.DataBind();
    }

    public void DisplayMemberNameAndPensionID(int pensionID)
    {
        MemberPersonalDetail md = new PSPITSDO().GetMemberbyPensionID(pensionID);
        this.MemberName = string.Format("{0}{1}{2}", md.firstName, ' ', md.lastName);
        this.PensionID = string.Format("{0}", pensionID);
        this.RadTextBoxSchemeID.Text = new PSPITSDO().GetSchemeIDByPensionID(md.pensionID);
    }

    private void LoadComboBox()
    {
        //Load function combo box
        RadComboBoxEvidenceType.DataSource = new BeneficiaryEvidenceDO().BeneficiaryEvidenceList;
        RadComboBoxEvidenceType.DataTextField = PSPITS.COMMON.Constants.COL_LIST_EVIDENCEID;
        RadComboBoxEvidenceType.DataValueField = PSPITS.COMMON.Constants.COL_LIST_EVIDENCE;
        RadComboBoxEvidenceType.DataBind();
    }

    protected void RadButtonSaveEvidence_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid grid = utl.FindControlToRootOnly((sender as Button).Parent, "RadGridBeneficiaryEvidence") as RadGrid;
        RadTextBox RadTextBoxEvidenceVerifiedBy = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxEvidenceVerifiedBy") as RadTextBox;
        RadTextBox RadTextBoxComment = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxComment") as RadTextBox;
        
        RadComboBox RadComboBoxEvidenceType = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxEvidenceType") as RadComboBox;
        RadComboBox RadComboBoxName = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxName") as RadComboBox; 
        RadDatePicker RadDatePickerVerifiedOn = utl.FindControlToRootOnly((sender as Button).Parent, "RadDatePickerVerifiedOn") as RadDatePicker;
        //
        RadComboBox RadComboBoxevidencePresented = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxevidencePresented") as RadComboBox;
        RadComboBox RadComboBoxEvidenceAccepted = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxEvidenceAccepted") as RadComboBox;
        RadAsyncUpload RadAsyncUpload1 = utl.FindControlToRootOnly((sender as Button).Parent, "RadAsyncUpload1") as RadAsyncUpload;
        Label LabelUploadedFile = utl.FindControlToRootOnly((sender as Button).Parent, "LabelUploadedFile") as Label;

        Button RadButtonSaveEvidence = utl.FindControlToRootOnly((sender as Button).Parent, "RadButtonSaveEvidence") as Button;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonSaveEvidence != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveEvidence, grid, radajaxloading);
            if (RadComboBoxName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveEvidence, RadComboBoxName, null);
            if (RadComboBoxevidencePresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveEvidence, RadComboBoxevidencePresented, null);
            if (RadComboBoxEvidenceAccepted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveEvidence, RadComboBoxEvidenceAccepted, null);
            if (RadTextBoxEvidenceVerifiedBy != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveEvidence, RadTextBoxEvidenceVerifiedBy, null);
            if (RadTextBoxComment != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveEvidence, RadTextBoxComment, null);
            if (RadDatePickerVerifiedOn != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveEvidence, RadDatePickerVerifiedOn, null);
            if (LabelUploadedFile != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveEvidence, LabelUploadedFile, null);
        }
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        GridTemplateColumn colEditMemberEvidence = (GridTemplateColumn)RadGridBeneficiaryEvidence.MasterTableView.GetColumn("columnEdit");
        colEditMemberEvidence.ItemTemplate = new RadGridBeneficiaryEvidenceEditTemplate();
        (MemberEvidenceToEditSession.MemberEvidenceToEdit = new MemberEvidenceToEdit()).OnMemberEvidenceEditClicked += new MemberEvidenceEventHandler(MemberEvidenceSelectedFromGrid);
    }

    protected void MemberEvidenceSelectedFromGrid(object sender, MemberEvidenceEventArgs e)
    {
        BeneficiaryEvidence be = new BeneficiaryEvidenceDO().GetBeneficiaryEvidence(int.Parse(e.pensionID), int.Parse(e.evidencebyfunctionID));
        this.LoadMemberEvidenceDetail(be);
        this.IsUpdate = true;
    }
   
    public void LoadMemberEvidenceDetail(BeneficiaryEvidence be)
    {
        this.BeneficiaryID = be.beneficiaryID.ToString();
        this.EvidenceID = be.evidenceID.ToString();
        this.EvidencePresented = be.evidencePresented;
        this.EvidenceAccepted = be.evidenceAccepted;
        this.whoVerified = be.whoVerified;
        this.DateofVerification = be.dateVerified;
        this.RadTextBoxComment.Text = be.evidenceComment;
    }

    protected void RadGridEvidence_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
    {
        RadGridBeneficiaryEvidence.DataSource = new PSPITSDO().GetMemberEvidenceByPensionIDandFunctionID(Int32.Parse(this.PensionID), Int32.Parse(this.));
    }
    public void ClearControl()
    {
        Utility.EmptyControl(RadComboBoxName);
        Utility.EmptyControl(RadComboBoxEvidenceType);
        Utility.EmptyControl(RadDatePickerVerifiedOn);
        Utility.EmptyControl(RadTextBoxComment);
        Utility.EmptyControl(RadTextBoxEvidenceVerifiedBy);
        Utility.EmptyControl(RadComboBoxevidencePresented);
        Utility.EmptyControl(RadComboBoxEvidenceAccepted);
        Utility.EmptyControl(RadAsyncUpload1);
    }

    protected void RadButtonSaveEvidence_Click(object sender, EventArgs e)
    {
        BeneficiaryEvidence be = new BeneficiaryEvidence();
        be.beneficiaryID = this.BeneficiaryID;
        if (!this.IsUpdate && this.TheUploadedFile == null)
        {
            RebindGrid();
            LabelUploadedFile.Text = "No file was uploaded. CANNOT PROCEED!";
            return;
        }
        LabelUploadedFile.Text = "";
        if (!this.IsUpdate)
        {
            be.dateCreated = DateTime.Now;
            be.whoCreated = this.Page.User.Identity.Name;
        }
        else
        {
            be.dateUpdated = DateTime.Now;
            be.whoUpdated = this.Page.User.Identity.Name;
        }
        be.dateVerified = this.DateofVerification;
        be.evidenceAccepted = this.EvidenceAccepted;
        be.evidenceComment = this.RadTextBoxComment.Text;
        be.evidenceID = this.EvidenceID;
        be.evidencePresented = this.EvidencePresented;
        if (this.TheUploadedFile != null)
        {
            be.fileContent = this.FileContent;
            be.fileExtention = this.FileExtension;
            be.fileOriginalName = this.FileOriginalName;
            be.fileSize = this.FileSize;
        }
        be.pensionID = Int32.Parse(this.PensionID);
        be.whoVerified = this.whoVerified;
        new BeneficiaryEvidenceDO().SaveBeneficiaryEvidence(be);
        ClearControl();
        RebindGrid();
    }
}

public class RadGridBeneficiaryEvidenceEditTemplate : System.Web.UI.ITemplate
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
        RadGrid grid = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridBeneficiaryEvidence") as RadGrid;

        GridTableView gridTable = (sender as RadButton).Parent.Parent.Parent.Parent as GridTableView;
        GridItem gridItem = ((sender as RadButton).Parent.Parent as GridItem);
        GridDataItem griddataItem = gridTable.Items[gridItem.ItemIndex];
        _bArgs.pensionID = griddataItem[Constants.COL_BENEFICIARY_BENEFICIARYID].Text.Trim();
        _bArgs.evidencebyfunctionID = griddataItem[Constants.COL_LIST_EVIDENCEID].Text.Trim();
        //fire the Edit clicked event
        MemberEvidenceToEditSession.MemberEvidenceToEdit.MemberEvidence = _bArgs;
    }

    protected void ButtonEdit_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadGrid grid = utl.FindControlToRootOnly((sender as Button).Parent, "RadGridBeneficiaryEvidence") as RadGrid;
        RadTextBox RadTextBoxEvidenceVerifiedBy = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxEvidenceVerifiedBy") as RadTextBox;
        RadTextBox RadTextBoxComment = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxComment") as RadTextBox;

        RadComboBox RadComboBoxEvidenceType = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxEvidenceType") as RadComboBox;
        RadComboBox RadComboBoxName = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxName") as RadComboBox;
        RadDatePicker RadDatePickerVerifiedOn = utl.FindControlToRootOnly((sender as Button).Parent, "RadDatePickerVerifiedOn") as RadDatePicker;
        //
        RadComboBox RadComboBoxevidencePresented = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxevidencePresented") as RadComboBox;
        RadComboBox RadComboBoxEvidenceAccepted = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxEvidenceAccepted") as RadComboBox;
        RadAsyncUpload RadAsyncUpload1 = utl.FindControlToRootOnly((sender as Button).Parent, "RadAsyncUpload1") as RadAsyncUpload;
        Label LabelUploadedFile = utl.FindControlToRootOnly((sender as Button).Parent, "LabelUploadedFile") as Label;

        Button ButtonEdit = utl.FindControlToRootOnly((sender as Button).Parent, "ButtonEdit") as Button;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (ButtonEdit != null))
        {
            //now check if the various combo boxes have been found 
            if (grid != null) radajaxmanager.AjaxSettings.AddAjaxSetting(ButtonEdit, grid, radajaxloading);
            if (RadComboBoxName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(ButtonEdit, RadComboBoxName, null);
            if (RadComboBoxevidencePresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(ButtonEdit, RadComboBoxevidencePresented, null);
            if (RadComboBoxEvidenceAccepted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(ButtonEdit, RadComboBoxEvidenceAccepted, null);
            if (RadTextBoxEvidenceVerifiedBy != null) radajaxmanager.AjaxSettings.AddAjaxSetting(ButtonEdit, RadTextBoxEvidenceVerifiedBy, null);
            if (RadTextBoxComment != null) radajaxmanager.AjaxSettings.AddAjaxSetting(ButtonEdit, RadTextBoxComment, null);
            if (RadDatePickerVerifiedOn != null) radajaxmanager.AjaxSettings.AddAjaxSetting(ButtonEdit, RadDatePickerVerifiedOn, null);
            if (LabelUploadedFile != null) radajaxmanager.AjaxSettings.AddAjaxSetting(ButtonEdit, LabelUploadedFile, null);
        }
    }
}