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
using PSPITS.DAL.DATA.Membership;
using PSPITS.DAL.DATA.MemberBenefits;

public partial class User_Control_Life_Benefit_Application_ProcessSurvivorBenefits : System.Web.UI.UserControl
{
    private static string _pensionID = string.Empty;

    #region .Properties.

    public string PensionID
    {
        get { return RadTextBoxPensionID.Text; }
        set { RadTextBoxPensionID.Text = _pensionID = value; }
    }

    private string PayrollNo
    {
        get { return RadTextBoxPayrollNo.Text; }
        set { RadTextBoxPayrollNo.Text = value; }
    }

    public string MemberFullName
    {
        get { return RadTextBoxMemberFullName.Text; }
        set { RadTextBoxMemberFullName.Text = value; }
    }

    public string SchemeID
    {
        get { return RadTextBoxSchemeID.Text; }
        set { RadTextBoxSchemeID.Text = value; }
    }

    public string DateOfBirth
    {
        get { return RadTextBoxDateOfBirth.Text; }
        set { RadTextBoxDateOfBirth.Text = value; }
    }

    public string DateOfAppointment
    {
        get { return RadTextBoxDateOfAppointment.Text; }
        set { RadTextBoxDateOfAppointment.Text = value; }
    }

    public string DateOfDeath
    {
        get { return RadTextBoxDateOfDeath.Text; }
        set { RadTextBoxDateOfDeath.Text = value; }
    }

    public string StatusMessage
    {
        get { return LabelStatusMsg.Text; }
        set { LabelStatusMsg.Text = value; }
    }
    
