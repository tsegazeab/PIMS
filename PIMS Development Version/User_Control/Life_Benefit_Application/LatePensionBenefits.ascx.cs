using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL;
using PSPITS.DAL.DATA;
using PSPITS.MODEL;
using PSPITS.COMMON;
using PSPITS.UIL;
using Telerik.Web.UI;
using System.Data;
using PSPITS.DAL.DATA.MemberBenefits;

public partial class User_Control_Life_Benefit_Application_LatePensionBenefits : System.Web.UI.UserControl
{
    
    #region .Properties.

    public string MemberFullName
    {
        get { return LabelName.Text; }
        set { LabelName.Text = value; }
    }

    public string NationalityID
    {
        get { return LabelNationalityID.Text; }
        set { LabelNationalityID.Text = value; }
    }

    public string Workstation
    {
        get { return LabelWorkStation.Text; }
        set { LabelWorkStation.Text = value; }
    }

    public string CurrentMDA
    {
        get { return LabelMDA.Text; }
        set { LabelMDA.Text = value; }
    }

    public string PayrollNumber
    {
        get { return LabelPayrollNumber.Text; }
        set { LabelPayrollNumber.Text = value; }
    }

    public string EstablishmentNumber
    {
        get { return LabelEstablishmentNo.Text; }
        set { LabelEstablishmentNo.Text = value; }
    }

    public string DateOfBirth
    {
        get { return LabelDateOfBirth.Text; }
        set { LabelDateOfBirth.Text = value; }
    }

    public string DateOfAppointment
    {
        get { return LabelDateOfAppointment.Text; }
        set { LabelDateOfAppointment.Text = value; }
    }

    public string DateOfRetirement
    {
        get { return LabelDateOfRetirement.Text; }
        set { LabelDateOfRetirement.Text = value; }
    }

    public string LastYearAnnualPension
    {
        get { return LabelGrossPension.Text; }
        set { LabelGrossPension.Text = LabelGrossPensionII.Text = value; }
    }

    public string AgeAtRetirement
    {
        get { return LabelAgeAtRetirement.Text; }
        set { LabelAgeAtRetirement.Text = value; }
    }

    public string NormalPensionableAge
    {
        get { return LabelNormalPensionableAge.Text; }
        set { LabelNormalPensionableAge.Text = value; }
    }

    public string MonthsBeyondPensionableAge
    {
        get { return LabelMonthsBeyondPensionableAge.Text; }
        set { LabelMonthsBeyondPensionableAge.Text = value; }
    }

    public string TypeOfRetirement
    {
        get { return LabelTypeOfRetirement.Text; }
        set { LabelTypeOfRetirement.Text = value; }
    }

    public string GrossSalaryAtRetirement
    {
        get { return LabelRetirementYearGrossSalary.Text; }
        set { LabelRetirementYearGrossSalary.Text = value; }
    }

    public string CommutationText
    {
        get { return LabelCommutationText.Text; }
        set { LabelCommutationText.Text = value; }
    }

    public string CommutationFactor
    {
        get { return LabelCommutationFactor.Text; }
        set { LabelCommutationFactor.Text = value; }
    }

    public string CivilServiceSalaryIncreaseText
    {
        get { return LabelCivilServiceSalaryIncreaseText.Text; }
        set { LabelCivilServiceSalaryIncreaseText.Text = value; }
    }

    public string CivilServiceSalaryIncrease
    {
        get { return LabelCivilServiceSalaryIncrease.Text; }
        set { LabelCivilServiceSalaryIncrease.Text = value; }
    }

    public string CurrentYearPension
    {
        get { return LabelCurrentYearPension.Text; }
        set { LabelCurrentYearPension.Text = value; }
    }

    public string PensionAccrualFormula
    {
        get { return LabelPensionAccrualFormula.Text; }
        set { LabelPensionAccrualFormula.Text = value; }
    }

    public string UpdatedGrossPension
    {
        get { return LabelUpdatedGrossPension.Text; }
        set { LabelUpdatedGrossPension.Text = value; }
    }

    public string UpdatedGrossPensionFormula
    {
        get { return LabelUpdatedGrossPensionFormula.Text; }
        set { LabelUpdatedGrossPensionFormula.Text = value; }
    }

    public string RetirementYearGrossPension
    {
        get { return LabelGrossPensionAccruedInRetirementYear.Text; }
        set { LabelGrossPensionAccruedInRetirementYear.Text = value; }
    }

