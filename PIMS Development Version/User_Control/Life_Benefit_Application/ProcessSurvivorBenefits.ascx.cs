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
    
    #endregion 

    public void DisplayMemberNameAndPensionID(int pensionID)
    {
        MemberPersonalDetail md = new PSPITSDO().GetMemberbyPensionID(pensionID);
        Member selectedMember = new PSPITSDO().GetMemberByPensionID(md.pensionID);
        this.MemberFullName = string.Format("{0}{1}{2}", md.firstName, ' ', md.lastName);
        this.PensionID = string.Format("{0}", pensionID);
        if (selectedMember != null)
        {
            this.RadTextBoxSchemeID.Text = selectedMember.schemeID;
            this.RadTextBoxDateOfAppointment.Text = selectedMember.dateoffirstAppointment.HasValue ? selectedMember.dateoffirstAppointment.Value.ToString("dd/MM/yyyy") : "";
        }
        this.PayrollNo = md.payrollNumber;        
    }

    public void LoadEventCombo()
    {
        //Load evidencetype comboBox        
        RadComboDeceasedMember.DataSource = new PSPITSDO().GetMemberBenefitEvents();
        RadComboDeceasedMember.DataTextField = PSPITS.COMMON.Constants.COL_LIST_EVENTNAME;
        RadComboDeceasedMember.DataValueField = PSPITS.COMMON.Constants.COL_LIST_EVENTCODE;
        RadComboDeceasedMember.SelectedIndex = -1;
        RadComboDeceasedMember.EmptyMessage = "--Please Select--";    
        RadComboDeceasedMember.DataBind();

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.PensionID = this.PensionID.Length > 3 ? this.PensionID : "0";
            DisplayMemberNameAndPensionID(Int32.Parse(this.PensionID));
            LoadEventCombo();
        }
    }

    protected void RadButtonProcessBenefit_Load(object sender, EventArgs e)
    {
        Utility utl = new Utility();

        RadAjaxManager radajaxmanager = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxManager1") as RadAjaxManager;
        RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

        RadTextBox RadTextBoxPensionID = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPensionID") as RadTextBox;
        RadTextBox RadTextBoxMemberFullName = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxMemberFullName") as RadTextBox;
        RadTextBox RadTextBoxPayrollNo = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadTextBoxPayrollNo") as RadTextBox;
        //
        //RadAsyncUpload
        //                
        
        RadComboBox RadComboBoxEvent = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadComboBoxEvent") as RadComboBox;
        RadDatePicker RadDatePickerDateOfEvent = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadDatePickerDateOfEvent") as RadDatePicker;

        RadButton RadButtonProcessBenefit = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonProcessBenefit") as RadButton;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonProcessBenefit != null))
        {
            //now check if the various combo boxes have been found 
            if (RadTextBoxPensionID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadTextBoxPensionID, null);
            if (RadTextBoxMemberFullName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadTextBoxMemberFullName, null);
            if (RadTextBoxPayrollNo != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadTextBoxPayrollNo, null);
            if (RadComboBoxEvent != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadComboBoxEvent, null);
            if (RadDatePickerDateOfEvent != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadDatePickerDateOfEvent, null);                        
        }
    }

    protected void RadButtonProcessBenefit_Click(object sender, EventArgs e)
    {
        MemberBenefitRequest mbr = new MemberBenefitRequest();
        mbr.Member = new PSPITSDO().GetMemberByPensionID(Int32.Parse(this.PensionID));
        mbr.EventType = Int32.Parse(RadComboDeceasedMember.SelectedValue);
        mbr.ServiceEndDate = RadDatePickerDateOfEvent.SelectedDate.Value;
        Session["MemberBenefitRequest"] = mbr;
        Response.Redirect("MemberBenefitsEligibility.aspx");
    }

    protected void RadComboDeceasedMember_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
    {

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

        RadButton RadButtonProcessBenefit = utl.FindControlToRootOnly((sender as RadButton).Parent, "RadButtonProcessBenefit") as RadButton;

        //load only when non of the controls are null
        if ((radajaxmanager != null) && (radajaxloading != null) && (RadButtonProcessBenefit != null))
        {
            //now check if the various combo boxes have been found 
            if (RadTextBoxPensionID != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadTextBoxPensionID, null);
            if (RadTextBoxMemberFullName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadTextBoxMemberFullName, null);
            if (RadTextBoxPayrollNo != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadTextBoxPayrollNo, null);
            if (RadComboDeceasedMember != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadComboDeceasedMember, null);
            if (RadDatePickerDateOfEvent != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadButtonProcessBenefit, RadDatePickerDateOfEvent, null);
        }
    }
}