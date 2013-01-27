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
using PSPITS.DAL.DATA.MemberBenefits;

public partial class Benefit_Module_MemberBenefitsEligibility : System.Web.UI.Page
{
    private const string years = " years";
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DisplayMemberBenefitsEligibility();
        }
    }

    private void DisplayMemberBenefitsEligibility()
    {
        int pensionId;
        if (Int32.TryParse(Master.PensionID, out pensionId) && pensionId > 0)
        {
            MemberBenefitCalcs mbc = new MemberBenefitCalcs();
            if (Session["MemberBenefitRequest"] == null)
                return;
            MemberBenefitRequest mbr = (MemberBenefitRequest)Session["MemberBenefitRequest"];
            //Save mbr back to session
            Session["MemberBenefitRequest"] = mbr;
            MemberBenefitEligibility mbe = mbc.GetMemberBenefitEligibility(mbr);
            MemberBenefitEligibility1.AnnualPensionProcessedCheck = mbe.AnnualPensionProcessedCheck;
            MemberBenefitEligibility1.DoACheck = mbe.DoACheck;
            MemberBenefitEligibility1.DoAEvidenceCheck = mbe.DoAEvidenceCheck;
            MemberBenefitEligibility1.DoBCheck = mbe.DoBCheck;
            MemberBenefitEligibility1.DoBEvidenceCheck = mbe.DoBEvidenceCheck;
            MemberBenefitEligibility1.ServiceBreakEvidenceCheck = mbe.ServiceBreakEvidenceCheck;
            MemberBenefitEligibility1.MemberFullName = string.Format("{0}{1}{2}", mbe.Member.firstName, " ", mbe.Member.lastName);
            MemberBenefitEligibility1.PayrollNo = mbe.Member.payrollNumber;
            MemberBenefitEligibility1.PensionID = mbe.Member.pensionID.ToString();
            MemberBenefitEligibility1.SchemeID = mbe.Member.schemeID;
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
        Member selectedMember = _do.GetMemberByPensionID(Int32.Parse(e.pensionID.Trim()));
        PSPITSModuleSession.SchemeID = selectedMember.schemeID;
        PSPITSModuleSession.PayrollNo = selectedMember.payrollNumber;
        PSPITSModuleSession.MemberFullName = _do.GetMemberFullNamebyPensionID(int.Parse(e.pensionID.Trim())).memberFullName.Trim();
        MemberIdentity mi = _do.GetMemberIdentityPhotoByPensionId(int.Parse(e.pensionID.Trim()));
        PSPITSModuleSession.MemberPhoto = mi != null ? mi.MemberPhoto : new byte[0];
    }

    private void SearchRadToolBarClickedFromMasterPage(object sender, CommandEventArgs e)
    {
        RadToolTip RadToolTipSearch = new Utility().FindControlFromRoot(this, "RadToolTipSearch") as RadToolTip;
        if (RadToolTipSearch != null) RadToolTipSearch.Show();
    }

}