    #endregion 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RadComboDeceasedMember.DataBind();
        }
    }

    protected void RadButtonProcessBenefit_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadComboBox RadComboDeceasedMember = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboDeceasedMember") as RadComboBox;

        RadButton RadButtonProcessBenefit = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonProcessBenefit") as RadButton;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonProcessBenefit != null))
        {
            //now check if the various combo boxes have been found 
            if (RadComboDeceasedMember != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadComboDeceasedMember, null);                        
        }
    }

    protected void RadButtonProcessBenefit_Click(object sender, EventArgs e)
    {
        if (Session["MemberDeath"] != null)
        {
            MemberDeath md = (MemberDeath)Session["MemberDeath"];
            MemberBenefitRequest mbr = new MemberBenefitRequest();
            mbr.Member = md.Member;
            mbr.EventType = 3;
            mbr.ServiceEndDate = md.DateOfDeath;

            MemberBenefitCalcs mbc = new MemberBenefitCalcs();
            MemberBenefit mb = mbc.GetMemberBenefit(mbr);
            Response.Redirect("SurvivorBenefits.aspx");
        }
    }

    protected void RadComboDeceasedMember_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {
        try
        {
            if (RadComboDeceasedMember.SelectedItem != null)
            {
                MemberDeath md = new MembershipService().GetMemberDeathByPensionId(Int32.Parse(RadComboDeceasedMember.SelectedItem.Value));
                Session["PensionID"] = RadComboDeceasedMember.SelectedItem.Value;                
                Session["MemberDeath"] = md;
                if (md != null)
                {
                    this.PensionID = md.PensionId.ToString();
                    this.SchemeID = md.Member.schemeID;
                    this.MemberFullName = string.Format("{0} {1}", md.Member.firstName, md.Member.lastName);
                    this.PayrollNo = md.Member.payrollNumber;
                    this.DateOfAppointment = md.Member.dateoffirstAppointment.Value.ToString("dd/MM/yyyy");
                    this.DateOfBirth = md.Member.dateofBirth.Value.ToString("dd/MM/yyyy");
                    this.DateOfDeath = md.DateOfDeath.ToString("dd/MM/yyyy");
                    GridViewSurvivors.DataSourceID = "odsMemberSurvivors";
                    GridViewSurvivors.DataBind();
                    if (GridViewSurvivors.Rows.Count == 0)
                    {
                        this.StatusMessage = "No survivors";
                        RadButtonProcessBenefit.Enabled = false;
                    }
                    else
                    {
                        RadButtonProcessBenefit.Enabled = true;
                    }
                    VisualizeControls(true);
                }
                else
                {
                    this.StatusMessage = "Member details not found";
                    VisualizeControls(false);
                    RadButtonProcessBenefit.Enabled = false;
                }
            }
        }
        catch (Exception ex)
        { 
        
        }
    }

    private void VisualizeControls(bool visualize)
    {
        LabelDateOfBirth.Visible = visualize;
        LabelDateOfDeath.Visible = visualize;
        LabelDateOfFirstAppointment.Visible = visualize;
        LabelMemberName.Visible = visualize;
        LabelPayrollNo.Visible = visualize;
        LabelSchemeID.Visible = visualize;

        RadTextBoxDateOfAppointment.Visible = visualize;
        RadTextBoxDateOfBirth.Visible = visualize;
        RadTextBoxDateOfDeath.Visible = visualize;
        RadTextBoxMemberFullName.Visible = visualize;
        RadTextBoxPayrollNo.Visible = visualize;
        RadTextBoxSchemeID.Visible = visualize;

        GridViewSurvivors.Visible = true;
    }

    protected void RadComboDeceasedMember_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;
        //
        //TextBoxes
        //
        RadTextBox RadTextBoxPensionID = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadTextBoxPensionID") as RadTextBox;
        RadTextBox RadTextBoxSchemeID = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadTextBoxSchemeID") as RadTextBox;
        RadTextBox RadTextBoxMemberFullName = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadTextBoxMemberFullName") as RadTextBox;
        RadTextBox RadTextBoxPayrollNo = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadTextBoxPayrollNo") as RadTextBox;
        RadTextBox RadTextBoxDateOfBirth = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadTextBoxDateOfBirth") as RadTextBox;
        RadTextBox RadTextBoxDateOfAppointment = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadTextBoxDateOfAppointment") as RadTextBox;
        RadTextBox RadTextBoxDateOfDeath = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadTextBoxDateOfDeath") as RadTextBox;
        //
        //TextBoxes
        //
        Label LabelSchemeID = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "LabelSchemeID") as Label;
        Label LabelPayrollNo = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "LabelPayrollNo") as Label;
        Label LabelMemberName = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "LabelMemberName") as Label;
        Label LabelDateOfBirth = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "LabelDateOfBirth") as Label;
        Label LabelDateOfFirstAppointment = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "LabelDateOfFirstAppointment") as Label;
        Label LabelDateOfDeath = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "LabelDateOfDeath") as Label;
        Label LabelStatusMsg = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "LabelStatusMsg") as Label;
        //
        //GridView
        //   
        GridView GridViewSurvivors = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "GridViewSurvivors") as GridView;
        //
        //RadButton
        //
        RadButton RadButtonProcessBenefit = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadButtonProcessBenefit") as RadButton;
        //
        //RadCombobox
        //
        RadComboBox RadComboDeceasedMember = utl.FindControlToRootOnly((sender as RadComboBox).Parent, "RadComboDeceasedMember") as RadComboBox;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadComboDeceasedMember != null))
        {
            //now check if the various combo boxes have been found 
            if (RadTextBoxPensionID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, RadTextBoxPensionID, null);
            if (RadTextBoxMemberFullName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, RadTextBoxMemberFullName, null);
            if (RadTextBoxPayrollNo != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, RadTextBoxPayrollNo, null);
            if (RadTextBoxSchemeID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, RadTextBoxSchemeID, radajaxloading);
            if (RadTextBoxDateOfBirth != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, RadTextBoxDateOfBirth, null);
            if (RadTextBoxDateOfAppointment != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, RadTextBoxDateOfAppointment, null);
            if (RadTextBoxDateOfDeath != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, RadTextBoxDateOfDeath, null);

            if (LabelSchemeID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, LabelSchemeID, null);
            if (LabelPayrollNo != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, LabelPayrollNo, null);
            if (LabelMemberName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, LabelMemberName, null);
            if (LabelDateOfBirth != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, LabelDateOfBirth, null);
            if (LabelDateOfFirstAppointment != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, LabelDateOfFirstAppointment, null);
            if (LabelDateOfDeath != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, LabelDateOfDeath, null);
            if (LabelStatusMsg != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, LabelStatusMsg, null);

            if (GridViewSurvivors != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, GridViewSurvivors, null);
            if (RadButtonProcessBenefit != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadComboDeceasedMember, RadButtonProcessBenefit, null);
        }
    }
}