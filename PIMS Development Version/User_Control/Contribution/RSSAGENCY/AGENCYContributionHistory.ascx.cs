using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Telerik.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Control_Contribution_RSSAGENCY_AGENCYContributionHistory : System.Web.UI.UserControl
{
    private static DataTable _dt;
    public DataTable DataSource
    {
        set { _dt = value; }
        get { return _dt; }
    }
    public void RebindGrid()
    {
        RadGridAgencyContribution.Rebind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.DataSource = new PSPITS.DAL.DATA.PSPITSDO().GetMDAContributionHistoryByID(int.Parse(PSPITS.UIL.PSPITSModuleSession.mdaID));
        }
    }
    protected void RadGridAgencyContribution_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
    {
        this.RadGridAgencyContribution.MasterTableView.AllowMultiColumnSorting = true;
        GridSortExpression expressionYear = new GridSortExpression();
        GridSortExpression expressionMonth = new GridSortExpression();
        expressionYear.FieldName = "year";
        expressionYear.SetSortOrder("Ascending");
        this.RadGridAgencyContribution.MasterTableView.SortExpressions.AddSortExpression(expressionYear);
        expressionMonth.FieldName = "month";
        expressionMonth.SetSortOrder("Ascending");
        this.RadGridAgencyContribution.MasterTableView.SortExpressions.AddSortExpression(expressionMonth);
        RadGridAgencyContribution.DataSource = this.DataSource;
    }
    protected void RadGridAgencyContribution_ItemDataBound(object sender, Telerik.Web.UI.GridItemEventArgs e)
    {
        GridDataItem griddataItem;
        if (e.Item is GridDataItem)//&& e.Item.OwnerTableView.DataSourceID == "AccessDataSource1")
        {
            griddataItem = (GridDataItem)e.Item;
            //var obj = (vwMemberSalary)griddataItem.DataItem;
            int month = int.Parse(griddataItem["month"].Text);
            //var employeeName = griddataItem.g.get_gridDataItem().get_dataItem()["month"]; e.Item
            Label lbl = e.Item.FindControl("monthLabel") as Label;

            switch (month)
            {
                case 1: lbl.Text = "January"; break;
                case 2: lbl.Text = "February"; break;
                case 3: lbl.Text = "March"; break;
                case 4: lbl.Text = "April"; break;
                case 5: lbl.Text = "May"; break;
                case 6: lbl.Text = "June"; break;
                case 7: lbl.Text = "July"; break;
                case 8: lbl.Text = "August"; break;
                case 9: lbl.Text = "September"; break;
                case 10: lbl.Text = "October"; break;
                case 11: lbl.Text = "November"; break;
                case 12: lbl.Text = "December"; break;
                default: lbl.Text = "Missing"; break;
            }

        }
    }
}