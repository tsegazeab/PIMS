using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL.DATA.MemberBenefits;

public partial class NPF_Benefits_NpfPensionPayments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadButtonProcessPayments_Click(object sender, EventArgs e)
    {
        int year = Int32.Parse(RadComboBoxYear.SelectedValue);
        int month = Int32.Parse(RadComboBoxMonth.SelectedValue);
        NpfPensionerService nps = new NpfPensionerService();
        nps.ProcessNpfPensionPayments(year, month);
        Session["SelectedYear"] = year;
        Session["SelectedMonth"] = month;
        Response.Redirect("NpfPensionPaymentsDetails.aspx");
    }
}