    public string RetirementYearGrossPensionFormula
    {
        get { return LabelGrossPensionRecruitmentYearFormula.Text; }
        set { LabelGrossPensionRecruitmentYearFormula.Text = value; }
    }

    public string TotalAccruedPension
    {
        get { return LabelTotalAccruedPension.Text; }
        set { LabelTotalAccruedPension.Text = value; }
    }

    public string TotalAccruedPensionFormula
    {
        get { return LabelTotalAccruedPensionFormula.Text; }
        set { LabelTotalAccruedPensionFormula.Text = value; }
    }

    public string LatePensionReductionAdjustment
    {
        get { return LabelLateRetirementAdjustment.Text; }
        set { LabelLateRetirementAdjustment.Text = value; }
    }

    public string LatePensionReductionAdjustmentFormula
    {
        get { return LabelLateRetirementAdjustmentFormula.Text; }
        set { LabelLateRetirementAdjustmentFormula.Text = value; }
    }

    public string AnnualGrossPensionEntitlement
    {
        get { return LabelAnnualGrossPensionEntitlement.Text; }
        set { LabelAnnualGrossPensionEntitlement.Text = value; }
    }

    public string AnnualGrossPensionEntitlementFormula
    {
        get { return LabelGrossPensionEntitlementFormula.Text; }
        set { LabelGrossPensionEntitlementFormula.Text = value; }
    }

    public string NoCommutation
    {
        get { return LabelNoCommutation.Text; }
        set { LabelNoCommutation.Text = value; }
    }

    public string CommutationFormula
    {
        get { return LabelCommutationFormula.Text; }
        set { LabelCommutationFormula.Text = value; }
    }

    public string AThirdAnnualPension
    {
        get { return LabelAThirdAnnualPension.Text; }
        set { LabelAThirdAnnualPension.Text = value; }
    }

    public string AThirdAnnualPensionFormula
    {
        get { return LabelAThirdAnnualPensionFormula.Text; }
        set { LabelAThirdAnnualPensionFormula.Text = value; }
    }

    public string LumpSumCommutation
    {
        get { return LabelLumpSumCommutation.Text; }
        set { LabelLumpSumCommutation.Text = value; }
    }

    public string LumpSumCommutationFormula
    {
        get { return LabelLumpSumCommutationFormula.Text; }
        set { LabelLumpSumCommutationFormula.Text = value; }
    }

    public string NetAnnualPension
    {
        get { return LabelNetAnnualPension.Text; }
        set { LabelNetAnnualPension.Text = value; }
    }

    public string NetAnnualPensionFormula
    {
        get { return LabelNetAnnualPensionFormula.Text; }
        set { LabelNetAnnualPensionFormula.Text = value; }
    }

    public string MonthlyPension
    {
        get { return LabelMonthlyPension.Text; }
        set { LabelMonthlyPension.Text = value; }
    }

    public string MonthlyPensionFormula
    {
        get { return LabelMonthlyPensionFormula.Text; }
        set { LabelMonthlyPensionFormula.Text = value; }
    }

