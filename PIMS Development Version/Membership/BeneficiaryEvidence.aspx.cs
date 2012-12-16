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

public partial class Membership_BeneficiaryEvidence : System.Web.UI.Page
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
            BeneficiaryEvidence1.PensionID = Master.PensionID;            
            BeneficiaryEvidence1.RebindGrid();
            //MemberEvidence1.DisplayMemberNameAndPensionID(int.Parse(PSPITSModuleSession.PensionID.Trim()));
        }
    }

    protected void Page_Init(object sender, System.EventArgs e)
    {
        //
        Master.RadToolBarClicked += new CommandEventHandler(SearchRadToolBarClickedFromMasterPage);
        //
        (MemberToEditSession.MemberToEdit = new MemberToEdit()).OnMemberEditClicked += new MemberEventHandler(MemberSelectedFromSearchGrid);

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

    private void SearchRadToolBarClickedFromMasterPage(object sender, CommandEventArgs e)
    {

        RadToolTip RadToolTipSearch = new Utility().FindControlFromRoot(this, "RadToolTipSearch") as RadToolTip;
        if (RadToolTipSearch != null) RadToolTipSearch.Show();
    }

    protected void RadButtonSearchPensionID_Click(object sender, EventArgs e)
    {
        BeneficiaryEvidence1.PensionID = Master.PensionID;
        BeneficiaryEvidence1.RebindGrid();
    }

    protected void RadTabStripUpdateMemberEvidence_TabClick(object sender, RadTabStripEventArgs e)
    {
        if (e.Tab.Text.ToLower().Equals("beneficiary evidence"))
        {
            BeneficiaryEvidence1.PensionID = Master.PensionID;
            BeneficiaryEvidence1.RebindGrid();

        }
    }

}