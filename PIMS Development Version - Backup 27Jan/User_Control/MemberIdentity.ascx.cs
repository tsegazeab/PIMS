using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL;
using PSPITS.DAL.DATA;
using PSPITS.MODEL;
using PSPITS.COMMON;
using PSPITS.UIL;
using Telerik.Web.UI;

public partial class User_Control_MemberIdentity : System.Web.UI.UserControl
{
    private static string _pensionID = string.Empty;
    private static UploadedFile _uploadedPhoto;
    private static UploadedFile _uploadedSignature;
    private static UploadedFile _uploadedRightThumbprint;
    private static UploadedFile _uploadedLeftThumbprint;
    private static UploadedFile _uploadedRightFourFingerprint;
    private static UploadedFile _uploadedLeftFourFingerprint;

    #region .Properties.

    public string PensionID
    {
        get { return RadTextBoxPensionID.Text; }
        set { RadTextBoxPensionID.Text = _pensionID = value; }
    }

    private string NationalID
    {
        get { return RadTextBoxNationalityID.Text; }
        set { RadTextBoxNationalityID.Text = value; }
    }

    public string MemberFullName
    {
        get { return RadTextBoxMemberFullName.Text; }
        set { RadTextBoxMemberFullName.Text = value; }
    }

    public UploadedFile TheUploadedPhoto
    {
        set { _uploadedPhoto = value; }
        get { return _uploadedPhoto;  }
    }

    public UploadedFile TheUploadedSignature
    {
        set { _uploadedSignature = value; }
        get { return _uploadedSignature; }
    }

    public UploadedFile TheUploadedRightThumbprint
    {
        set { _uploadedRightThumbprint = value; }
        get { return _uploadedRightThumbprint; }
    }

    public UploadedFile TheUploadedLeftThumbprint
    {
        set { _uploadedLeftThumbprint = value; }
        get { return _uploadedLeftThumbprint; }
    }

    public UploadedFile TheUploadedRightFourFingerprint
    {
        set { _uploadedRightFourFingerprint = value; }
        get { return _uploadedRightFourFingerprint; }
    }

    public UploadedFile TheUploadedLeftFourFingerprint
    {
        set { _uploadedLeftFourFingerprint = value; }
        get { return _uploadedLeftFourFingerprint; }
    }

    public byte[] fileContentPhoto
    {
        get
        {
            if (_uploadedPhoto != null)
            {
                byte[] bytes = new byte[this.TheUploadedPhoto.ContentLength];
                this.TheUploadedPhoto.InputStream.Read(bytes, 0, this.TheUploadedPhoto.ContentLength);
                return bytes;
            }
            else return new byte[0];
        }
        set
        {
            RadBinaryImageMemberPhoto.DataValue = value;
            RadBinaryImageMemberPhoto.DataBind();
            if (value.Length > 0)
                RadBinaryImageMemberPhoto.Visible = true;
            else
                RadBinaryImageMemberPhoto.Visible = false;
        }
    }

    public byte[] fileContentSignature
    {
        get
        {
            if (_uploadedSignature != null)
            {
                byte[] bytes = new byte[this.TheUploadedSignature.ContentLength];
                this.TheUploadedSignature.InputStream.Read(bytes, 0, this.TheUploadedSignature.ContentLength);
                return bytes;
            }
            else return new byte[0];
        }
        set
        {
            RadBinaryImageMemberSignature.DataValue = value;
            RadBinaryImageMemberSignature.DataBind();
            if (value.Length > 0)
                RadBinaryImageMemberSignature.Visible = true;
            else
                RadBinaryImageMemberSignature.Visible = false;
        }
    }

    public byte[] fileContentRightThumbprint
    {
        get
        {
            if (_uploadedRightThumbprint != null)
            {
                byte[] bytes = new byte[this.TheUploadedRightThumbprint.ContentLength];
                this.TheUploadedRightThumbprint.InputStream.Read(bytes, 0, this.TheUploadedRightThumbprint.ContentLength);
                return bytes;
            }
            else return new byte[0];
        }
        set
        {
            RadBinaryImageMemberRightThumbprint.DataValue = value;
            RadBinaryImageMemberRightThumbprint.DataBind();
            if (value.Length > 0)
                RadBinaryImageMemberRightThumbprint.Visible = true;
            else
                RadBinaryImageMemberRightThumbprint.Visible = false;
        }
    }

