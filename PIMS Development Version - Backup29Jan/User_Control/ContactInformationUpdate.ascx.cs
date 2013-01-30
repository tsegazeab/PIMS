using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;


public partial class User_Control_ContactInformationUpdate : System.Web.UI.UserControl
{
   
    private void LoadComboBox()
    {

        //Load state comboBox

        RadComboBoxhomeState.DataSource = new PSPITSDO().GetState();
        RadComboBoxhomeState.DataTextField = PSPITS.COMMON.Constants.COL_LIST_STATE;
        RadComboBoxhomeState.DataValueField = PSPITS.COMMON.Constants.COL_LIST_STATEID;
        RadComboBoxhomeState.DataBind();
    }
    public string PensionID
    {
        get { return RadTextBoxPensionID.Text; }
        set { RadTextBoxPensionID.Text = value; }
    }
    public string SchemeID
    {
        get { return RadTextBoxSchemeID.Text; }
        set { RadTextBoxSchemeID.Text = value; }
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
    public string eMail 
         {
        get { return RadTextBoxeMail.Text; }
        set { RadTextBoxeMail.Text = value; }
    }
    public string phoneMobile
    {
        get { return RadTextBoxPhoneMobile.Text; }
        set { RadTextBoxPhoneMobile.Text = value; }
    }
    public string phoneLandline
    {
        get { return RadTextBoxPhoneLandline.Text; }
        set { RadTextBoxPhoneLandline.Text = value; }
    }
    public string postAddress
    {
        get { return RadTextBoxPostAddress.Text; }
        set { RadTextBoxPostAddress.Text = value; }
    }
    public string Address
    {
        get { return RadTextBoxAddress.Text; }
        set { RadTextBoxAddress.Text = value; }
    }
    public string homeState
    {
        get { return RadComboBoxhomeState.SelectedValue; }
        set { RadComboBoxhomeState.SelectedValue = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { 
            LoadComboBox();
        }
    }
    public void LoadMemberContact(MemberContactDetail md)
    {
        this.PensionID = string.Format("{0}", md.pensionID);
        this.SchemeID = new PSPITSDO().GetSchemeIDByPensionID(md.pensionID);
        this.firstName = md.firstName;
        this.lastName = md.lastName;
        this.eMail = md.email;
        this.phoneMobile = md.phoneMobile;
        this.phoneLandline = md.phoneLandline;
        this.postAddress = md.postAddress != null ? md.postAddress : "";
        this.homeState = string.Format("{0}", md.homeState);
        this.Address = md.address;
     
    }
   
    public void ToggleControl(Boolean flag)
    {
        //RadTextBoxPensionID.Enabled=flag;

        //RadTextBoxfirstName.Enabled = flag;
        //RadTextBoxlastName.Enabled = flag;
        RadTextBoxeMail.Enabled = flag;
        RadTextBoxPhoneLandline.Enabled = flag;  
        RadTextBoxPhoneLandline.Enabled = flag;
        RadTextBoxAddress.Enabled = flag;
        RadTextBoxPostAddress.Enabled = flag;
        RadComboBoxhomeState.Enabled = flag;
    }

    protected void RadButtonSearchPensionID_Click(object sender, EventArgs e)
    {
        MemberContactDetail member = new PSPITSDO().GetMemberContact(Int32.Parse(this.PensionID));
        if (member.pensionID > 0)
        {
            this.ToggleControl(true);
            this.LoadMemberContact(member);
            this.RadTextBoxPensionID.Enabled = false;
            
        }
    }
    public void LoadCurrentMember()
    {
        MemberContactDetail member = new PSPITSDO().GetMemberContact(Int32.Parse(this.PensionID));
        if (member.pensionID > 0)
        {
            this.ToggleControl(true);
            this.LoadMemberContact(member);
            this.RadTextBoxPensionID.Enabled = false;

        }
    }
    protected void RadButtonUpdate_Click(object sender, EventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();
        MemberContactDetail contactDetail = new MemberContactDetail();

        contactDetail.pensionID = Int32.Parse(this.PensionID);
        contactDetail.email = this.eMail;
        contactDetail.phoneMobile = this.phoneMobile;
        contactDetail.phoneLandline = this.phoneLandline;
        contactDetail.postAddress = this.postAddress;
        contactDetail.homeState = Int32.Parse(this.homeState);
        contactDetail.address = this.Address;
        contactDetail.dateUpdated = DateTime.Now;
        contactDetail.whoUpdated = "admin";
        _do.SaveMemberContactDetail(contactDetail);       
    }
    protected void RadTextBoxSchemeID_TextChanged(object sender, EventArgs e)
    {

    }
}