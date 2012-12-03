using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using PSPITS.UIL;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;
using PSPITS.MODEL;

public partial class Membership_UpdateServiceBreakEvidence : System.Web.UI.Page
{
    //protected override void OnPreRender(EventArgs e)
    //{
    //    base.OnPreRender(e);
    //    JavaScriptLibrary.JavaScriptHelper.Include_CloseActiveToolTip(Page.ClientScript);
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            MemberServiceBreakEvidence1.pensionID = Master.PensionID;
            MemberServiceBreakEvidence1.schemeID = Master.SchemeID;
            MemberServiceBreakEvidence1.DisplayMemberNameAndPensionID(int.Parse(Master.PensionID.Trim()));
            MemberServiceBreakEvidence1.RebindGrid();            
        }
    }
    protected void MemberSelectedFromSearchGrid(object sender, MemberEventArgs e)
    {
        //just close the tooltip
        //JavaScriptLibrary.JavaScriptHelper.Include_CloseActiveToolTip(Page.ClientScript);
        PSPITSDO _do = new PSPITSDO();
        PSPITSModuleSession.PensionID = e.pensionID.Trim();
        PSPITSModuleSession.SchemeID = _do.GetSchemeIDByPensionID(Int32.Parse(e.pensionID.Trim()));
        PSPITSModuleSession.MemberFullName = _do.GetMemberFullNamebyPensionID(int.Parse(e.pensionID.Trim())).memberFullName.Trim();
        MemberIdentity mi = _do.GetMemberIdentityPhotoByPensionId(int.Parse(e.pensionID.Trim()));
        PSPITSModuleSession.MemberPhoto = mi != null ? mi.MemberPhoto : new byte[0];
    }
    protected void Page_Init(object sender, System.EventArgs e)
    {
        Master.RadToolBarClicked += new CommandEventHandler(SearchRadToolBarClickedFromMasterPage);
        //
        (MemberToEditSession.MemberToEdit = new MemberToEdit()).OnMemberEditClicked += new MemberEventHandler(MemberSelectedFromSearchGrid);
      
    }
    protected void RadButtonSearchPensionID_Click(object sender, EventArgs e)
    {
        MemberServiceBreakEvidence1.pensionID = Master.PensionID;
        MemberServiceBreakEvidence1.RebindGrid();
        MemberServiceBreakEvidence1.DisplayMemberNameAndPensionID(int.Parse(Master.PensionID));
    }
    private void SearchRadToolBarClickedFromMasterPage(object sender, CommandEventArgs e)
    {

        RadToolTip RadToolTipSearch = new Utility().FindControlFromRoot(this, "RadToolTipSearch") as RadToolTip;
        if (RadToolTipSearch != null) RadToolTipSearch.Show();
    }
    private void CloseToolTip(object sender, CommandEventArgs e)
    {

        RadToolTip RadToolTipSearch = new Utility().FindControlFromRoot(this, "RadToolTipSearch") as RadToolTip;
        if (RadToolTipSearch != null) RadToolTipSearch.Dispose();
    }
    private string CurrentControl
    {
        get
        {
            return this.ViewState["CurrentControl"] == null ? string.Empty : (string)this.ViewState["CurrentControl"];
        }
        set
        {
            this.ViewState["CurrentControl"] = value;
        }
    }
    private void LoadMyUserControl(string controlName, Control parent)
    {
        parent.Controls.Clear();
        UserControl MyControl = (UserControl)LoadControl(controlName);
        string userControlID = controlName.Split('.')[0];
        MyControl.ID = userControlID.Replace("/", "").Replace("~", "");
        parent.Controls.Add(MyControl);
        this.CurrentControl = controlName;
    }


        protected void RadTabStripUpdateMemberEvidence_TabClick(object sender, RadTabStripEventArgs e)
        {
            if (e.Tab.Text.ToLower().Equals("member evidence"))
            {
                MemberServiceBreakEvidence1.pensionID = Master.PensionID;
                MemberServiceBreakEvidence1.RebindGrid();
                MemberServiceBreakEvidence1.DisplayMemberNameAndPensionID(int.Parse(Master.PensionID));
            }
        }
}