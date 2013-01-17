using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.UIL;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;

public partial class MasterPageNpfBenefit : System.Web.UI.MasterPage
{
    public event CommandEventHandler RadToolBarClicked;
    private static string _pensionID = "0";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Page.User.Identity.IsAuthenticated)
                LabelCurrentUser.Text = Page.User.Identity.Name;
        }
    }

    protected void RadToolBar1_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {
        if (e.Item.Text.ToLower().Equals("search"))
        {
            //get what the previous page was - must be one of the update forms and not the add new form
            //Page.PreviousPage.u
            if (RadToolBarClicked != null)
                RadToolBarClicked(this, new CommandEventArgs(e.Item.Text, e.Item.Text));
        }
    }
}
