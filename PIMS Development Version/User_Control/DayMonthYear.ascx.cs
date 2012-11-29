using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DayMonthYear : System.Web.UI.UserControl
{

    public string Day
    {
        get { return DropDownDay.SelectedValue; }
        set { DropDownDay.SelectedValue = value; }
    }
    public string Month
    {
        get { return DropDownMonth.SelectedValue; }
        set { DropDownMonth.SelectedValue = value; }
    }
    public string Year
    {
        get { return DropDownYear.SelectedValue; }
        set { DropDownYear.SelectedValue = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}