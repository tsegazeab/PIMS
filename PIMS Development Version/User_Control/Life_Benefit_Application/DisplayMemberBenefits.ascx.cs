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

public partial class User_Control_Life_Benefit_Application_ProcessMemberBenefits : System.Web.UI.UserControl
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

    public string LastMonth
    {
        get { return LabelLastMonth.Text; }
        set { LabelLastMonth.Text = LabelLastMonth0.Text = value; }
    }

    public string GrossSalary
    {
        get { return LabelGrossSalary.Text; }
        set { LabelGrossSalary.Text = value; }
    }

    public string FirstJuly
    {
        get { return LabelFirstJuly.Text; }
        set { LabelFirstJuly.Text = LabelFirstJuly0.Text = LabelFirstJuly1.Text = value; }
    }

    public string TotalServiceYears
    {
        get { return LabelTotalServiceYrs.Text; }
        set { LabelTotalServiceYrs.Text = value; }
    }

    public string TotalServiceBreaks
    {
        get { return LabelTotalServiceBreaks.Text; }
        set { LabelTotalServiceBreaks.Text = value; }
    }

    public List<PSPITS.MODEL.MemberServiceBreak> ServiceBreaks
    {
        set 
        {
            GridViewServiceBreaks.DataSource = value;
            GridViewServiceBreaks.DataBind();
        }
    }

    public string NetServiceYears
    {
        get { return LabelNetServiceYrs.Text; }
        set { LabelNetServiceYrs.Text = value; }
    }

    public string GrossPension
    {
        get { return LabelGrossPension.Text; }
        set { LabelGrossPension.Text = value; }
    }

    public string GrossPensionFormula
    {
        get { return LabelGrossPensionFormula.Text; }
        set { LabelGrossPensionFormula.Text = value; }
    }

    #endregion 

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
}