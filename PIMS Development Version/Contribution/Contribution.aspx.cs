using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.UIL;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;
using Telerik.Web.UI;
using Microsoft.Reporting.WebForms;

public partial class Contribution_Contribution : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //replace this implementation with logout event and page crush event
            //to prevent somebody who has just gone away to the home page from loosing the pensioner who is active
            if (PSPITSModuleSession.PensionID.Trim().Length > 5)
            { }
            else
            {
                PSPITSModuleSession.PensionID = "0";
                PSPITSModuleSession.MemberFullName = string.Empty;
            }
            // set the default radpage view
            //RadMultiPage contributionRadMultiPage = new Utility().FindControlToRoot(this, "contributionRadMultiPage") as RadMultiPage;
            //RadPageView RadPageViewDefault = new Utility().FindControlToRoot(this, "RadPageViewDefault") as RadPageView;
            //if (contributionRadMultiPage != null && RadPageViewDefault != null)
            //{
            //    contributionRadMultiPage.SelectedIndex = RadPageViewDefault.Index;
            //}
            contributionRadMultiPage.SelectedIndex = RadPageViewDefault.Index;
            RadMultiPageSubMenu.SelectedIndex = RadPageViewBlank.Index;

        }

    }
    protected void Page_Init(object sender, System.EventArgs e)
    {
        Master.RadToolBarClicked += new CommandEventHandler(RadToolBarClickedFromMasterPage);
        //
        (MemberToEditSession.MemberToEdit = new MemberToEdit()).OnMemberEditClicked += new MemberEventHandler(MemberSelectedFromSearchGrid);

    }
    protected void MemberSelectedFromSearchGrid(object sender, MemberEventArgs e)
    {
        //just close the tooltip
        //JavaScriptLibrary.JavaScriptHelper.Include_CloseActiveToolTip(Page.ClientScript);
        PSPITSDO _do = new PSPITSDO();
        PSPITSModuleSession.PensionID = e.pensionID.Trim();
        PSPITSModuleSession.SchemeID = _do.GetSchemeIDByPensionID(Int32.Parse(e.pensionID.Trim()));
        PSPITSModuleSession.MemberFullName = _do.GetMemberFullNamebyPensionID(int.Parse(e.pensionID.Trim())).memberFullName.Trim();
        //MemberIdentity mi = _do.GetMemberIdentityPhotoByPensionId(int.Parse(e.pensionID.Trim()));
        //PSPITSModuleSession.MemberPhoto = mi != null ? mi.MemberPhoto : new byte[0];
        MemberInformation1.LoadMember(_do.GetMemberByPensionID(int.Parse(e.pensionID.Trim())));
        int i = MemberContributionHistory2.RebindGrid;
    }

    private void RadToolBarClickedFromMasterPage(object sender, CommandEventArgs e)
    {

        if (e.CommandName.Equals("search", StringComparison.OrdinalIgnoreCase))
        {
            //RadGrid grid = new Utility().FindControlToRootOnly((sender as RadButton).Parent, "RadGridServiceBreak") as RadGrid;
            //RadToolTip RadToolTipSearch = new Utility().FindControlToRootOnly(this, "RadToolTipSearch") as RadToolTip;
            RadToolTip RadToolTipSearch = new Utility().FindControlToRootOnly((sender as MasterPage), "RadToolTipSearch") as RadToolTip;
            if (RadToolTipSearch != null) RadToolTipSearch.Show();
        }
        else if (e.CommandName.Equals("Contribution (RSS Agency)", StringComparison.OrdinalIgnoreCase))
        {
            //RadMultiPage RadMultiPageSubMenu = new Utility().FindControlToRootOnly(this, "RadMultiPageSubMenu") as RadMultiPage;
            //RadPageView RadPageViewMDAMenu = new Utility().FindControlToRootOnly(this, "RadPageViewMDAMenu") as RadPageView;
            //if (RadMultiPageSubMenu != null && RadPageViewMDAMenu != null)
            //{
            //    RadMultiPageSubMenu.SelectedIndex = RadPageViewMDAMenu.Index;
            //}
            RadMultiPageSubMenu.SelectedIndex = RadPageViewMDAMenu.Index;

            contributionRadMultiPage.SelectedIndex = RadPageViewDefault.Index;
        }
        else if (e.CommandName.Equals("Contribution (Member)", StringComparison.OrdinalIgnoreCase))
        {
            //RadMultiPage RadMultiPageSubMenu = new Utility().FindControlToRootOnly(this, "RadMultiPageSubMenu") as RadMultiPage;
            //RadPageView RadPageViewMemeberMenu = new Utility().FindControlToRootOnly(this, "RadPageViewMemberMenu") as RadPageView;
            //if (RadMultiPageSubMenu != null && RadPageViewMemeberMenu != null)
            //{
            //    RadMultiPageSubMenu.SelectedIndex = RadPageViewMemeberMenu.Index;
            //}
            RadMultiPageSubMenu.SelectedIndex = RadPageViewMemberMenu.Index;
            contributionRadMultiPage.SelectedIndex = RadPageViewDefault.Index;
        }
    }
  

    protected void RadToolBar2_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {
        //NewAgencyContributionTip.Show();
    }
    protected void AgencyContributionHistoryView_Init(object sender, EventArgs e)
    {
        //let us subscribe to the print event in case the user wants to print an agency's contribution history
        Master.RadPrintToolBarClicked += new CommandEventHandler(PrintAgencyContributionHistory);
        //Master.
        Master.RadComboBoxClicked+=new CommandEventHandler(Master_RadComboBoxClicked);
    }
    private void Master_RadComboBoxClicked(object sender, CommandEventArgs e)
    {
         AGENCYContributionHistory1.DataSource = new PSPITS.DAL.DATA.PSPITSDO().GetMDAContributionHistoryByID(int.Parse(PSPITS.UIL.PSPITSModuleSession.mdaID));
       
        AGENCYContributionHistory1.RebindGrid();
    }
    private void PrintMemberContributionHistory(object sender, CommandEventArgs e)
    {
        //do this only if the active radpageview is contribtion history
        if (contributionRadMultiPage.SelectedIndex == contributionRadMultiPage.FindPageViewByID("MemberContributionHistoryView").Index)
        {

            PrintMemberHistory();
        }
    }
    protected void PrintMemberHistory()
    {

        int radpageIndex = contributionRadMultiPage.FindPageViewByID("RadPageViewPrint").Index;
        if (radpageIndex >= 0)
        {
            contributionRadMultiPage.SelectedIndex = contributionRadMultiPage.FindPageViewByID("RadPageViewPrint").Index;
            string @strApp_Path = Request.PhysicalApplicationPath;
            string folder = @strApp_Path + @"Report\";
            DataTable DataTableContributor = new PSPITSDO().GetMemberSalaryContributionByPensionIDFirst(int.Parse(PSPITSModuleSession.PensionID));
            DataTable DataTableContributionHistory = new PSPITSDO().GetMemberSalaryContributionByPensionID(int.Parse(PSPITSModuleSession.PensionID));

            List<ReportParameter> psl = new List<ReportParameter>();
            psl.Add(new ReportParameter("ReportParameterContributionPeriod", "For Period November 2010 to December 2012"));
            ReportViewerContribution.LocalReport.ReportPath = folder + @"MemberContributionHistory.rdlc";
            ReportViewerContribution.LocalReport.SetParameters(psl);

            ReportDataSource DataSetMemberContributionHeader = new ReportDataSource("DataSetMemberContributionHeader", DataTableContributor);
            ReportDataSource DataSetMemberContributionDetail = new ReportDataSource("DataSetMemberContributionDetail", DataTableContributionHistory);
            ReportViewerContribution.LocalReport.DataSources.Clear();
            ReportViewerContribution.LocalReport.DataSources.Add(DataSetMemberContributionHeader);
            ReportViewerContribution.LocalReport.DataSources.Add(DataSetMemberContributionDetail);
            
        }

    }
    private void PrintAgencyContributionHistory(object sender, CommandEventArgs e)
    {
        //do this only if the active radpageview is contribtion history
        if (contributionRadMultiPage.SelectedIndex == contributionRadMultiPage.FindPageViewByID("MemberContributionHistoryView").Index)
        {

            PrintAgencyHistory();  
            
        }
    }
    protected void PrintAgencyHistory()
    {
        int radpageIndex = contributionRadMultiPage.FindPageViewByID("RadPageViewPrint").Index;
        if (radpageIndex >= 0)
        {
            contributionRadMultiPage.SelectedIndex = contributionRadMultiPage.FindPageViewByID("RadPageViewPrint").Index;
            string @strApp_Path = Request.PhysicalApplicationPath;
            string folder = @strApp_Path + @"Report\";
            DataTable DataTableAgency = new PSPITSDO().GetMDAByID(int.Parse(PSPITSModuleSession.mdaID));
            DataTable DataTableAgencyHistory = new PSPITSDO().GetMDAContributionHistoryByID(int.Parse(PSPITSModuleSession.mdaID));
            //Map the header 
            DataTableAgency.Columns[Constants.COL_LIST_MDAID].ColumnName = "BodyGroup1";
            DataTableAgency.Columns[Constants.COL_LIST_MDA].ColumnName = "BodyGroup2";
            //DataTableAgency.Columns[Constants.COL_LIST_MDACODE].ColumnName = "BodyGroup3";
            //DataTableAgency.Columns[Constants.COL_LIST_MDACODE].ColumnName = "BodyGroup4";
            //MAP History information
            DataTableAgencyHistory.Columns[Constants.COL_LIST_YEAR].ColumnName = "BodyText1";
            DataTableAgencyHistory.Columns[Constants.COL_LIST_MONTH].ColumnName = "BodyText2";
            DataTableAgencyHistory.Columns[Constants.COL_LIST_STAFF].ColumnName = "BodyText3";
            DataTableAgencyHistory.Columns[Constants.COL_MEMBERSALARY_GROSSPAY].ColumnName = "BodyText4";
            DataTableAgencyHistory.Columns[Constants.COL_MEMBERSALARY_BASICPAY].ColumnName = "BodyText5";
            DataTableAgencyHistory.Columns[Constants.COL_MEMBERSALARY_COLA].ColumnName = "BodyText9";
            DataTableAgencyHistory.Columns[Constants.COL_MEMBERSALARY_EMPLOYEEDEDUCTION].ColumnName = "BodyText6";
            DataTableAgencyHistory.Columns[Constants.COL_MEMBERSALARY_EMPLOYERDEDUCTION].ColumnName = "BodyText7";
            DataTableAgencyHistory.Columns[Constants.COL_LIST_MDA].ColumnName = "BodyText10";
            List<ReportParameter> psl = new List<ReportParameter>();
            psl.Add(new ReportParameter("ReportParameterContributionPeriod", "For Period ALL"));
            ReportViewerContribution.LocalReport.ReportPath = folder + @"AgencyContributionHistory.rdlc";
            ReportViewerContribution.LocalReport.SetParameters(psl);

            ReportDataSource DataSetAgencyDetail = new ReportDataSource("DataSetMemberContributionHeader", DataTableAgency);
            ReportDataSource DataSetAgencyContributionDetail = new ReportDataSource("DataSetMemberContributionDetail", DataTableAgencyHistory);
            ReportViewerContribution.LocalReport.DataSources.Clear();
            ReportViewerContribution.LocalReport.DataSources.Add(DataSetAgencyDetail);
            ReportViewerContribution.LocalReport.DataSources.Add(DataSetAgencyContributionDetail);
        }
    }
    protected void LinkButtonMDADetails_Click(object sender, EventArgs e)
    {

    }
    protected void RadToolBarMemberMenu_ButtonClick(object sender, RadToolBarEventArgs e)
    {
        switch (e.Item.Text)
        {

            case "Member Information":

                contributionRadMultiPage.SelectedIndex = contributionRadMultiPage.FindPageViewByID("MemberInformationView").Index;
                MemberInformation1.PensionID = Master.PensionID;
                MemberInformation1.SchemeID = Master.SchemeID;
                MemberInformation1.LoadCurrentMember();
                break;
            case "Member Contribution History":
                contributionRadMultiPage.SelectedIndex = contributionRadMultiPage.FindPageViewByID("MemberContributionHistoryView").Index;
                break;
          
            case "Add Member Contribution":
                contributionRadMultiPage.SelectedIndex = contributionRadMultiPage.FindPageViewByID("RadPageViewMemberContributionAdd").Index;
                break;
           }
    }
    protected void RadToolBarMDAMenu_ButtonClick(object sender, RadToolBarEventArgs e)
    {
        switch (e.Item.Text)
        {
            case "Reconcile contribution with salary data":
                //contributionRadMultiPage.SelectedIndex = contributionRadMultiPage.FindPageViewByID("MDADetailsView").Index;
                break;
            case "Reconcile contribution with bank deposit":
                //contributionRadMultiPage.SelectedIndex = contributionRadMultiPage.FindPageViewByID("MDADetailsView").Index;
                break;

            case "MDA Contribution History":
                contributionRadMultiPage.SelectedIndex = contributionRadMultiPage.FindPageViewByID("AgencyContributionHistoryView").Index;
                break;

            case "Add/Edit Bank Deposit":
                contributionRadMultiPage.SelectedIndex = contributionRadMultiPage.FindPageViewByID("AgencyActualContribution").Index;
                break;
    
        }
    }
    protected void AgencyContributionHistoryView_Load(object sender, EventArgs e)
    {
        ////if (!Page.IsPostBack)
        //AGENCYContributionHistory2.RebindGrid();
        Master.mdaID = Master.getMDAID;
    }
    protected void RadButtonPeriod_Click(object sender, EventArgs e)
    {
        //find get the date range 
      /// DateTime. RadMonthYearPickerStart.SelectedDate

        string periodStart = string.Format("{0}{1}", RadMonthYearPickerStart.SelectedDate.Value.Month, RadMonthYearPickerStart.SelectedDate.Value.Year);
        string periodEnd = string.Format("{0}{1}", RadMonthYearPickerEnd.SelectedDate.Value.Month, RadMonthYearPickerEnd.SelectedDate.Value.Year);
        AGENCYContributionHistory1.DataSource = new PSPITSDO().GetMDAContributionHistoryByIDandPeriod(int.Parse(PSPITSModuleSession.mdaID), int.Parse(periodStart), int.Parse(periodEnd));
        AGENCYContributionHistory1.RebindGrid();

    }
    protected void MemberContributionHistoryView_Init(object sender, EventArgs e)
    {
        Master.RadPrintToolBarClicked += new CommandEventHandler(PrintMemberContributionHistory);
    }
    protected void AgencyActualContribution_Init(object sender, EventArgs e)
    {
        //Master.
        Master.RadComboBoxClicked += new CommandEventHandler(UpdateActualContribution);
    }
    private void UpdateActualContribution(object sender, CommandEventArgs e)
    {
        AgencyActualContribution1.DataSource = new PSPITS.DAL.DATA.PSPITSDO().GetMDA_ActualContributionHistoryByID(int.Parse(PSPITS.UIL.PSPITSModuleSession.mdaID));

        AgencyActualContribution1.RebindGrid();
        
        //AgencyActualContribution1.DataSource = new PSPITSDO().GetMDA_ActualContributionHistoryByID(int.Parse(PSPITS.UIL.PSPITSModuleSession.mdaID));
    }
    protected void RadButtonPrintMember_Click(object sender, EventArgs e)
    {
        PrintMemberHistory();
    }
    protected void RadButtonPrintAgency_Click(object sender, EventArgs e)
    {
        PrintAgencyHistory();
    }
    protected void RadButtonPeriodMember_Click(object sender, EventArgs e)
    {

    }
}