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

public partial class Benefit_Module_EarlyPensionBenefits : System.Web.UI.Page
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

            EarlyPensionBenefits1.MemberFullName = mb.Member.firstName + " " + mb.Member.lastName;
            EarlyPensionBenefits1.PayrollNumber = mb.Member.payrollNumber;
            EarlyPensionBenefits1.EstablishmentNumber = mb.Member.establishmentNumber;
            EarlyPensionBenefits1.NationalityID = mb.Member.NationalID;
            EarlyPensionBenefits1.CurrentMDA = mb.CurrentMDA;
            EarlyPensionBenefits1.DateOfAppointment = mb.Member.dateoffirstAppointment.Value.ToString(Constants.DATE_FORMAT);
            EarlyPensionBenefits1.DateOfBirth = mb.Member.dateofBirth.Value.ToString(Constants.DATE_FORMAT);
            EarlyPensionBenefits1.DateOfRetirement = mbr.ServiceEndDate.ToString(Constants.DATE_FORMAT);
            EarlyPensionBenefits1.LastYearAnnualPension = mb.GrossAnnualPensionUptoLastFY.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            EarlyPensionBenefits1.ConstructMonthlySalaryTable(mb.MonthlySalaries);
            EarlyPensionBenefits1.AgeAtRetirement = mb.MemberAge.ToString();
            EarlyPensionBenefits1.NormalPensionableAge = mb.PensionableAge.ToString();
            EarlyPensionBenefits1.MonthsToPensionableAge = mb.MonthsToPensionableAge.ToString();
            EarlyPensionBenefits1.TypeOfRetirement = mb.PensionTypeString;
            EarlyPensionBenefits1.GrossSalaryAtRetirement = mb.GrossSalaryInRetirementYear.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            EarlyPensionBenefits1.CommutationText = string.Format("Commutation factor at age {0} last birthday", mb.MemberAge.Years);
            EarlyPensionBenefits1.CommutationFactor = mb.CommutationFactor.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            EarlyPensionBenefits1.CivilServiceSalaryIncreaseText = string.Format("Average Civil Service Salary Increase in Financial Year {0}", "2011-2012");
            EarlyPensionBenefits1.CivilServiceSalaryIncrease = string.Format("{0}%", mb.AverageCivilServiceSalaryIncrease.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.CurrentYearPension = mb.PensionAccrualUpdateForCurrentFY.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formual
            EarlyPensionBenefits1.PensionAccrualFormula = string.Format("{0} ÷ 100 x {1}",
                mb.AverageCivilServiceSalaryIncrease.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), mb.GrossAnnualPensionUptoLastFY.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.UpdatedGrossPension = mb.UpdatedGrossAnnualPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            EarlyPensionBenefits1.UpdatedGrossPensionFormula = string.Format("{0} + {1}", mb.GrossAnnualPensionUptoLastFY.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL),
                mb.PensionAccrualUpdateForCurrentFY.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.RetirementYearGrossPension = mb.GrossPensionAccruedInRetirementYear.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            EarlyPensionBenefits1.RetirementYearGrossPensionFormula = string.Format("1.5 ÷ 100 x {0}", mb.GrossSalaryInRetirementYear.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.TotalAccruedPension = mb.TotalAccruedPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            EarlyPensionBenefits1.TotalAccruedPensionFormula = string.Format("{0} + {1}", mb.UpdatedGrossAnnualPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), 
                mb.GrossPensionAccruedInRetirementYear.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.EarlyPensionReductionAdjustment = mb.EarlyRetirementReductionAdjustment.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            EarlyPensionBenefits1.EarlyPensionReductionAdjustmentFormula = string.Format("0.5 ÷ 100 * {0} * {1}", mb.MonthsToPensionableAge.ToString(Constants.NUMBER_FORMAT_NO_DECIMAL), mb.TotalAccruedPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.AnnualGrossPensionEntitlement = mb.AnnualGrossPensionEntitlement.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            EarlyPensionBenefits1.AnnualGrossPensionEntitlementFormula = string.Format("{0} - {1}", mb.TotalAccruedPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), 
                mb.EarlyRetirementReductionAdjustment.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.NoCommutation = mb.NoCommutation.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            EarlyPensionBenefits1.CommutationFormula = string.Format("{0} ÷ {1}", mb.TotalAccruedPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), Constants.NUMBER_OF_MONTHS_IN_YEAR);
            EarlyPensionBenefits1.AThirdAnnualPension = mb.AThirdAnnualPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            EarlyPensionBenefits1.AThirdAnnualPensionFormula = string.Format("{0} ÷ 3", mb.TotalAccruedPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.LumpSumCommutation = mb.LumpSumCommutation.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            EarlyPensionBenefits1.LumpSumCommutationFormula = string.Format("{0} x {1}", mb.AThirdAnnualPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), 
                mb.CommutationFactor.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.NetAnnualPension = mb.NetAnnualPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            EarlyPensionBenefits1.NetAnnualPensionFormula = string.Format("{0} - {1}", mb.TotalAccruedPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), 
                mb.AThirdAnnualPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL));
            EarlyPensionBenefits1.MonthlyPension = mb.MonthlyPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL);
            //Formula
            EarlyPensionBenefits1.MonthlyPensionFormula = string.Format("{0} ÷ {1}", mb.NetAnnualPension.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL), Constants.NUMBER_OF_MONTHS_IN_YEAR);
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