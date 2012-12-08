using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using PSPITS.UIL;
using PSPITS.COMMON;
using PSPITS.DAL.DATA;
using PSPITS.MODEL;
using PSPITS.DAL.DATA.MemberBenefits;

public partial class Benefit_Module_DisplayMemberBenefits : System.Web.UI.Page
{
    private const string years = " years";
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DisplayMemberBenefits();
        }
    }

    private void DisplayMemberBenefits()
    {
        int pensionId;
        if (Int32.TryParse(Master.PensionID, out pensionId) && pensionId > 0)
        {
            MemberBenefitCalcs mbc = new MemberBenefitCalcs();
            MemberBenefit mb = mbc.GetMemberBenefitByPensionId(pensionId);
            DisplayMemberBenefits1.DateOfAppointment = mb.Member.dateoffirstAppointment.Value.ToString("dd/MM/yyyy");
            DisplayMemberBenefits1.DateOfBirth = mb.Member.dateofBirth.Value.ToString("dd/MM/yyyy");
            DisplayMemberBenefits1.FirstJuly = Constants.JULY_FIRST_2012.ToString("dd/MM/yyyy");
            DisplayMemberBenefits1.GrossPension = mb.GrossAnnualPensionUpto30June2012.ToString("#,##0.00");
            DisplayMemberBenefits1.LastMonth = Constants.JULY_FIRST_2012.Subtract(new TimeSpan(1, 0, 0, 0)).ToString("dd/MM/yyyy");
            DisplayMemberBenefits1.MemberFullName = mb.Member.firstName + " " + mb.Member.lastName;
            DisplayMemberBenefits1.NetServiceYears = (mb.NumberOfServiceYears - mb.NumberOfServiceBreakYears).ToString("#,##0.00") + years;
            DisplayMemberBenefits1.PayrollNumber = mb.Member.payrollNumber;
            DisplayMemberBenefits1.TotalServiceYears = mb.NumberOfServiceYears.ToString("#,##0.00") + years;
            DisplayMemberBenefits1.TotalServiceBreaks = mb.NumberOfServiceBreakYears.ToString("#,##0.00") + years;
            DisplayMemberBenefits1.ServiceBreaks = mb.MemberServiceBreaks;
            DisplayMemberBenefits1.EstablishmentNumber = mb.Member.establishmentNumber;
            DisplayMemberBenefits1.GrossSalary = Constants.JUNE_2012_SALARY.ToString("#,##0.00");
            DisplayMemberBenefits1.NationalityID = mb.Member.NationalID;
        }
    }

    protected void Page_Init(object sender, System.EventArgs e)
    {
        //
        Master.RadToolBarClicked += new CommandEventHandler(SearchRadToolBarClickedFromMasterPage);
        //
        (MemberToEditSession.MemberToEdit = new MemberToEdit()).OnMemberEditClicked += new MemberEventHandler(MemberSelectedFromSearchGrid);
    }

    protected void MemberSelectedFromSearchGrid(object sender, MemberEventArgs e)
    {
        //just close the tooltip
        //JavaScriptLibrary.JavaScriptHelper.Include_CloseActiveToolTip(Page.ClientScript);
        PSPITSDO _do = new PSPITSDO();
        PSPITSModuleSession.PensionID = e.pensionID.Trim();
        Member selectedMember = _do.GetMemberByPensionID(Int32.Parse(e.pensionID.Trim()));
        PSPITSModuleSession.SchemeID = selectedMember.schemeID;
        PSPITSModuleSession.PayrollNo = selectedMember.payrollNumber;
        PSPITSModuleSession.MemberFullName = _do.GetMemberFullNamebyPensionID(int.Parse(e.pensionID.Trim())).memberFullName.Trim();
        MemberIdentity mi = _do.GetMemberIdentityPhotoByPensionId(int.Parse(e.pensionID.Trim()));
        PSPITSModuleSession.MemberPhoto = mi != null ? mi.MemberPhoto : new byte[0];
    }

    private void SearchRadToolBarClickedFromMasterPage(object sender, CommandEventArgs e)
    {
        RadToolTip RadToolTipSearch = new Utility().FindControlFromRoot(this, "RadToolTipSearch") as RadToolTip;
        if (RadToolTipSearch != null) RadToolTipSearch.Show();
    }

}