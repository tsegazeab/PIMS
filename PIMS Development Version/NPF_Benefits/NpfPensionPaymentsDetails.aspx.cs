﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.COMMON;
using PSPITS.DAL.DATA.MemberBenefits;

public partial class NPF_Benefits_NpfPensionPaymentsDetails : System.Web.UI.Page
{
    private NpfPensionerService npfService = new NpfPensionerService();
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
    protected void ASPxButtonApprove_Click(object sender, EventArgs e)
    {        
        if (Session["SelectedMonth"] != null && Session["SelectedYear"] != null)
        {
            int month = Int32.Parse(Session["SelectedMonth"].ToString());
            int year = Int32.Parse(Session["SelectedYear"].ToString());
            npfService.ApprovePayments(month, year);
            Session["SelectedMonth"] = month;
            Session["SelectedYear"] = year;
        }        
    }
    protected void ObjectDataSourcePaymentList_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }
    protected void ASPxGridViewNfpRetiree_SelectionChanged(object sender, EventArgs e)
    {
       
    }
    protected void ASPxGridViewNfpRetiree_RowCommand(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewRowCommandEventArgs e)
    {
        CommandEventArgs cea = e.CommandArgs;
    }
}