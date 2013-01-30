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

public partial class Benefit_Module_TerminalBenefits : System.Web.UI.Page
{
    private const string years = " years";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DisplayMemberBenefits();
        }
    }

    private void DisplayMemberBenefits()
    {
        int pensionId;
        if (Int32.TryParse(Master.PensionID, out pensionId) && pensionId > 0)
        {
            if (Session["MemberBenefitRequest"] == null || Session["MemberBenefit"] == null)
                return;
            MemberBenefitRequest mbr = (MemberBenefitRequest)Session["MemberBenefitRequest"];
            //Save mbr back to session
            Session["MemberBenefitRequest"] = mbr;
            MemberBenefit mb = (MemberBenefit)Session["MemberBenefit"];

            MemberAge testAge = mb.PensionableAge - mb.MemberAge;

            TerminalBenefits1.MemberFullName = mb.Member.firstName + " " + mb.Member.lastName;
            TerminalBenefits1.PayrollNumber = mb.Member.payrollNumber;
            TerminalBenefits1.EstablishmentNumber = mb.Member.establishmentNumber;
            TerminalBenefits1.NationalityID = mb.Member.NationalID;
            TerminalBenefits1.CurrentMDA = mb.CurrentMDA;
            TerminalBenefits1.DateOfAppointment = mb.Member.dateoffirstAppointment.Value.ToString(Constants.DATE_FORMAT);
            TerminalBenefits1.DateOfBirth = mb.Member.dateofBirth.Value.ToString(Constants.DATE_FORMAT);
            TerminalBenefits1.DateOfResignation = mbr.ServiceEndDate.ToString(Constants.DATE_FORMAT);
            TerminalBenefits1.AgeAtRetirement = mb.MemberAge.ToString();
            TerminalBenefits1.NormalPensionableAge = mb.PensionableAge.ToString();
            TerminalBenefits1.MonthsToPensionableAge = mb.MonthsToPensionableAge.ToString();
            TerminalBenefits1.GrossSalaryInFinalMonth = mb.FinalMonthGrossSalary.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            TerminalBenefits1.TotalServiceYears = string.Format("{0} {1}", mb.NumberOfServiceYears.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), years);
            TerminalBenefits1.ServiceBreakYears = string.Format("{0} {1}", mb.NumberOfServiceBreakYears.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), years);
            TerminalBenefits1.PensionableYears = string.Format("{0} {1}", mb.NumberOfPensionableYears.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), years);
            TerminalBenefits1.StandardRetirementDate = mb.StandardRetirementDate.Value.ToString(Constants.DATE_FORMAT);
            TerminalBenefits1.LastDateBeforeResignationDate = (mb.StandardRetirementDate.Value.AddDays(-1)).ToString(Constants.DATE_FORMAT);
            TerminalBenefits1.GrossAccruedPension = mb.GrossPensionAccruedInRetirementYear.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            TerminalBenefits1.GrossAccruedPensionFormula = string.Format("1.5 ÷ 100 x {0} X {1} X {2}", mb.FinalMonthGrossSalary.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL),
                Constants.NUMBER_OF_MONTHS_IN_YEAR, mb.NumberOfPensionableYears.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            TerminalBenefits1.DeferredMonthlyPension = mb.GrossPensionAccruedInRetirementYear.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);

            TerminalBenefits1.TotalLumpSumAmount = mb.LumpSumPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            TerminalBenefits1.TotalLumpSumAmountFormula = string.Format("{0} x {1}", mb.GrossPensionAccruedInRetirementYear.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), mb.CommutationFactor);
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