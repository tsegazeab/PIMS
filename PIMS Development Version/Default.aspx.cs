using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label mylabel = (Label) RadToolBar1.FindControl("LabelTime");
        //mylabel.Text = DateTime.Now.ToShortTimeString(); 
        if (User.Identity.IsAuthenticated)
            LabelCurrentUser.Text = User.Identity.Name;
        else
            Response.Redirect("~/Account/Login.aspx");
    }

    protected void LinkButtonSaveNotes_Click(object sender, EventArgs e)
    {
              
    }

    protected void RadToolBar9_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {   
        switch (e.Item.Text)
        {
            case "Switch user":
                Response.Redirect("~/Account/Login.aspx");
                break;
            case "Logout":
                Response.Redirect("~/Account/Login.aspx");
                break;
        }
    }

    protected void RadToolBar2_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {

    }
}