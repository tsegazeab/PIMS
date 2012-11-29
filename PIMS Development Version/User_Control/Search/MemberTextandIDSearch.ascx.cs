using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Telerik.Web;
using PSPITS.UIL;
using PSPITS.DAL;
using PSPITS.COMMON;

public partial class User_Control_MemberTextandIDSearch : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if (!Page.IsPostBack)
        {

            Utility utl = new Utility();

            RadAjaxManager radajaxmanager = utl.FindControlToRootOnly(this, "RadAjaxManager1") as RadAjaxManager;
            RadAjaxLoadingPanel radajaxloading = utl.FindControlToRootOnly(this, "RadAjaxLoadingPanel1") as RadAjaxLoadingPanel;

            RadTabStrip RadTabStripSearch = utl.FindControlToRootOnly(this, "RadTabStripSearch") as RadTabStrip;
          //  RadMultiPage RadMultiPageSearchMember1 = utl.FindControlToRootOnly(this, "RadMultiPageSearchMember") as RadMultiPage;
            RadPageView RadPageViewSearchMemberByName = utl.FindControlToRootOnly(this, "RadPageViewSearchMemberByName") as RadPageView;
            RadPageView RadPageViewSearchMemberByID = utl.FindControlToRootOnly(this, "RadPageViewSearchMemberByID") as RadPageView;


            //
            if ((radajaxmanager != null) && (radajaxloading != null) && (RadTabStripSearch != null))
            {
                //now check if the various combo boxes have been found 
                if (RadTabStripSearch != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadTabStripSearch, RadTabStripSearch.Tabs[0], null);
                if (RadTabStripSearch != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadTabStripSearch, RadTabStripSearch.Tabs[1], null);
               // if (RadPageViewSearchMemberByName != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadTabStripSearch, RadPageViewSearchMemberByName, null);
              //  if (RadMultiPageSearchMember1 != null) radajaxmanager.AjaxSettings.AddAjaxSetting(RadTabStripSearch, RadMultiPageSearchMember1, null);


            }
        this.RadMultiPageSearchMember.SelectedIndex = RadMultiPageSearchMember.FindPageViewByID("RadPageViewSearchMemberByID").Index;
            //
             
        }
       
    }
    protected void RadToolBarClicked(object sender, Telerik.Web.UI.RadTabStripEventArgs e)
    {

        if (e.Tab.Text.ToLower().Equals("search by member name"))
        {
            RadMultiPageSearchMember.SelectedIndex = RadMultiPageSearchMember.FindPageViewByID("RadPageViewSearchMemberByName").Index;
        }
        else if (e.Tab.Text.ToLower().Equals("search by identification number"))
        {
            RadMultiPageSearchMember.SelectedIndex = RadMultiPageSearchMember.FindPageViewByID("RadPageViewSearchMemberByID").Index;
        }
      
    }
}