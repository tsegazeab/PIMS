using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;
using PSPITS.UIL;
using PSPITS.MODEL;
using Telerik.Web.UI;

public partial class Membership_UpdateBeneficiaryInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BeneficiaryInformationUpdate1.pensionID = PSPITSModuleSession.PensionID;
            BeneficiaryInformationUpdate1.RebindGrid();      
        }

    }
    protected void RadButtonSearchPensionID_Click(object sender, EventArgs e)
    {
       
            BeneficiaryInformationUpdate1.pensionID = Master.PensionID;
            BeneficiaryInformationUpdate1.RebindGrid();
     
    }
    protected void RadTabStripUpdateBeneficiaryInfo_TabClick(object sender, Telerik.Web.UI.RadTabStripEventArgs e)
    {
        if (e.Tab.Text.ToLower().Equals("beneficiary information"))
        {
            BeneficiaryInformationUpdate1.pensionID = Master.PensionID;
            BeneficiaryInformationUpdate1.RebindGrid();
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
        //Master
    }

    private void SearchRadToolBarClickedFromMasterPage(object sender, CommandEventArgs e)
    {

        RadToolTip RadToolTipSearch = new Utility().FindControlFromRoot(this, "RadToolTipSearch") as RadToolTip;
        if (RadToolTipSearch != null) RadToolTipSearch.Show();
    }

}