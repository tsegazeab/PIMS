using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using PSPITS.COMMON;
using PSPITS.UIL;
using PSPITS.DAL.DATA;

public partial class User_Control_Declaration : System.Web.UI.UserControl
{
    private static string _pensionID = "0";
   
    public string pensionID
    {
        get
        {
            return _pensionID;
        }
        set
        {
            _pensionID = value;
        }
    }

    public string SchemeID
    {
        set { RadTextBoxSchemeID.Text = value; }        
    }

    public string MemberFullName
    {
        set { RadTextBoxfullName.Text = value; }
    }

    public string nameofCertifyingOfficer
    {
        get
        {
             return RadTextBoxnameofCertifyingOfficer.Text;
        }
        set
        {
           RadTextBoxnameofCertifyingOfficer.Text = value;
        }
    }
    public string titleofCertifyingOfficer
    {
        get
        {
            return RadTextBoxtitleofCertifyingOfficer.Text;
        }
        set
        {
            RadTextBoxtitleofCertifyingOfficer.Text = value;
        }
    }
    public string locationofCertifyingOfficerSignature
    {
        get
        {
            return RadAsyncUploadcertifyingofficerSignature.UploadedFiles.Count > 0 ? RadAsyncUploadcertifyingofficerSignature.UploadedFiles[0].FileName : "";
        }
    }

    public DateTime? DateofApplication
    {
        get
        {
            return RadDatePickerDateOfApplication.SelectedDate;
        }
        set
        {
            RadDatePickerDateOfApplication.SelectedDate = value;
        }
    }
    public DateTime? DateofCertification
    {
        get
        {
            return RadDatePickerDateOfCertification.SelectedDate;
        }
        set { RadDatePickerDateOfCertification.SelectedDate = value; }
    }
    public void HideSaveButton()
    {
        RadButtonSaveDeclaration.Visible = false;
    }
    public void EmptyControl()
    {
        Utility.EmptyControl(RadDatePickerDateOfApplication);
        Utility.EmptyControl(RadDatePickerDateOfCertification);
        Utility.EmptyControl(RadTextBoxnameofCertifyingOfficer);
        Utility.EmptyControl(RadTextBoxtitleofCertifyingOfficer);
        Utility.EmptyControl(RadAsyncUploadcertifyingofficerSignature);    
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            
        }
    }

    public void LoadMemberDeclaration()
    {
        MemberDeclaration md = new PSPITSDO().GetMemberDeclarationByPensionID(Int32.Parse(this.pensionID));
        this.SchemeID = md.schemeID;
        this.MemberFullName = md.memberFullName;
        this.DateofApplication = md.nameofCertifyingOfficer.Trim()==string.Empty? DateTime.Today : md.dateofApplication;
        this.DateofCertification = md.nameofCertifyingOfficer.Trim() == string.Empty ? DateTime.Today : md.dateofCertifying;
        this.nameofCertifyingOfficer = md.nameofCertifyingOfficer;
        this.titleofCertifyingOfficer = md.titleofCertifyingOfficer;
    }

    protected void RadButtonSaveDeclaration_Click(object sender, EventArgs e)
    {
        MemberDeclaration declaration = new MemberDeclaration();
        declaration.pensionID = Int32.Parse(this.pensionID);
        if (this.DateofApplication.HasValue)
            declaration.dateofApplication = this.DateofApplication.Value;
        if (this.DateofCertification.HasValue)
            declaration.dateofCertifying = this.DateofCertification.Value;
        declaration.nameofCertifyingOfficer = this.nameofCertifyingOfficer;
        declaration.titleofCertifyingOfficer = this.titleofCertifyingOfficer;
        declaration.locationofCertifyingOfficerSignature = this.locationofCertifyingOfficerSignature;
        declaration.whoUpdated = "admin";
        declaration.dateUpdated = DateTime.Now.Date;
        new PSPITSDO().SaveMemberDeclaration(declaration);
        LoadMemberDeclaration();
        LabelStatusMsg.Text = "Member declaration saved successfully.";
    }

    protected void RadButtonSaveDeclaration_Load(object sender, EventArgs e)
    {
        RadAjaxManager radajaxmanager = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        //RadTextBox txtbox = (sender as Button).Parent.FindControl("RadTextBoxJobTitle") as RadTextBox;
        RadDatePicker RadDatePickerDateOfApplication = (sender as RadButton).Parent.FindControl("RadDatePickerDateOfApplication") as RadDatePicker;
        RadDatePicker RadDatePickerDateOfCertification = (sender as RadButton).Parent.FindControl("RadDatePickerDateOfCertification") as RadDatePicker;
        RadTextBox RadTextBoxnameofCertifyingOfficer = (sender as RadButton).Parent.FindControl("RadTextBoxnameofCertifyingOfficer") as RadTextBox;
        RadTextBox RadTextBoxtitleofCertifyingOfficer = (sender as RadButton).Parent.FindControl("RadTextBoxtitleofCertifyingOfficer") as RadTextBox;
        RadAsyncUpload RadAsyncUploadcertifyingofficerSignature = (sender as RadButton).Parent.FindControl("RadAsyncUploadcertifyingofficerSignature") as RadAsyncUpload;
        Label LabelStatusMsg = (sender as RadButton).Parent.FindControl("LabelStatusMsg") as Label;
        RadButton RadButtonSaveDeclaration = (sender as RadButton).Parent.FindControl("RadButtonSaveDeclaration") as RadButton;
        
        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonSaveDeclaration != null))
        {
            //now check if the various combo boxes have been found 
            if (RadDatePickerDateOfApplication != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveDeclaration, RadDatePickerDateOfApplication, null);
            if (RadDatePickerDateOfCertification != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveDeclaration, RadDatePickerDateOfCertification, null);
            if (RadTextBoxnameofCertifyingOfficer != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveDeclaration, RadTextBoxnameofCertifyingOfficer, null);
            if (RadTextBoxtitleofCertifyingOfficer != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveDeclaration, RadTextBoxtitleofCertifyingOfficer, null);
            if (RadAsyncUploadcertifyingofficerSignature != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveDeclaration, RadAsyncUploadcertifyingofficerSignature, null);
            if (LabelStatusMsg != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonSaveDeclaration, LabelStatusMsg, null);
        }
    }
}