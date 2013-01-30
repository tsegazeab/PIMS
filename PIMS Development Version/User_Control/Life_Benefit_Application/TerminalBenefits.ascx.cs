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

public partial class User_Control_Life_Benefit_Application_TerminalBenefits : System.Web.UI.UserControl
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

    public string DateOfResignation
    {
        get { return LabelDateOfResignation.Text; }
        set { LabelDateOfResignation.Text = LabelDateOfResignation0.Text = LabelDateOfResignation1.Text = LabelDateOfResignation2.Text = value; }
    }

    public string GrossSalaryInFinalMonth
    {
        get { return LabelFinalMonthSalary.Text; }
        set { LabelFinalMonthSalary.Text = value; }
    }

    public string GrossAccruedPension
    {
        get { return LabelGrossPension.Text; }
        set { LabelGrossPension.Text = LabelGrossPension.Text = value; }
    }

    public string GrossAccruedPensionFormula
    {
        get { return LabelPensionAccrualFormula.Text; }
        set { LabelPensionAccrualFormula.Text = value; }
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

    public string MonthsToPensionableAge
    {
        get { return LabelMonthsToPensionableAge.Text; }
        set { LabelMonthsToPensionableAge.Text = value; }
    }

    public string StandardRetirementDate
    {
        get { return LabelStandardRetirementDate.Text; }
        set { LabelStandardRetirementDate.Text = LabelStandardRetirementDate0.Text = value; }
    }

    public string TotalServiceYears
    {
        get { return LabelTotalServiceYears.Text; }
        set { LabelTotalServiceYears.Text = value; }
    }

    public string ServiceBreakYears
    {
        get { return LabelServiceBreakYears.Text; }
        set { LabelServiceBreakYears.Text = value; }
    }

    public string PensionableYears
    {
        get { return LabelPensionableYears.Text; }
        set { LabelPensionableYears.Text = value; }
    }

    public string LastDateBeforeResignationDate
    {
        get { return LabelLastDateB4Resignation.Text; }
        set { LabelLastDateB4Resignation.Text = value; }
    }

    public string DeferredMonthlyPension
    {
        get { return LabelDeferredMonthlyPension.Text; }
        set { LabelDeferredMonthlyPension.Text = value; }
    }

    public string TotalLumpSumAmount
    {
        get { return LabelLumpSumAmount.Text; }
        set { LabelLumpSumAmount.Text = value; }
    }

    public string TotalLumpSumAmountFormula
    {
        get { return LabelLumpSumAmountFormula.Text; }
        set { LabelLumpSumAmountFormula.Text = value; }
    }

    #endregion 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            HideUnhideButtons();
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