    public byte[] fileContentLeftThumbprint
    {
        get
        {
            if (_uploadedLeftThumbprint != null)
            {
                byte[] bytes = new byte[this.TheUploadedLeftThumbprint.ContentLength];
                this.TheUploadedLeftThumbprint.InputStream.Read(bytes, 0, this.TheUploadedLeftThumbprint.ContentLength);
                return bytes;
            }
            else return new byte[0];
        }
        set
        {
            RadBinaryImageMemberLeftThumbprint.DataValue = value;
            RadBinaryImageMemberLeftThumbprint.DataBind();
            if (value.Length > 0)
                RadBinaryImageMemberLeftThumbprint.Visible = true;
            else
                RadBinaryImageMemberLeftThumbprint.Visible = false;
        }
    }

    public byte[] fileContentRightFourFingerprint
    {
        get
        {
            if (_uploadedRightFourFingerprint != null)
            {
                byte[] bytes = new byte[this.TheUploadedRightFourFingerprint.ContentLength];
                this.TheUploadedRightFourFingerprint.InputStream.Read(bytes, 0, this.TheUploadedRightFourFingerprint.ContentLength);
                return bytes;
            }
            else return new byte[0];
        }
        set
        {
            RadBinaryImageMemberRightFourFingerprint.DataValue = value;
            RadBinaryImageMemberRightFourFingerprint.DataBind();
            if (value.Length > 0)
                RadBinaryImageMemberRightFourFingerprint.Visible = true;
            else
                RadBinaryImageMemberRightFourFingerprint.Visible = false;
        }
    }

    public byte[] fileContentLeftFourFingerprint
    {
        get
        {
            if (_uploadedLeftFourFingerprint != null)
            {
                byte[] bytes = new byte[this.TheUploadedLeftFourFingerprint.ContentLength];
                this.TheUploadedLeftFourFingerprint.InputStream.Read(bytes, 0, this.TheUploadedLeftFourFingerprint.ContentLength);
                return bytes;
            }
            else return new byte[0];
        }
        set
        {
            RadBinaryImageMemberLeftFourFingerprint.DataValue = value;
            RadBinaryImageMemberLeftFourFingerprint.DataBind();
            if (value.Length > 0)
                RadBinaryImageMemberLeftFourFingerprint.Visible = true;
            else
                RadBinaryImageMemberLeftFourFingerprint.Visible = false;
        }
    }

    #endregion 

    public void DisplayMemberNameAndPensionID(int pensionID)
    {
        MemberPersonalDetail md = new PSPITSDO().GetMemberbyPensionID(pensionID);
        MemberIdentity mi = new PSPITSDO().GetMemberIdentityByPensionId(pensionID);
        this.MemberFullName = string.Format("{0}{1}{2}", md.firstName, ' ', md.lastName);
        this.PensionID = string.Format("{0}", pensionID);
        this.RadTextBoxSchemeID.Text = new PSPITSDO().GetSchemeIDByPensionID(md.pensionID);
        this.NationalID = md.nationalID;
        if (mi != null)
        {
            this.fileContentPhoto = mi.MemberPhoto;
            this.fileContentSignature = mi.MemberSignature;
            this.fileContentRightThumbprint = mi.MemberRightThumbprint;
            this.fileContentLeftThumbprint = mi.MemberLeftThumbprint;
            this.fileContentRightFourFingerprint = mi.MemberRightFourFingerprint;
            this.fileContentLeftFourFingerprint = mi.MemberLeftFourFingerprint;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.PensionID = this.PensionID.Length > 3 ? this.PensionID : "0";
            DisplayMemberNameAndPensionID(Int32.Parse(this.PensionID));
        }
    }

    protected void RadAsyncUploadMemberPhoto_FileUploaded(object sender, FileUploadedEventArgs e)
    {        
        this.TheUploadedPhoto = e.File;
    }

    protected void RadAsyncUploadMemberSignature_FileUploaded(object sender, FileUploadedEventArgs e)
    {        
        this.TheUploadedSignature = e.File;
    }

    protected void RadAsyncUploadMemberRightThumbprint_FileUploaded(object sender, FileUploadedEventArgs e)
    {
        this.TheUploadedRightThumbprint = e.File;
    }

    protected void RadAsyncUploadMemberLeftThumbprint_FileUploaded(object sender, FileUploadedEventArgs e)
    {
        this.TheUploadedLeftThumbprint = e.File;
    }