    #endregion 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            HideUnhideButtons();   
    }

    public void ConstructMonthlySalaryTable(List<MonthlySalary> monthlySalaries)
    {
        string grossSalaryText = "Gross Salary for the Month";
        TableRow row = new TableRow();
        TableCell cell = new TableCell();
        //First Row
        int limit = 4;
        cell.Text = "";
        row.Cells.Add(cell);
        for (int i = 0; i < limit; i++)
        {
            cell = new TableCell();
            cell.Text =  monthlySalaries.Count > i ? monthlySalaries[i].ToString() : "";
            cell.HorizontalAlign = HorizontalAlign.Right;
            cell.Font.Bold = true;
            row.Cells.Add(cell);
        }
        TableSalaryMonths.Rows.Add(row);
        //Second Row
        row = new TableRow();
        cell = new TableCell();
        cell.Text = grossSalaryText;
        row.Cells.Add(cell);
        for (int i = 0; i < limit; i++)
        {
            cell = new TableCell();
            cell.Text =  monthlySalaries.Count > i ? monthlySalaries[i].GrossSalary.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL) : "";
            cell.HorizontalAlign = HorizontalAlign.Right;
            row.Cells.Add(cell);
        }
        TableSalaryMonths.Rows.Add(row);
        if (monthlySalaries.Count > 4)
        {
            //Third row only for cases where we have more than 4 months
            limit = 8;
            row = new TableRow();
            cell = new TableCell();
            cell.Text = "";
            row.Cells.Add(cell);
            for (int i = 4; i < limit; i++)
            {
                cell = new TableCell();
                cell.Text = monthlySalaries.Count > i ? monthlySalaries[i].ToString() : "";
                cell.HorizontalAlign = HorizontalAlign.Right;
                cell.Font.Bold = true;
                row.Cells.Add(cell);
            }
            TableSalaryMonths.Rows.Add(row);
            //Fourth row
            row = new TableRow();
            cell = new TableCell();
            cell.Text = grossSalaryText;
            row.Cells.Add(cell);
            for (int i = 4; i < limit; i++)
            {
                cell = new TableCell();
                cell.Text = monthlySalaries.Count > i ? monthlySalaries[i].GrossSalary.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL) : "";
                cell.HorizontalAlign = HorizontalAlign.Right;
                row.Cells.Add(cell);
            }
            TableSalaryMonths.Rows.Add(row);
        }

        if (monthlySalaries.Count > 8)
        {
            //Fifth Row for cases where we have more than 8 months
            limit = 12;
            row = new TableRow();
            cell = new TableCell();
            cell.Text = "";
            row.Cells.Add(cell);
            for (int i = 8; i < limit; i++)
            {
                cell = new TableCell();
                cell.Text = monthlySalaries.Count > i ? monthlySalaries[i].ToString() : "";
                cell.HorizontalAlign = HorizontalAlign.Right;
                cell.Font.Bold = true;
                row.Cells.Add(cell);
            }
            TableSalaryMonths.Rows.Add(row);
            //Sixth and final row
            row = new TableRow();
            cell = new TableCell();
            cell.Text = grossSalaryText;
            row.Cells.Add(cell);
            for (int i = 8; i < limit; i++)
            {
                cell = new TableCell();
                cell.Text = monthlySalaries.Count > i ? monthlySalaries[i].GrossSalary.ToString(Constants.NUMBER_FORMAT_TWO_DECIMAL) : "";
                cell.HorizontalAlign = HorizontalAlign.Right;
                row.Cells.Add(cell);
            }
            TableSalaryMonths.Rows.Add(row);
        }
    }

    protected void RadButtonSaveBenefit_Click(object sender, EventArgs e)
    {
        if (Session["MemberBenefit"] == null)
            return;
        MemberBenefit mb = (MemberBenefit)Session["MemberBenefit"];
        if (RadioButtonA.Checked)
            mb.BenefitOption = 1;
        else if (RadioButtonB.Checked)
            mb.BenefitOption = 2;
        else
            return;
        try
        {
            new MemberBenefitCalcs().SaveMemberBenefit(mb);
        }
        catch (Exception ex) { }
        Session["MemberBenefit"] = mb;
        //Refresh page
        Response.Redirect(Request.RawUrl);
    }

    private void HideUnhideButtons()
    {
        if (Session["MemberBenefit"] == null)
            return;
        MemberBenefit mb = (MemberBenefit)Session["MemberBenefit"];
        if (mb.BenefitOption.HasValue && mb.BenefitOption.Value == Constants.BENEFIT_OPTION_A)
        {
            RadioButtonA.Checked = true;
            RadButtonSaveBenefit.Visible = RadioButtonA.Enabled = RadioButtonB.Enabled = false;
            RadioButtonA.Visible = RadioButtonB.Visible = RadButtonPrint.Visible = true;
        }
        else if (mb.BenefitOption.HasValue && mb.BenefitOption.Value == Constants.BENEFIT_OPTION_B)
        {
            RadioButtonB.Checked = true;
            RadButtonSaveBenefit.Visible = RadioButtonA.Enabled = RadioButtonB.Enabled = false;
            RadioButtonA.Visible = RadioButtonB.Visible = RadButtonPrint.Visible = true;
        }
        else
        {
            RadioButtonA.Checked = RadioButtonB.Checked = false;
            RadioButtonA.Visible = RadioButtonB.Visible = RadButtonSaveBenefit.Visible = RadioButtonA.Enabled = RadioButtonB.Enabled = true;
            RadButtonPrint.Visible = false;
        }
    }
}