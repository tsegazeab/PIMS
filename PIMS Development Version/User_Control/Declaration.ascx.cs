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
    public string locationofMemberPhoto
    {
        get
        {
            return RadAsyncUploadmemberPhoto.UploadedFiles[0].FileName;
            
        }
     
    }
    public string locationofMemberSignature
    {
        get
        {
            return RadAsyncUploadmemberSignature.UploadedFiles[0].FileName;

        }

    }
    public string locationofCertifyingOfficerSignature
    {
        get
        {
            return RadAsyncUploadcertifyingofficerSignature.UploadedFiles[0].FileName;

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
    public void EmptyControl()
    {

        Utility.EmptyControl(RadDatePickerDateOfApplication);
        Utility.EmptyControl(RadDatePickerDateOfCertification);
        Utility.EmptyControl(RadAsyncUploadmemberPhoto);
        Utility.EmptyControl(RadAsyncUploadmemberSignature);
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
}