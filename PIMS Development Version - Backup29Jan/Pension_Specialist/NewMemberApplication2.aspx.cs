using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pension_Specialist_NewMemberApplication2 : System.Web.UI.Page
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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        EmploymentServiceBreakEvidenceTip.Show();
    }
    protected void RadToolBar2_ButtonClick1(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {
        EmploymentServiceBreakEvidenceTip.Show();
    }
    protected void RadToolBar3_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {
        BeneficiaryEvidenceTip.Show();
    }
}