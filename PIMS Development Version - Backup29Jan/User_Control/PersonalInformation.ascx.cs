using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.Sql;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;
using PSPITS.UIL;
using Telerik.Web.UI;


public partial class User_Control_PersonalInformation : System.Web.UI.UserControl
{
    private static string _pensionID = string.Empty;
    private static string _schemeID = string.Empty;

    public string PensionID
    {
        get { return RadTextBoxPensionID.Text; }
        set { RadTextBoxPensionID.Text = _pensionID = value; }
    }
    public string PersonalNumber
    {
        get { return RadTextBoxpersonalNumber.Text; }
        set { RadTextBoxpersonalNumber.Text = _schemeID = value; }
    }

    public string SchemeID
    {
        get { return RadTextBoxSchemeID.Text; }
        set { RadTextBoxSchemeID.Text = value; }
    }

    public string Prefix
    {
        get { return RadComboBoxprefix.SelectedValue; }
        set { RadComboBoxprefix.SelectedValue = value; }
    }

    public string firstName
    {
        get { return RadTextBoxfirstName.Text; }
        set { RadTextBoxfirstName.Text = value; }
    }
    public string lastName
    {
        get { return RadTextBoxlastName.Text; }
        set { RadTextBoxlastName.Text = value; }
    }
    public string Gender
    {
        get { return RadComboBoxgender.SelectedValue; }
        set { RadComboBoxgender.SelectedValue = value; }
    }
    public DateTime? DateofBirth
    {
        get
        {
            return RadDatePickerDateOfBirth.SelectedDate;
        }
        set
        {
            RadDatePickerDateOfBirth.SelectedDate = value;
        }
    }
    public DateTime? DateofAppointment
    {
        get
        {
            return RadDatePickerDateOfAppointment.SelectedDate;
        }
        set
        {
            RadDatePickerDateOfAppointment.SelectedDate = value;
        }
    }

    public int CurrentMDA
    {
        get 
        {
            if (RadComboBoxcurrentMDA.SelectedItem != null)
                return Int32.Parse(RadComboBoxcurrentMDA.SelectedItem.Value);
            return 0;
        }
        set
        {
            RadComboBoxcurrentMDA.SelectedValue = value.ToString();
        }
    }

    public string MaritalStatus
    {
        get { return RadComboBoxmaritalStatus.SelectedValue; }
        set { RadComboBoxmaritalStatus.SelectedValue = value; }
    }
    public string nationalID
    {
        get { return RadTextBoxnationalID.Text; }
        set { RadTextBoxnationalID.Text = value; }
    }
    public string payrollNumber
    {
        get { return RadTextBoxpayrollNumber.Text; }
        set { RadTextBoxpayrollNumber.Text = value; }
    }
    public string establishmentNumber
    {
        get { return RadTextBoxEstablishmentNumber.Text; }
        set { RadTextBoxEstablishmentNumber.Text = value; }
    }

    public void EmptyControl()
    {
        Utility.EmptyControl(RadTextBoxPensionID);
        Utility.EmptyControl(RadComboBoxprefix);
        Utility.EmptyControl(RadTextBoxfirstName);
        Utility.EmptyControl(RadTextBoxlastName);
        Utility.EmptyControl(RadComboBoxgender);
        Utility.EmptyControl(RadDatePickerDateOfBirth);
        Utility.EmptyControl(RadDatePickerDateOfAppointment);
        Utility.EmptyControl(RadComboBoxcurrentMDA);
        Utility.EmptyControl(RadComboBoxmaritalStatus);
        Utility.EmptyControl(RadTextBoxnationalID);
        Utility.EmptyControl(RadTextBoxEstablishmentNumber);

    }
    public void ToggleControl(Boolean flag)
    {
        //RadTextBoxPensionID.Enabled=flag;
        RadComboBoxprefix.Enabled = flag;
        RadTextBoxfirstName.Enabled = flag;
        RadTextBoxlastName.Enabled = flag;
        RadComboBoxgender.Enabled = flag;
        RadDatePickerDateOfAppointment.Enabled = flag;
        RadDatePickerDateOfBirth.Enabled = flag;
        RadComboBoxcurrentMDA.Enabled = flag;
        RadComboBoxmaritalStatus.Enabled = flag;
        RadTextBoxnationalID.Enabled = flag;
        RadTextBoxpayrollNumber.Enabled = flag;
        RadTextBoxEstablishmentNumber.Enabled = flag;
    }
    private void LoadComboBox()
    {
        //Load Prefix comboBox
        RadComboBoxprefix.DataSource = new PSPITSDO().GetPrefix();
        RadComboBoxprefix.DataTextField = PSPITS.COMMON.Constants.COL_LIST_PREFIX;
        RadComboBoxprefix.DataValueField = PSPITS.COMMON.Constants.COL_LIST_PREFIX;
        RadComboBoxprefix.DataBind();
        //Load Gender comboBox
        RadComboBoxgender.DataSource = new PSPITSDO().GetGender();
        RadComboBoxgender.DataTextField = PSPITS.COMMON.Constants.COL_LIST_GENDER;
        RadComboBoxgender.DataValueField = PSPITS.COMMON.Constants.COL_LIST_GENDER;
        RadComboBoxgender.DataBind();
        //Load marital status comboBox
        RadComboBoxmaritalStatus.DataSource = new PSPITSDO().GetMaritalStatus();
        RadComboBoxmaritalStatus.DataTextField = PSPITS.COMMON.Constants.COL_LIST_MARITAL;
        RadComboBoxmaritalStatus.DataValueField = PSPITS.COMMON.Constants.COL_LIST_MARITALID;
        RadComboBoxmaritalStatus.DataBind();
        //Load MDA comboBox
        RadComboBoxcurrentMDA.DataSource = new PSPITSDO().GetMDA();
        RadComboBoxcurrentMDA.DataTextField = PSPITS.COMMON.Constants.COL_LIST_MDA;
        RadComboBoxcurrentMDA.DataValueField = PSPITS.COMMON.Constants.COL_LIST_MDAID;
        RadComboBoxcurrentMDA.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PSPITSDO _do = new PSPITSDO();
            this.PensionID = _do.PadCode(_do.GenPensionID(), 9);
            this.SchemeID = _do.GenSchemeID();
            LoadComboBox();
        }
    }
    protected void RadButtonSearchPensionID_Click(object sender, EventArgs e)
    {
        MemberPersonalDetail member = new PSPITSDO().GetMemberbyPensionID(Int32.Parse(this.PensionID));
        if (member.pensionID > 0)
        {
            this.ToggleControl(true);
            this.LoadMember(member);
        }
    }
    public void LoadMember(MemberPersonalDetail md)
    {
        this.PensionID = string.Format("{0}", md.pensionID);
        
        this.Prefix = md.prefix.Trim();
        this.firstName = md.firstName.Trim();
        this.lastName = md.lastName.Trim();
        this.Gender = md.gender.Trim();
        this.MaritalStatus = string.Format("{0}", md.maritalStatus);
        this.nationalID = md.nationalID.Trim();
        this.payrollNumber = md.payrollNumber.Trim();
        this.establishmentNumber = md.establishmentNumber.Trim();
        this.DateofBirth = md.dateofBirth;
        this.DateofAppointment = md.dateofBirth;
        this.CurrentMDA = md.currentMDA;
    }
}