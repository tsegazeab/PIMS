using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.UIL;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;

public partial class MasterPageMembership : System.Web.UI.MasterPage
{
    public event CommandEventHandler RadToolBarClicked;
    private static string _pensionID = "0";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.PensionID = PSPITSModuleSession.PensionID.Trim();
            this.SchemeID = PSPITSModuleSession.SchemeID.Trim();
            this.MemberFullName = PSPITSModuleSession.MemberFullName.Trim();
            this.MemberPhoto = PSPITSModuleSession.MemberPhoto;
            if (Page.User.Identity.IsAuthenticated)
                LabelCurrentUser.Text = Page.User.Identity.Name;
        }
    }

    protected void Page_Init(object sender, System.EventArgs e)
    {
        //
        //(MemberToEditSession.MemberToEdit = new MemberToEdit()).OnMemberEditClicked += new MemberEventHandler(MemberSelectedFromSearchGrid);
    }

    protected void MemberSelectedFromSearchGrid(object sender, MemberEventArgs e)
    {

        //LabelpensionID.Text = string.Format("{0}{1}{2}", "Pension No. [", e.pensionID.Trim(), "]");
        //LabelfullName.Text = new PSPITSDO().GetMemberFullNamebyPensionID(int.Parse(e.pensionID.Trim())).memberFullName.Trim();

    }
    public string PensionID
    {
        get { return PSPITSModuleSession.PensionID.Trim(); } //return _pensionID; }
        set
        {
            // _pensionID = value; 
            PSPITSModuleSession.PensionID = value;
        }

    }
    public string SchemeID
    {
        get { return PSPITSModuleSession.SchemeID.Trim(); } //return _pensionID; }
        set
        {
            // _pensionID = value; 
            PSPITSModuleSession.SchemeID = value;
            LabelpensionID.Text = value.Trim() != "0" ? value.Trim() : "";// string.Format("{0}{1}{2}", "[", , "]");
        }

    }
    public string MemberFullName
    {
        get { return PSPITSModuleSession.MemberFullName.Trim(); }// LabelfullName.Text.Trim(); }
        set
        {
            PSPITSModuleSession.MemberFullName = value;
            LabelfullName.Text = value;
        }
    }

    public byte[] MemberPhoto
    {
        get { return PSPITSModuleSession.MemberPhoto; }
        set
        {
            PSPITSModuleSession.MemberPhoto = value;
            RadBinaryImageMemberPhoto.DataValue = value;
            RadBinaryImageMemberPhoto.DataBind();
            if (PSPITSModuleSession.MemberPhoto.Length > 0)
                RadBinaryImageMemberPhoto.Visible = true;
            else if (PSPITSModuleSession.SchemeID.Trim() == string.Empty)
            {
                RadBinaryImageMemberPhoto.DataValue = null;
                RadBinaryImageMemberPhoto.ImageUrl = "~/images/no_photo.jpg";
            }
        }
    }

    protected void RadToolBar1_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {
        if (e.Item.Text.ToLower().Equals("search"))
        {
            //get what the previous page was - must be one of the update forms and not the add new form
            //Page.PreviousPage.u
            if (RadToolBarClicked != null)
                RadToolBarClicked(this, new CommandEventArgs(e.Item.Text, e.Item.Text));
        }
        else if (e.Item.Text.ToLower().Equals("member evidence"))
        {
            Response.Redirect("~/Membership/UpdateMemberEvidence.aspx");
        }
    }
}
