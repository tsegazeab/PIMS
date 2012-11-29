using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contribution_Contribution : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadPanelBar1_ItemClick(object sender, Telerik.Web.UI.RadPanelBarEventArgs e)
    {
        //if (!Page.IsPostBack)
        //{

            switch (e.Item.Text)
            {
                case "MDA Details":
                    contributionRadMultiPage.SelectedIndex = 0;
                    break;
                case "Contact Person":
                    contributionRadMultiPage.SelectedIndex = 1;
                    break;
                case "Contribution History":
                    contributionRadMultiPage.SelectedIndex = 2;
                    break;
                case "Workstation within Agency":
                    contributionRadMultiPage.SelectedIndex = 3;
                    break;
                case "Member within Agency":
                    contributionRadMultiPage.SelectedIndex = 4;
                    break;
                case "Contribution Arrears":
                    contributionRadMultiPage.SelectedIndex = 5;
                    break;
                case "Member Information":
                    contributionRadMultiPage.SelectedIndex = 6;
                    break;
                case "Member Contribution History":
                    contributionRadMultiPage.SelectedIndex = 7;
                    break;
                case "Member Contribution Arrears":
                    contributionRadMultiPage.SelectedIndex = 8;
                    break;
                case "Break in Service":
                    contributionRadMultiPage.SelectedIndex = 9;
                    break;
            }
        }
    //}
    protected void RadToolBar2_ButtonClick(object sender, Telerik.Web.UI.RadToolBarEventArgs e)
    {
        NewAgencyContributionTip.Show();
    }
}