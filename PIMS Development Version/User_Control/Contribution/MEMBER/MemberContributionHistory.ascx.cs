using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL.DATA;
using PSPITS.MODEL;
using PSPITS.COMMON;
using PSPITS.UIL;
using Telerik.Web.UI;

public partial class User_Control_Contribution_MEMBER_MemberContributionHistory : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
        //GridSortExpression expression = new GridSortExpression();
        //expression.FieldName = "year";
        //expression.SetSortOrder("Ascending");
        //this.RadGrid1.MasterTableView.SortExpressions.AddSortExpression(expression);
        //expression.FieldName = "month";
        //expression.SetSortOrder("Ascending");
        //this.RadGrid1.MasterTableView.SortExpressions.AddSortExpression(expression);
        //this.RadGrid1.MasterTableView.Rebind(); 
        //}
    }
    public int RebindGrid
    {
        get
        {

            this.RadGrid1.MasterTableView.Rebind(); return 0;

        }
    }
    protected void RadGrid1_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
    {
        this.RadGrid1.MasterTableView.AllowMultiColumnSorting = true;
        GridSortExpression expressionYear = new GridSortExpression();
        GridSortExpression expressionMonth = new GridSortExpression();
        expressionYear.FieldName = "year";
        expressionYear.SetSortOrder("Ascending");
        this.RadGrid1.MasterTableView.SortExpressions.AddSortExpression(expressionYear);
        expressionMonth.FieldName = "month";
        expressionMonth.SetSortOrder("Ascending");
        this.RadGrid1.MasterTableView.SortExpressions.AddSortExpression(expressionMonth);
        //this.RadGrid1.MasterTableView.Rebind(); 
        RadGrid1.DataSource = new PSPITSDO().GetMemberSalaryByPensionID(int.Parse(PSPITSModuleSession.PensionID));
    }

    protected void RadGrid1_ItemDataBound(object sender, GridItemEventArgs e)
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