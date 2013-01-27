using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;
using PSPITS.UIL;
using PSPITS.MODEL;
using Telerik.Web.UI;
using Telerik.Charting;
using System.Web.UI.WebControls;
using PSPITS.DAL.DATA.Membership;

public partial class User_Control_RegisterDeath : System.Web.UI.UserControl
{
    private static string _pensionID = "0";
    private static string _schemeID = "";
    private static string _filecontenttype = string.Empty;
    private static string _fileoriginalname = string.Empty;
    private static string _memberFullName = string.Empty;
    private static byte[] _filecontent;
    // private static int _filesize;
    private static bool _isUpdate = false;
    private static UploadedFile _uploadedfile;
    //

    #region .public properties.

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

    public string PensionID
    {
        get { return _pensionID; }
        set
        {
            _pensionID = value;
            RadTextBoxPensionID.Text = _pensionID;
        }
    }

    public string MemberFullName
    {
        get { return RadTextBoxMemberFullName.Text; }
        set { RadTextBoxMemberFullName.Text = value; }
    }

    public string DeathCertificateNumber
    {
        get { return RadTextBoxDeathCertificateNumber.Text; }
        set { RadTextBoxDeathCertificateNumber.Text = value; }
    }

    public string WhoVerified
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

    public bool EvidencePresented
    {
        get { return Boolean.Parse(RadComboBoxEvidencePresented.SelectedValue); }
        set { RadComboBoxEvidencePresented.SelectedValue = value.ToString(); }
    }

    public void DisplayMemberNameAndPensionID(int pensionID)
    {
        MemberPersonalDetail md = new PSPITSDO().GetMemberbyPensionID(pensionID);
        this.MemberFullName = string.Format("{0}{1}{2}", md.firstName, ' ', md.lastName);
        RadTextBoxPensionID.Text = string.Format("{0}", pensionID);
        RadTextBoxSchemeID.Text = new PSPITSDO().GetSchemeIDByPensionID(pensionID);
        this.PensionID = string.Format("{0}", pensionID);
    }

