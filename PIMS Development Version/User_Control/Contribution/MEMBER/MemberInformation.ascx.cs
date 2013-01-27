using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;
using PSPITS.UIL;
using PSPITS.MODEL;

public partial class User_Control_Contribution_MEMBER_MemberInformation : System.Web.UI.UserControl
{
    private static string _pensionID = string.Empty;
    private static string _schemeID = string.Empty;

    public string PensionID
    {
        get { return _pensionID; }
        set { _pensionID = value; }
    }
    public string PayrollNumber
    {
        get { return RadTextBoxPayrollNumber.Text; }
        set { RadTextBoxPayrollNumber.Text = value; }
    }

    public string SchemeID
    {
        get { return RadTextBoxSchemeID.Text; }
        set
        {
            _schemeID = value;
            RadTextBoxSchemeID.Text = _schemeID;
        }
    }

    public string MaritalStatus
    {
        get { return RadTextBoxMaritalStatus.Text; }
        set { RadTextBoxMaritalStatus.Text = value; }
    }

    public string DateOfAppointment
    {
        get { return RadTextBoxDoA.Text; }
        set { RadTextBoxDoA.Text = value; }
    }
    public string lastName
    {
        get { return RadTextBoxLastName.Text; }
        set { RadTextBoxLastName.Text = value; }
    }
    public string firstName
    {
        get { return RadTextBoxFirstName.Text; }
        set { RadTextBoxFirstName.Text = value; }
    }

    public string DateofBirth
    {
        get
        {
            return RadTextBoxDoB.Text;
        }
        set
        {
            RadTextBoxDoB.Text = value;
        }

    }

    public string DateofRetirement
    {
        get { return RadTextBoxDoR.Text; }
        set { RadTextBoxDoR.Text = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //    MemberPersonalDetail member = new PSPITSDO().GetMemberbyPensionID(Int32.Parse(this.PensionID));
        //    if (member.pensionID > 0)
        //    {
        //                 this.LoadMember(member);
        //    }
        //}
    }
    public void LoadCurrentMember()
    {
        if (this.PensionID.Length < 2) return;
        Member member = new PSPITSDO().GetMemberByPensionID(Int32.Parse(this.PensionID));
        if (member.pensionID > 0)
        {

            this.LoadMember(member);

        }
    }
    public void LoadMember(Member md)
    {
        this.PensionID = string.Format("{0}", md.pensionID);
        this.SchemeID = md.schemeID.Trim();
        this.firstName = md.firstName.Trim();
        this.lastName = md.lastName.Trim();
        this.MaritalStatus = md.maritalStatus.ToString();
        this.PayrollNumber = md.payrollNumber;
        this.DateOfAppointment = md.dateoffirstAppointment.ToString();
        this.DateofBirth = md.dateofBirth.ToString();
        this.DateofRetirement = "";
    }
}