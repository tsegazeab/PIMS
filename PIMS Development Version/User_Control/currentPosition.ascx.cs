using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL;
using PSPITS.DAL.DATA;

public partial class User_Control_currentPosition : System.Web.UI.UserControl
{
    //private string _pensionID = string.Empty;
    static private string _employmentID = string.Empty;
    //private Label _employmentID = new Label();

    private void LoadComboBox()
    {

        //Load state comboBox
        
        RadComboBoxcurrentState.DataSource = new PSPITSDO().GetState();
        RadComboBoxcurrentState.DataTextField = PSPITS.COMMON.Constants.COL_LIST_STATE;
        RadComboBoxcurrentState.DataValueField = PSPITS.COMMON.Constants.COL_LIST_STATEID;
        RadComboBoxcurrentState.DataBind();
        //Load workstation comboBox
        RadComboBoxworkStation.DataSource = new PSPITSDO().GetWorkstation();
        RadComboBoxworkStation.DataTextField = PSPITS.COMMON.Constants.COL_LIST_WORKSTATION;
        RadComboBoxworkStation.DataValueField = PSPITS.COMMON.Constants.COL_LIST_WORKSTATIONID;
        RadComboBoxworkStation.DataBind();
        //Load MDA comboBox
        RadComboBoxcurrentMDA.DataSource = new PSPITSDO().GetMDA();
        RadComboBoxcurrentMDA.DataTextField = PSPITS.COMMON.Constants.COL_LIST_MDA;
        RadComboBoxcurrentMDA.DataValueField = PSPITS.COMMON.Constants.COL_LIST_MDAID;
        RadComboBoxcurrentMDA.DataBind();
        //Load GRADE comboBox
        RadComboBoxcurrentGrade.DataSource = new PSPITSDO().GetGrade();
        RadComboBoxcurrentGrade.DataTextField = PSPITS.COMMON.Constants.COL_LIST_GRADE;
        RadComboBoxcurrentGrade.DataValueField = PSPITS.COMMON.Constants.COL_LIST_GRADEID;
        RadComboBoxcurrentGrade.DataBind();
       

    }
    public string employmentID
    {
        get { return _employmentID; }
        set { _employmentID = value; }
    }
    public string Position 
    {
             get { return RadTextBoxecurrentPosition.Text; }
             set { RadTextBoxecurrentPosition.Text = value; }
    }
    public string currentGrade
    {
        get { return RadComboBoxcurrentGrade.SelectedValue; }
        set { RadComboBoxcurrentGrade.SelectedValue = value; }
    }
    public string currentMDA
    {
        get { return RadComboBoxcurrentMDA.SelectedValue; }
        set { RadComboBoxcurrentMDA.SelectedValue = value; }
    }
    public string currentWorkstation
    {
        get { return RadComboBoxworkStation.SelectedValue; }
        set { RadComboBoxworkStation.SelectedValue = value; }
    }
    public string currentState
    {
        get { return RadComboBoxcurrentState.SelectedValue; }
        set { RadComboBoxcurrentState.SelectedValue = value; }
    }   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PSPITSDO _do = new PSPITSDO();
            this.employmentID = _do.PadCode(_do.GenEmploymentID(), 9);
            LoadComboBox();
        }
    }
   
}