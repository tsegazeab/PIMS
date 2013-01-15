using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;
using PSPITS.DAL;
using Telerik.Web.UI;
using Telerik.Charting;
using PSPITS.UIL;
using PSPITS.MODEL;

public partial class Membership_NewMemberApplication : System.Web.UI.Page
{
    private void SelectedTab(string tab)
    {
        RadTabStripNewMemberApplication.FindTabByText(tab, true).Selected = true;
    }
    private void EnableTabstrip   ( Boolean flag)
    {
        
       RadTabStripNewMemberApplication.FindTabByText("personal info",true).Enabled=true;
       RadTabStripNewMemberApplication.FindTabByText("service break", true).Enabled = flag;
       RadTabStripNewMemberApplication.FindTabByText("beneficiary info", true).Enabled = flag;
       RadTabStripNewMemberApplication.FindTabByText("beneficiary disability", true).Enabled = flag;
       RadTabStripNewMemberApplication.FindTabByText("declaration", true).Enabled = flag;
    }
    private void RadToolBarClicked(object sender, Telerik.Web.UI.RadTabStripEventArgs e)
    {
        
        if (e.Tab.Text.ToLower().Equals("personal info"))
        {
            RadMultiPageNewMember.SelectedIndex = RadMultiPageNewMember.FindPageViewByID("RadPageViewPersonalInformation").Index;   
         
        }
        else if (e.Tab.Text.ToLower().Equals("service break"))
        {
            RadMultiPageNewMember.SelectedIndex = RadMultiPageNewMember.FindPageViewByID("RadPageViewEmploymentServiceBreak").Index;            
        }
        else if (e.Tab.Text.ToLower().Equals("beneficiary info"))
        {
            
            RadMultiPageNewMember.SelectedIndex = RadMultiPageNewMember.FindPageViewByID("RadPageViewBeneficiaryInformation").Index;            
        }
        else if (e.Tab.Text.ToLower().Equals("beneficiary disability"))
        {
            RadMultiPageNewMember.SelectedIndex = RadMultiPageNewMember.FindPageViewByID("RadPageViewDisability").Index;
            DisabilityInformation1.pensionID = PSPITSModuleSession.PensionID;
            DisabilityInformation1.LoadBeneficiaryNameCombo(Int32.Parse(PSPITSModuleSession.PensionID));
        }
        else if (e.Tab.Text.ToLower().Equals("declaration"))
        {
            RadMultiPageNewMember.SelectedIndex = RadMultiPageNewMember.FindPageViewByID("RadPageViewDeclaration").Index;
            DeclarationnewMember.HideSaveButton();
        }      
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PSPITSModuleSession.PensionID = "0";
            PSPITSModuleSession.SchemeID = string.Empty;
            PSPITSModuleSession.MemberFullName = string.Empty;
            RadMultiPageNewMember.SelectedIndex = RadMultiPageNewMember.FindPageViewByID("RadPageViewPersonalInformation").Index;
            EnableTabstrip(false);
           // PersonalInformationNewMember.EnableSearch(false);
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
        //PSPITSDO _do = new PSPITSDO();
        //PSPITSModuleSession.PensionID = e.pensionID.Trim();
        //PSPITSModuleSession.SchemeID = _do.GetSchemeIDByPensionID(Int32.Parse(e.pensionID.Trim()));
        //PSPITSModuleSession.MemberFullName = _do.GetMemberFullNamebyPensionID(int.Parse(e.pensionID.Trim())).memberFullName.Trim();
        //MemberIdentity mi = _do.GetMemberIdentityPhotoByPensionId(int.Parse(e.pensionID.Trim()));
        //PSPITSModuleSession.MemberPhoto = mi != null ? mi.MemberPhoto : new byte[0];
    }

    private void SearchRadToolBarClickedFromMasterPage(object sender, CommandEventArgs e)
    {
        RadToolTip RadToolTipSearch = new Utility().FindControlFromRoot(this, "RadToolTipSearch") as RadToolTip;
        if (RadToolTipSearch != null) RadToolTipSearch.Show();
    }

