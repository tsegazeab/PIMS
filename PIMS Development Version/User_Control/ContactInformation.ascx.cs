using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;


public partial class User_Control_ContactInformation : System.Web.UI.UserControl
{
    private void LoadComboBox()
    {

        //Load state comboBox

        RadComboBoxhomeState.DataSource = new PSPITSDO().GetState();
        RadComboBoxhomeState.DataTextField = PSPITS.COMMON.Constants.COL_LIST_STATE;
        RadComboBoxhomeState.DataValueField = PSPITS.COMMON.Constants.COL_LIST_STATEID;
        RadComboBoxhomeState.DataBind();
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
        { LoadComboBox(); }
    }
 
}