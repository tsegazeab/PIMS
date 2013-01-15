using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Application_Section_FrontDeskApplicationTracker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonForwardToPAS_Click(object sender, EventArgs e)
    {
        forwardTip.Show();
    }
    protected void ButtonAdditionalInfo_Click(object sender, EventArgs e)
    {
        additionalInfoTip.Show();
    }
}