using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contribution_BuyBack_ComputationAndDecision : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButtonBuyBack_Click(object sender, EventArgs e)
    {
        RadMultiPage1.SelectedIndex = 0;
    }
    protected void LinkButtonComputationAndDecision_Click(object sender, EventArgs e)
    {
        RadMultiPage1.SelectedIndex = 1;
    }
}