    public bool EvidenceAccepted
    {
        get { return Boolean.Parse(RadComboBoxRadComboBoxEvidenceAccepted.SelectedValue); }
        set { RadComboBoxRadComboBoxEvidenceAccepted.SelectedValue = value.ToString(); }
    }

    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //PSPITSDO _do = new PSPITSDO();
            //this.beneficiaryID = _do.PadCode(_do.GenBeneficiaryID(), 9);
            this.PensionID = this.PensionID.Trim().Length > 3 ? this.PensionID : "0";
            //Yes, at the start, lets be explicit and say that we are working with the member's registration function only
            LabelUploadedFile.Text = "";
            //LoadComboBox();
        }
    }

    protected void RadButtonRegisterDeath_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as Button).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadTextBox RadTextBoxPensionID = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxPensionID") as RadTextBox;
        RadTextBox RadTextBoxSchemeID = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxSchemeID") as RadTextBox;
        RadTextBox RadTextBoxMemberFullName = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxMemberFullName") as RadTextBox;
        RadDatePicker RadDatePickerDateOfDeath = utl.FindControlToRootOnly((sender as Button).Parent, "RadDatePickerDateOfDeath") as RadDatePicker;
        RadTextBox RadTextBoxPlaceOfDeath = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxPlaceOfDeath") as RadTextBox;
        RadTextBox RadTextBoxDeathCertificateNumber = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxDeathCertificateNumber") as RadTextBox;
        //
        //RadTextBox RadTextBoxevidenceRequired = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxevidenceRequired") as RadTextBox;
        //
        RadComboBox RadComboBoxEvidencePresented = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxEvidencePresented") as RadComboBox;
        RadComboBox RadComboBoxRadComboBoxEvidenceAccepted = utl.FindControlToRootOnly((sender as Button).Parent, "RadComboBoxRadComboBoxEvidenceAccepted") as RadComboBox;
        RadTextBox RadTextBoxEvidenceVerifiedBy = utl.FindControlToRootOnly((sender as Button).Parent, "RadTextBoxEvidenceVerifiedBy") as RadTextBox;
        RadDatePicker RadDatePickerVerifiedOn = utl.FindControlToRootOnly((sender as Button).Parent, "RadDatePickerVerifiedOn") as RadDatePicker;
        //
        RadAsyncUpload RadAsyncUpload1 = utl.FindControlToRootOnly((sender as Button).Parent, "RadAsyncUpload1") as RadAsyncUpload;
        Label LabelUploadedFile = utl.FindControlToRootOnly((sender as Button).Parent, "LabelUploadedFile") as Label;

        //RadComboBox RadComboBoxhomeState = (sender as RadButton).Parent.FindControl("RadComboBoxhomeState") as RadComboBox;
        //RadButton RadButtonEditEvidence = utl.FindControlToRootOnly((sender as RadButton).Parent, "ButtonEdit") as RadButton;
        Button RadButtonRegisterDeath = utl.FindControlToRootOnly((sender as Button).Parent, "RadButtonRegisterDeath") as Button;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonRegisterDeath != null))
        {
            //now check if the various combo boxes have been found 
            if (RadTextBoxPensionID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadTextBoxPensionID, null);
            if (RadTextBoxSchemeID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadTextBoxSchemeID, null);
            if (RadTextBoxMemberFullName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadTextBoxMemberFullName, null);
            if (RadComboBoxEvidencePresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadComboBoxEvidencePresented, null);
            if (RadDatePickerDateOfDeath != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadDatePickerDateOfDeath, null);
            if (RadComboBoxEvidencePresented != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadComboBoxEvidencePresented, null);
            if (RadComboBoxRadComboBoxEvidenceAccepted != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadComboBoxRadComboBoxEvidenceAccepted, null);
            if (RadTextBoxPlaceOfDeath != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadTextBoxPlaceOfDeath, null);
            if (RadTextBoxDeathCertificateNumber != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadTextBoxDeathCertificateNumber, null);
            if (RadDatePickerVerifiedOn != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadDatePickerVerifiedOn, null);
            if (LabelUploadedFile != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, LabelUploadedFile, null);
            if (RadAsyncUpload1 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonRegisterDeath, RadAsyncUpload1, null);
        }
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        
    }

    public void ClearControl()
    {
        Utility.EmptyControl(RadAsyncUpload1);
    }

    protected void RadButtonRegisterDeath_Click(object sender, EventArgs e)
    {
        MemberDeath md = new MembershipService().GetMemberDeathByPensionId(Int32.Parse(this.PensionID));
        if (md == null)
        {
            md = new MemberDeath();
            md.WhoCreated = Page.User.Identity.Name;
            md.DateCreated = DateTime.Now;
        }

        if (!this.IsUpdate && this.TheUploadedFile == null)
        {
            LabelUploadedFile.Text = "No file was uploaded. CANNOT PROCEED!";
            LabelUploadedFile.ForeColor = System.Drawing.Color.Red;
            return;
        }
        LabelUploadedFile.Text = "";

        md.WhoUpdated = Page.User.Identity.Name;
        md.DateUpdated = DateTime.Now;

        md.PensionId = Int32.Parse(this.PensionID);
        md.DeathCertificateNumber = this.DeathCertificateNumber;
        md.DeathCertificatePresented = this.EvidencePresented;
        md.DeathCertificateAccepted = this.EvidenceAccepted;
        md.PlaceOfDeath = RadTextBoxPlaceOfDeath.Text;
        if (this.RadDatePickerDateOfDeath.SelectedDate.HasValue) md.DateOfDeath = this.RadDatePickerDateOfDeath.SelectedDate.Value;
        md.WhoVerified = this.WhoVerified;
        md.DateVerified = this.DateofVerification;

        //Evidence attributes        
        if (this.TheUploadedFile != null)
        {
            md.FileOriginalName = this.FileOriginalName.Trim();
            md.FileContentType = this.filecontentType;
            md.FileSize = this.FileSize;
            md.FileContent = this.FileContent;
        }

        try
        {
            new MembershipService().SaveMemberDeath(md);
        }
        catch (Exception ex)
        { 
            
        }
        //clear the controls
        ClearControl();
        LabelUploadedFile.Text = "Member Death successfully registered.";
        LabelUploadedFile.ForeColor = System.Drawing.Color.Green;
        DisplayMemberDeath(md.PensionId);
        Session["MemberDeath"] = md;
    }

    protected void RadAsyncUpload1_FileUploaded(object sender, FileUploadedEventArgs e)
    {
        this.TheUploadedFile = e.File;
    }

    public void DisplayMemberDeath(int pensionId)
    {
        MemberDeath md = new MembershipService().GetMemberDeathByPensionId(pensionId);
        if (md != null)
        {
            this.RadDatePickerDateOfDeath.SelectedDate = md.DateOfDeath;
            this.EvidencePresented = md.DeathCertificatePresented;
            this.EvidenceAccepted = md.DeathCertificateAccepted;
            this.RadTextBoxPlaceOfDeath.Text = md.PlaceOfDeath;
            this.DeathCertificateNumber = md.DeathCertificateNumber;
            this.DateofVerification = md.DateVerified;
            this.WhoVerified = md.WhoVerified;
            if (md.FileContent != null)
            {
                RadButtonDownloadFile.Visible = true;
                RadButtonDownloadFile.Text = "View Death Certificate";
            }
            else
            {
                RadButtonDownloadFile.Visible = false;
            }
            Session["MemberDeath"] = md;
        }
    }
    protected void RadButtonDownloadFile_Click(object sender, EventArgs e)
    {
        if (Session["MemberDeath"] != null)
        {
            MemberDeath md = (MemberDeath)Session["MemberDeath"];
            Response.Clear();
            Response.AddHeader("Content-Length", md.FileSize.Value.ToString());
            Response.ContentType = md.FileContentType;
            Response.BinaryWrite(md.FileContent);
            Response.Flush();
        }
    }
}