using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.UIL;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;

public partial class MasterPageSysAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Page.User.Identity.IsAuthenticated)
                LabelCurrentUser.Text = Page.User.Identity.Name;
        }
    }
}