    protected void ButtonNextPersonalInformation_Click(object sender, EventArgs e)
    {
        PSPITSDO _do = new PSPITSDO();
        MemberPersonalDetail mPD = new MemberPersonalDetail();
        MemberContactDetail contactDetail = new MemberContactDetail();
        MemberCurrentPosition currentEmp = new MemberCurrentPosition();
        mPD.pensionID = Int32.Parse(PersonalInformationNewMember.PensionID);
        mPD.schemeID = PersonalInformationNewMember.SchemeID;
        mPD.prefix = PersonalInformationNewMember.Prefix;
        mPD.firstName = PersonalInformationNewMember.firstName;
        mPD.lastName = PersonalInformationNewMember.lastName;
        mPD.gender = PersonalInformationNewMember.Gender;
        if (PersonalInformationNewMember.DateofBirth.HasValue)
            mPD.dateofBirth = PersonalInformationNewMember.DateofBirth.Value;
        mPD.maritalStatus =Int32.Parse(PersonalInformationNewMember.MaritalStatus);
        mPD.nationalID = PersonalInformationNewMember.nationalID;
        mPD.personalNo = PersonalInformationNewMember.PersonalNumber;
        mPD.payrollNumber = PersonalInformationNewMember.payrollNumber;
        mPD.establishmentNumber = PersonalInformationNewMember.establishmentNumber;
        if (PersonalInformationNewMember.DateofAppointment.HasValue)
            mPD.dateofFirstAppointment = PersonalInformationNewMember.DateofAppointment.Value;
        if (PersonalInformationNewMember.CurrentMDA > 0)
            mPD.currentMDA = PersonalInformationNewMember.CurrentMDA;
        mPD.dateCreated = DateTime.Now;
        mPD.whoCreated = User.Identity.Name;
        //fill current or last recent employement
        //currentEmp.employmentID = Int32.Parse(currentPositionnewApplicant.employmentID);
        //currentEmp.pensionID = mPD.pensionID;
        //currentEmp.Position = currentPositionnewApplicant.Position;
        //currentEmp.Grade =  Int32.Parse(currentPositionnewApplicant.currentGrade);
        //currentEmp.rssAgency = Int32.Parse(currentPositionnewApplicant.currentMDA);
        //currentEmp.workStation = Int32.Parse(currentPositionnewApplicant.currentWorkstation);
        //currentEmp.workState = Int32.Parse(currentPositionnewApplicant.currentState);
        //currentEmp.dateCreated = DateTime.Now;
        //currentEmp.isActive = "Yes";
        //currentEmp.whoCreated = User.Identity.Name;
        //fill contact information
        contactDetail.pensionID = mPD.pensionID;
        contactDetail.email = contactinformationNewMember.eMail;
        contactDetail.phoneMobile = contactinformationNewMember.phoneMobile;
        contactDetail.phoneLandline = contactinformationNewMember.phoneLandline;
        contactDetail.postAddress = contactinformationNewMember.postAddress;
        contactDetail.homeState = Int32.Parse(contactinformationNewMember.homeState);
        contactDetail.address = contactinformationNewMember.Address;
        contactDetail.dateUpdated = DateTime.Now;
        contactDetail.whoUpdated = User.Identity.Name;
        //now save the information in the three objects, begining with membership record
       _do.SaveMemberPersonalDetail(mPD);
       //_do.SaveMemberCurrentPosition(currentEmp);
       _do.SaveMemberContactDetail(contactDetail);
        //go to the service break page
       RadMultiPageNewMember.SelectedIndex = RadMultiPageNewMember.FindPageViewByID("RadPageViewEmploymentServiceBreak").Index;
       DeclarationnewMember.pensionID=beneficiaryinformationNewMember.pensionID = EmploymentServiceBreak1.pensionID = string.Format("{0}", mPD.pensionID);
       EnableTabstrip(true);
       SelectedTab("service break");

        //Update session variables
       
       Master.PensionID = PSPITSModuleSession.PensionID = DeclarationnewMember.pensionID = PersonalInformationNewMember.PensionID.Trim();
       Master.SchemeID = PSPITSModuleSession.SchemeID = DeclarationnewMember.SchemeID = PersonalInformationNewMember.SchemeID;
       Master.MemberFullName = PSPITSModuleSession.MemberFullName = DeclarationnewMember.MemberFullName = _do.GetMemberFullNamebyPensionID(int.Parse(PersonalInformationNewMember.PensionID.Trim())).memberFullName.Trim();
       MemberIdentity mi = _do.GetMemberIdentityPhotoByPensionId(int.Parse(PersonalInformationNewMember.PensionID.Trim()));        
       Master.MemberPhoto =  PSPITSModuleSession.MemberPhoto = mi != null ? mi.MemberPhoto : new byte[0];
    }

    //protected void ButtonNextContactInformation_Click(object sender, EventArgs e)
    //{
    //    //MultiViewNewMemberApplication2.ActiveViewIndex = 2;
    //    //RadTabStripNewMemberApplication.SelectedIndex = 0;
    //}
    //protected void ButtonNextEmploymentHistory_Click(object sender, EventArgs e)
    //{
    //    //MultiViewNewMemberApplication2.ActiveViewIndex = 3;
    //    RadTabStripNewMemberApplication.SelectedIndex = 3;
    //}
    //protected void ButtonNextBeneficiaryInformation_Click(object sender, EventArgs e)
    //{
    //    //MultiViewNewMemberApplication2.ActiveViewIndex = 4;
    //    RadTabStripNewMemberApplication.SelectedIndex = 4;
    //}

    protected void ButtonCreateApplicantRecord_Click(object sender, EventArgs e)
    {
        MemberDeclaration declaration = new MemberDeclaration();
        declaration.pensionID = Int32.Parse(DeclarationnewMember.pensionID);
        if (DeclarationnewMember.DateofApplication.HasValue)
            declaration.dateofApplication = DeclarationnewMember.DateofApplication.Value;
        if (DeclarationnewMember.DateofCertification.HasValue)
            declaration.dateofCertifying = DeclarationnewMember.DateofCertification.Value;
        declaration.nameofCertifyingOfficer = DeclarationnewMember.nameofCertifyingOfficer;
        declaration.titleofCertifyingOfficer = DeclarationnewMember.titleofCertifyingOfficer;
        declaration.locationofCertifyingOfficerSignature = DeclarationnewMember.locationofCertifyingOfficerSignature;
        declaration.whoUpdated = User.Identity.Name;
        declaration.dateUpdated = DateTime.Now.Date;
        new PSPITSDO().SaveMemberDeclaration(declaration);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        EmploymentServiceBreakEvidenceTip.Show();
    }
    protected void RadToolBar2_ButtonClick1(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {
        EmploymentServiceBreakEvidenceTip.Show();
    }
    protected void RadToolBar3_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {
        BeneficiaryEvidenceTip.Show();
    }
    protected void ButtonNextDisability_Click(object sender, EventArgs e)
    {
        //MultiViewNewMemberApplication2.ActiveViewIndex = 5;
        //RadTabStripNewMemberApplication.SelectedIndex = 5;
    }
    protected void RadTabStripNewMemberApplication_TabClick(object sender, Telerik.Web.UI.RadTabStripEventArgs e)
    {
        RadToolBarClicked(sender, e);
    }
}
