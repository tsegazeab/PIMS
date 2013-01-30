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

public partial class User_Control_Life_Benefit_Application_DisabilityPensionBenefits : System.Web.UI.UserControl
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

    public string DateOfDisability
    {
        get { return LabelDateOfDisability.Text; }
        set { LabelDateOfDisability.Text = value; }
    }

    public string LastYearAnnualPension
    {
        get { return LabelGrossPension.Text; }
        set { LabelGrossPension.Text = LabelGrossPensionII.Text = value; }
    }

    public string ProjectedAgeAtRetirement
    {
        get { return LabelProjectedAgeAtRetirement.Text; }
        set { LabelProjectedAgeAtRetirement.Text = value; }
    }

    public string FirstOfFollowingMonth
    {
        get { return LabelFirstOfFollowingMonth.Text; }
        set { LabelFirstOfFollowingMonth.Text = value; }
    }

    public string ProjectedRetirementDate
    {
        get { return LabelProjectedRetirementDate.Text; }
        set { LabelProjectedRetirementDate.Text = value; }
    }

    public string ProjectedRemainingService
    {
        get { return LabelProjectedRemainingService.Text; }
        set { LabelProjectedRemainingService.Text = value; }
    }

    public string ProjectedRemainingServiceYears
    {
        get { return LabelProjectedRemainingServiceYears.Text; }
        set { LabelProjectedRemainingServiceYears.Text = value; }
    }

    public string GrossSalaryAtDisability
    {
        get { return LabelDisabilityYearGrossSalary.Text; }
        set { LabelDisabilityYearGrossSalary.Text = value; }
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

    public string ProjectedAnnualPension
    {
        get { return LabelProjectedAnnualPension.Text; }
        set { LabelProjectedAnnualPension.Text = value; }
    }

    public string ProjectedAnnualPensionFormula
    {
        get { return LabelProjectedAnnualPensionFormula.Text; }
        set { LabelProjectedAnnualPensionFormula.Text = value; }
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

    }
}