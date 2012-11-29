using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;
using PSPITS.DAL;
using PSPITS.UIL;
using Telerik.Web.UI;
using PSPITS.MODEL;

public partial class Membership_UpdateContactInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ContactInformationUpdate.PensionID = Master.PensionID;

            ContactInformationUpdate.LoadCurrentMember();
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
        PSPITSModuleSession.SchemeID = _do.GetSchemeIDByPensionID(Int32.Parse(e.pensionID.Trim()));
        PSPITSModuleSession.MemberFullName = _do.GetMemberFullNamebyPensionID(int.Parse(e.pensionID.Trim())).memberFullName.Trim();
        MemberIdentity mi = _do.GetMemberIdentityPhotoByPensionId(int.Parse(e.pensionID.Trim()));
        PSPITSModuleSession.MemberPhoto = mi != null ? mi.MemberPhoto : new byte[0];
    }

    private void SearchRadToolBarClickedFromMasterPage(object sender, CommandEventArgs e)
    {

        RadToolTip RadToolTipSearch = new Utility().FindControlFromRoot(this, "RadToolTipSearch") as RadToolTip;
        if (RadToolTipSearch != null) RadToolTipSearch.Show();
    }

    protected void ButtonNextPersonalInformation_Click(object sender, EventArgs e)
    {
        //PSPITSDO _do = new PSPITSDO();
      
        //MemberContactDetail contactDetail = new MemberContactDetail();
     
        //contactDetail.pensionID = Int32.Parse(ContactInformationUpdate.PensionID);
        //contactDetail.email = ContactInformationUpdate.eMail;
        //contactDetail.phoneMobile = ContactInformationUpdate.phoneMobile;
        //contactDetail.phoneLandline = ContactInformationUpdate.phoneLandline;
        //contactDetail.postAddress = ContactInformationUpdate.postAddress;
        //contactDetail.homeState = Int32.Parse(ContactInformationUpdate.homeState);
        //contactDetail.address = ContactInformationUpdate.Address;
        //contactDetail.dateUpdated = DateTime.Now;
        //contactDetail.whoUpdated = "admin";
        ////now save the information in the three objects, begining with membership record
        //_do.SaveMemberContactDetail(contactDetail);
        ////go to the service break page
       
    }

  
    protected void RadTabStripUpdateContactInfo_TabClick(object sender, Telerik.Web.UI.RadTabStripEventArgs e)
    {
        if (e.Tab.Text.ToLower().Equals("member contact info"))
        {
            ContactInformationUpdate.PensionID = Master.PensionID;
            ContactInformationUpdate.LoadCurrentMember();
           
        }
    }
}