    protected void RadAsyncUploadMemberRightFourFingerprint_FileUploaded(object sender, FileUploadedEventArgs e)
    {        
        this.TheUploadedRightFourFingerprint = e.File;
    }

    protected void RadAsyncUploadMemberLeftFourFingerprint_FileUploaded(object sender, FileUploadedEventArgs e)
    {
        this.TheUploadedLeftFourFingerprint = e.File;
    }

    protected void RadButtonSaveIdentity_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadTextBox RadTextBoxPensionID = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPensionID") as RadTextBox;
        RadTextBox RadTextBoxMemberFullName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxMemberFullName") as RadTextBox;
        RadTextBox RadTextBoxNationalityID = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxNationalityID") as RadTextBox;
        //
        //RadAsyncUpload
        //                
        RadAsyncUpload RadAsyncUploadMemberPhoto = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAsyncUploadMemberPhoto") as RadAsyncUpload;
        RadAsyncUpload RadAsyncUploadMemberSignature = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAsyncUploadMemberSignature") as RadAsyncUpload;
        RadAsyncUpload RadAsyncUploadMemberRightThumbprint = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAsyncUploadMemberRightThumbprint") as RadAsyncUpload;
        RadAsyncUpload RadAsyncUploadMemberLeftThumbprint = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAsyncUploadMemberLeftThumbprint") as RadAsyncUpload;
        RadAsyncUpload RadAsyncUploadMemberRightFourFingerprint = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAsyncUploadMemberRightFourFingerprint") as RadAsyncUpload;
        RadAsyncUpload RadAsyncUploadMemberLeftFourFingerprint = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAsyncUploadMemberLeftFourFingerprint") as RadAsyncUpload;

        RadButton RadButtonSaveIdentity = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonSaveIdentity") as RadButton;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonSaveIdentity != null))
        {
            //now check if the various combo boxes have been found 
            if (RadTextBoxPensionID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveIdentity, RadTextBoxPensionID, null);
            if (RadTextBoxMemberFullName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveIdentity, RadTextBoxMemberFullName, null);
            if (RadTextBoxNationalityID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveIdentity, RadTextBoxNationalityID, null);
            if (RadAsyncUploadMemberPhoto != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveIdentity, RadAsyncUploadMemberPhoto, null);
            if (RadAsyncUploadMemberSignature != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveIdentity, RadAsyncUploadMemberSignature, null);
            if (RadAsyncUploadMemberRightThumbprint != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveIdentity, RadAsyncUploadMemberRightThumbprint, null);
            if (RadAsyncUploadMemberLeftThumbprint != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveIdentity, RadAsyncUploadMemberLeftThumbprint, null);
            if (RadAsyncUploadMemberRightFourFingerprint != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveIdentity, RadAsyncUploadMemberRightFourFingerprint, null);
            if (RadAsyncUploadMemberLeftFourFingerprint != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveIdentity, RadAsyncUploadMemberLeftFourFingerprint, null);            
        }
    }

    protected void RadButtonSaveIdentity_Click(object sender, EventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();
        MemberIdentity mi = new MemberIdentity();
        mi.PensionID = Int32.Parse(this.PensionID);
        mi.NationalID = this.NationalID;
        mi.MemberPhoto = this.fileContentPhoto;
        mi.MemberSignature = this.fileContentSignature;
        mi.MemberRightThumbprint = this.fileContentRightThumbprint;
        mi.MemberLeftThumbprint = this.fileContentLeftThumbprint;
        mi.MemberRightFourFingerprint = this.fileContentRightFourFingerprint;
        mi.MemberLeftFourFingerprint = this.fileContentLeftFourFingerprint;
        mi.DateCreated = mi.DateUpdated = DateTime.Now;
        mi.WhoCreated = mi.WhoUpdated = "admin";
        mi.LogRef = 1;
        _do.SaveMemberIdentity(mi);
        UpdateSessionPhoto(mi.PensionID);
        Parent.Page.Response.Redirect(Parent.Page.Request.RawUrl);  
    }

    private void UpdateSessionPhoto(int pensionID)
    {
        MemberIdentity mi = new PSPITSDO().GetMemberIdentityPhotoByPensionId(pensionID);
        PSPITSModuleSession.MemberPhoto = mi != null ? mi.MemberPhoto : new byte[0];
    }
}