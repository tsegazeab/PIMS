using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL.DATA.MemberBenefits;
using Microsoft.Reporting.WebForms;
using PSPITS.COMMON;

public partial class Payment_PaymentSchedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Month"] != null)
        //{
        //    int month = Int32.Parse(Session["Month"].ToString());
        //    int year = Int32.Parse(Session["Year"].ToString());
        //    ReportParameter[] reportParams = new ReportParameter[2];
        //    reportParams[0] = new ReportParameter("MonthName", Constants.MONTHS[month]);
        //    reportParams[1] = new ReportParameter("Year", year.ToString());
        //    ReportViewerPSchedule.LocalReport.SetParameters(reportParams);
        //    ReportViewerPSchedule.LocalReport.Refresh();
        //}
    }
}