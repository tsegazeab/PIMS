using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.COMMON;

public partial class NPF_Benefits_NpfPensionPaymentsDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DisplayMonthYear();
    }

    private void DisplayMonthYear()
    {
        if (Session["SelectedMonth"] != null && Session["SelectedYear"] != null)
        {
            int month = Int32.Parse(Session["SelectedMonth"].ToString());
            int year = Int32.Parse(Session["SelectedYear"].ToString());
            ASPxGridViewNfpRetiree.Caption = Constants.MONTHS[month] + " " + year;
        }
    }
}