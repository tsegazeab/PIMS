using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.UIL;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;
using Telerik.Web.UI;

public partial class MasterPageContribution : System.Web.UI.MasterPage
{
    public event CommandEventHandler RadToolBarClicked;
    public event CommandEventHandler RadPrintToolBarClicked;
    public event CommandEventHandler RadComboBoxClicked;
    private static string _pensionID = "0";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.PensionID = PSPITSModuleSession.PensionID.Trim();
            this.SchemeID = PSPITSModuleSession.SchemeID.Trim();
            this.PayrollNo = PSPITSModuleSession.PayrollNo.Trim();
            this.MemberFullName = PSPITSModuleSession.MemberFullName.Trim();
            //this.MemberPhoto = PSPITSModuleSession.MemberPhoto;
            if (Page.User.Identity.IsAuthenticated)
                LabelCurrentUser.Text = Page.User.Identity.Name;
            RadMultiPageSubPage.SelectedIndex = RadMultiPageSubPage.FindPageViewByID("RadPageViewBlank").Index;
            LoadComboBox();
        }

    }
    private void LoadComboBox()
    {

        //Load service break type comboBox
        RadComboBoxMDA.DataSource = new PSPITSDO().GetMDA(true);
        RadComboBoxMDA.DataTextField = PSPITS.COMMON.Constants.COL_LIST_MDA;
        RadComboBoxMDA.DataValueField = PSPITS.COMMON.Constants.COL_LIST_MDAID;
        RadComboBoxMDA.DataBind();
        //
     

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
    public string mdaID
    {
        get { return PSPITSModuleSession.mdaID.Trim(); } //return _pensionID; }
        set
        {
            // _pensionID = value; 
            PSPITSModuleSession.mdaID = value;
            //LabelpensionID.Text = value.Trim() != "0" ? value.Trim() : "";// string.Format("{0}{1}{2}", "[", , "]");
        }
    }
    public string getMDAID
    {
        get { return RadComboBoxMDA.SelectedValue; }
    }

    public string PayrollNo
    {
        get { return PSPITSModuleSession.PayrollNo.Trim(); }
        set
        {
            PSPITSModuleSession.PayrollNo = value;
            LabelPayrollNo.Text = value.Trim() != "0" ? value.Trim() : "";
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

    
    protected void RadToolBar1_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {
        if (e.Item.Text.ToLower().Equals("print"))
        {
            //get what the previous page was - must be one of the update forms and not the add new form
            //Page.PreviousPage.u
            if (RadPrintToolBarClicked != null)
                RadPrintToolBarClicked(this, new CommandEventArgs(e.Item.Text, e.Item.Text));
        }
        else
        {
            if (e.Item.Text.ToLower().Equals("contribution (rss agency)"))
            {
                RadMultiPageSubPage.SelectedIndex = RadMultiPageSubPage.FindPageViewByID("RadPageViewAgency").Index;
            }
            else if (e.Item.Text.ToLower().Equals("contribution (member)"))
            {
                RadMultiPageSubPage.SelectedIndex = RadMultiPageSubPage.FindPageViewByID("RadPageViewMember").Index;
            }
            //else RadMultiPageSubPage.SelectedIndex = RadMultiPageSubPage.FindPageViewByID("RadPageViewBlank").Index;
            if (RadToolBarClicked != null)
                RadToolBarClicked(this, new CommandEventArgs(e.Item.Text, e.Item.Text));
        }

      
    }
    protected void RadComboBoxMDA_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
    {
        //PSPITSModuleSession.mdaID = e.Value.ToString();
        if (RadComboBoxClicked != null)
            RadComboBoxClicked(this, new CommandEventArgs(e.Text, e.Value));
    }
    protected void RadComboBoxMDA_Load(object sender, EventArgs e)
    {
        //RadAjaxManager radajaxmanager = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadComboBox).Parent, "RadAjaxManager1") as RadAjaxManager;
        //RadAjaxLoadingPanel radajaxloading = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as RadComboBox).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        //RadComboBox RadComboBoxMDA = sender as RadComboBox;

      
        ////load only when non of the controls are null
        //if ((radajaxmanager != null) && (radajaxloading != null) && (RadComboBoxMDA != null) )
        //{
        //    radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboBoxMDA, RadComboBoxMDA, radajaxloading);
        
        //}
    }
    protected void LabelMDA_Load(object sender, EventArgs e)
    {
        //RadAjaxManager radajaxmanager = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Label).Parent, "RadAjaxManager1") as RadAjaxManager;
        //RadAjaxLoadingPanel radajaxloading = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Label).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        //Label LabelMDA = sender as Label;
        //RadComboBox RadComboBoxMDA = new PSPITS.UIL.Utility().FindControlToRootOnly((sender as Label).Parent, "RadComboBoxMDA") as RadComboBox; 

        ////load only when non of the controls are null
        //if ((radajaxmanager != null) && (radajaxloading != null) && (LabelMDA != null))
        //{
        //    radajaxmanager.AjaxSettings.AddAjaxSetting(LabelMDA, RadComboBoxMDA, radajaxloading);

        //}
    }
}
