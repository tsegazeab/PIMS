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
using PSPITS.DAL.DATA.MemberBenefits;

public partial class User_Control_Life_Benefit_Application_MemberBenefitEligibility : System.Web.UI.UserControl
{
    private static string _pensionID = string.Empty;

    #region .Properties.

    public string PensionID
    {
        get { return RadTextBoxPensionID.Text; }
        set { RadTextBoxPensionID.Text = _pensionID = value; }
    }

    public string SchemeID
    {
        get { return RadTextBoxSchemeID.Text; }
        set { RadTextBoxSchemeID.Text = value; }
    }

    public string PayrollNo
    {
        get { return RadTextBoxPayrollNo.Text; }
        set { RadTextBoxPayrollNo.Text = value; }
    }

    public string MemberFullName
    {
        get { return RadTextBoxMemberFullName.Text; }
        set { RadTextBoxMemberFullName.Text = value; }
    }

    public bool DoBCheck
    {
        set
        {
            if (value)
            {
                ImageDoBYes.Visible = true;
                ImageDoBNo.Visible = false;
            }
            else
            {
                ImageDoBYes.Visible = false;
                ImageDoBNo.Visible = true;
            }
        }
    }

    public bool DoBEvidenceCheck
    {
        set
        {
            if (value)
            {
                ImageDoBEvidenceYes.Visible = true;
                ImageDoBEvidenceNo.Visible = false;
            }
            else
            {
                ImageDoBEvidenceYes.Visible = false;
                ImageDoBEvidenceNo.Visible = true;
            }
        }
    }

    public bool DoACheck
    {
        set
        {
            if (value)
            {
                ImageDoAYes.Visible = true;
                ImageDoANo.Visible = false;
            }
            else
            {
                ImageDoAYes.Visible = false;
                ImageDoANo.Visible = true;
            }
        }
    }

    public bool DoAEvidenceCheck
    {
        set
        {
            if (value)
            {
                ImageDoAEvidenceYes.Visible = true;
                ImageDoAEvidenceNo.Visible = false;
            }
            else
            {
                ImageDoAEvidenceYes.Visible = false;
                ImageDoAEvidenceNo.Visible = true;
            }
        }
    }

    public bool ServiceBreakEvidenceCheck
    {
        set
        {
            if (value)
            {
                ImageServiceBreaksEvidenceYes.Visible = true;
                ImageServiceBreaksEvidenceNo.Visible = false;
            }
            else
            {
                ImageServiceBreaksEvidenceYes.Visible = false;
                ImageServiceBreaksEvidenceNo.Visible = true;
            }
        }
    }

    public bool AnnualPensionProcessedCheck
    {
        set
        {
            if (value)
            {
                ImageAnnualPensionProcessedYes.Visible = true;
                ImageAnnualPensionProcessedNo.Visible = false;
            }
            else
            {
                ImageAnnualPensionProcessedYes.Visible = false;
                ImageAnnualPensionProcessedNo.Visible = true;
            }
        }
    }
    
    #endregion 

    public void DisplayMemberBenefitEligibility(int pensionID)
    {
        MemberPersonalDetail md = new PSPITSDO().GetMemberbyPensionID(pensionID);
        Member selectedMember = new PSPITSDO().GetMemberByPensionID(md.pensionID);
        this.MemberFullName = string.Format("{0}{1}{2}", md.firstName, ' ', md.lastName);
        this.PensionID = string.Format("{0}", pensionID);
        if (selectedMember != null)
        {
            this.RadTextBoxSchemeID.Text = selectedMember.schemeID;            
        }
        this.PayrollNo = md.payrollNumber;        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.PensionID = this.PensionID.Length > 3 ? this.PensionID : "0";
            DisplayMemberBenefitEligibility(Int32.Parse(this.PensionID));
            
        }
    }

    protected void RadButtonProcessBenefit_Click(object sender, EventArgs e)
    {
        if (Session["MemberBenefitRequest"] == null)
            return;
        MemberBenefitRequest mbr = (MemberBenefitRequest)Session["MemberBenefitRequest"];
        //Save mbr back to session
        Session["MemberBenefitRequest"] = mbr;
        Response.Redirect("DisplayMemberBenefits.aspx");
    }

    protected void RadButtonViewGross_Click(object sender, EventArgs e)
    {
        if (Session["MemberBenefitRequest"] == null)
            return;
        MemberBenefitRequest mbr = (MemberBenefitRequest)Session["MemberBenefitRequest"];
        //Save mbr back to session
        Session["MemberBenefitRequest"] = mbr;
        Response.Redirect("DisplayMemberBenefits.aspx");
    }
    protected void RadButtonProcessBenefit_Click1(object sender, EventArgs e)
    {
        if (Session["MemberBenefitRequest"] == null)
            return;
        MemberBenefitRequest mbr = (MemberBenefitRequest)Session["MemberBenefitRequest"];
        //Save mbr back to session
        Session["MemberBenefitRequest"] = mbr;
        MemberBenefitCalcs mbc = new MemberBenefitCalcs();
        MemberBenefit mb = mbc.GetMemberBenefit(mbr);
        Session["MemberBenefit"] = mb;
        if (mb.PensionTypeEnum == PensionType.PesionableAgePension)
            Response.Redirect("PensionableAgeBenefits.aspx");
        else if (mb.PensionTypeEnum == PensionType.EarlyPension)
            Response.Redirect("EarlyPensionBenefits.aspx");
        else if (mb.PensionTypeEnum == PensionType.TerminationLumpSumAmount)
            Response.Redirect("TerminalBenefits.aspx");
        else if (mb.PensionTypeEnum == PensionType.LatePension)
        {
            Response.Redirect("LatePensionBenefits.aspx");
        }
    }
}