using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pension_Benefit_SurvivorBenefitApplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonNextPersonalInformation_Click(object sender, EventArgs e)
    {
        //MultiViewNewMemberApplication2.ActiveViewIndex = 1;
        RadTabStripNewMemberApplication.SelectedIndex = 1;
    }
    protected void ButtonNextContactInformation_Click(object sender, EventArgs e)
    {
        //MultiViewNewMemberApplication2.ActiveViewIndex = 2;
        RadTabStripNewMemberApplication.SelectedIndex = 2;
    }
    protected void ButtonNextEmploymentHistory_Click(object sender, EventArgs e)
    {
        //MultiViewNewMemberApplication2.ActiveViewIndex = 3;
        RadTabStripNewMemberApplication.SelectedIndex = 3;
    }
    protected void ButtonNextBeneficiaryInformation_Click(object sender, EventArgs e)
    {
        //MultiViewNewMemberApplication2.ActiveViewIndex = 4;
        RadTabStripNewMemberApplication.SelectedIndex = 4;
    }

    protected void ButtonCreateApplicantRecord_Click(object sender, EventArgs e)
    {
        finishTip.Show();
    }
}