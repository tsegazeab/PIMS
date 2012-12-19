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
using PSPITS.MODEL;

public partial class Membership_UpdateBeneficiaryDisablility : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DisabilityInformation1.pensionID = PSPITSModuleSession.PensionID;
            DisabilityInformation1.beneficiaryID = "0";
            DisabilityInformation1.RebindGrid();
            DisabilityInformation1.LoadBeneficiaryNameCombo(int.Parse(PSPITSModuleSession.PensionID));        
        }
    }
    protected void Page_Init(object sender, System.EventArgs e)
    {
        Master.RadToolBarClicked += new CommandEventHandler(SearchRadToolBarClickedFromMasterPage);
        //
        (MemberToEditSession.MemberToEdit = new MemberToEdit()).OnMemberEditClicked += new MemberEventHandler(MemberSelectedFromSearchGrid);
        //Master.

    }
    protected void MemberSelectedFromSearchGrid(object sender, MemberEventArgs e)
    {
//        Page.Master.
        //Master
        //MasterPageMembership myMaster = (MasterPageMembership)Page.Master;
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
 
    protected void RadTabStripUpdateBeneficiaryDisability_TabClick(object sender, Telerik.Web.UI.RadTabStripEventArgs e)
    {
        if (e.Tab.Text.ToLower().Equals("beneficiary disability"))
        {
           //
            DisabilityInformation1.pensionID = Master.PensionID;
            DisabilityInformation1.RebindGrid();
            DisabilityInformation1.LoadBeneficiaryNameCombo(int.Parse(Master.PensionID));
        }
        else if (e.Tab.Text.ToLower().Equals("search"))
        {
            //
        }
    }
}