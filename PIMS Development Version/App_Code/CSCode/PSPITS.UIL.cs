using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Security.Authentication;
using System.Security;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSPITS.DAL;
using PSPITS.DAL.DATA;
using PSPITS.COMMON;
using Telerik.Web.UI;
namespace PSPITS.UIL
{

    #region .From Gabriel.
        
    public static class ActualContributionToEditSession
    {
        public static ActualContributionToEdit ActualContributionToEdit
        {
            get
            {
                if (HttpContext.Current.Session["ActualContributionToEdit"] != null)
                {
                    return (ActualContributionToEdit)HttpContext.Current.Session["ActualContributionToEdit"];
                }
                else
                {
                    return null;
                }
            }
            set
            {
                if (HttpContext.Current.Session["ActualContributionToEdit"] == null)
                {
                    HttpContext.Current.Session["ActualContributionToEdit"] = new ActualContributionToEdit();
                }
                HttpContext.Current.Session["ActualContributionToEdit"] = value;
            }
        }
    }
    public static class MemberContributionToEditSession
    {
        public static MemberContributionToEdit MemberContributionToEdit
        {
            get
            {
                if (HttpContext.Current.Session["MemberContributionToEdit"] != null)
                {
                    return (MemberContributionToEdit)HttpContext.Current.Session["MemberContributionToEdit"];
                }
                else
                {
                    return null;
                }
            }
            set
            {
                if (HttpContext.Current.Session["MemberContributionToEdit"] == null)
                {
                    HttpContext.Current.Session["MemberContributionToEdit"] = new MemberContributionToEdit();
                }
                HttpContext.Current.Session["MemberContributionToEdit"] = value;
            }
        }
    }

    #endregion

    public static class PSPITSModuleSession
    {
        # region Private Constants
        //---------------------------------------------------------------------
        private const string memberFullName = "memberFullName";
        private const string pensionID = "pensionID";
        private const string payrollNo = "payrollNo";
        private const string schemeID = "schemeID";
        private const string memberPhoto = "memberPhoto";
        private const string startDate = "StartDate";
        private const string endDate = "EndDate";
        private const string MDAID = "mdaid";
        private const string MDANAME = "mdaName";
        //---------------------------------------------------------------------
        # endregion

        # region Public Properties
        //---------------------------------------------------------------------
        /// <summary>
        ///     The Username is the domain name and username of the current user.
        /// </summary>
        /// 

        public static string mdaID
        {
            get
            {
                if (HttpContext.Current.Session[MDAID] != null)
                    return (string)HttpContext.Current.Session[MDAID];
                else return "0";
            }
            set
            {
                if (HttpContext.Current.Session[MDAID] != null)
                    HttpContext.Current.Session[MDAID] = value;
                else
                    HttpContext.Current.Session[MDAID] = "0";
            }
        }

        public static string mdaName
        {
            get
            {
                if (HttpContext.Current.Session[MDANAME] != null)
                    return (string)HttpContext.Current.Session[MDANAME];
                else return "0";
            }
            set
            {
                if (HttpContext.Current.Session[MDANAME] != null)
                    HttpContext.Current.Session[MDANAME] = value;
                else
                    HttpContext.Current.Session[MDANAME] = "0";
            }
        }

        public static string Username
        {
            get { return HttpContext.Current.User.Identity.Name; }
        }

        public static string MemberFullName
        {
            get 
            {
                if (HttpContext.Current.Session[memberFullName] != null)
                    return (string)HttpContext.Current.Session[memberFullName];
                else return string.Empty;
            }
            set 
            {
                if (HttpContext.Current.Session[memberFullName] != null)
                    HttpContext.Current.Session[memberFullName] = value; 
                else
                    HttpContext.Current.Session[memberFullName] = string.Empty; 
            }
        }
        public static string PensionID
        {
            get
            {
                if (HttpContext.Current.Session[pensionID] != null)
                    return (string)HttpContext.Current.Session[pensionID];
                else return "0";
            }
            set
            {
                if (HttpContext.Current.Session[pensionID] != null)
                    HttpContext.Current.Session[pensionID] = value;
                else
                    HttpContext.Current.Session[pensionID] = "0";
            }
        }

        public static string SchemeID
        {
            get
            {
                if (HttpContext.Current.Session[schemeID] != null)
                    return (string)HttpContext.Current.Session[schemeID];
                else return "0";
            }
            set
            {
                if (HttpContext.Current.Session[schemeID] != null)
                    HttpContext.Current.Session[schemeID] = value;
                else
                    HttpContext.Current.Session[schemeID] = "0";
            }
        }

        public static string PayrollNo
        {
            get
            {
                if (HttpContext.Current.Session[payrollNo] != null)
                    return (string)HttpContext.Current.Session[payrollNo];
                else return "0";
            }
            set
            {
                if (HttpContext.Current.Session[payrollNo] != null)
                    HttpContext.Current.Session[payrollNo] = value;
                else
                    HttpContext.Current.Session[payrollNo] = "0";
            }
        }

        public static byte[] MemberPhoto
        {
            get
            {
                if (HttpContext.Current.Session[memberPhoto] != null)
                    return (byte[])HttpContext.Current.Session[memberPhoto];
                else
                {
                    byte[] photo = new byte[0];
                    return photo;
                }
            }
            set
            {
                HttpContext.Current.Session[memberPhoto] = value;
            }
        }
      

        /// <summary>
        ///     StartDate is the earliest date used to filter records.
        /// </summary>
        public static DateTime StartDate
        {
            get
            {
                if (HttpContext.Current.Session[startDate] == null)
                    return DateTime.MinValue;
                else
                    return (DateTime)HttpContext.Current.Session[startDate];
            }

            set
            {
                HttpContext.Current.Session[startDate] = value;
            }
        }

        /// <summary>
        ///     EndDate is the latest date used to filter records.
        /// </summary>
        public static DateTime EndDate
        {
            get
            {
                if (HttpContext.Current.Session[endDate] == null)
                    return DateTime.MaxValue;
                else
                    return (DateTime)HttpContext.Current.Session[endDate];
            }

            set
            {
                HttpContext.Current.Session[endDate] = value;
            }
        }
        //---------------------------------------------------------------------
        # endregion
    }
    public static class MemberToEditSession
    {
        public static MemberToEdit MemberToEdit
        {
            get
            {
                if (HttpContext.Current.Session["MemberToEdit"] != null)
                {
                    return (MemberToEdit)HttpContext.Current.Session["MemberToEdit"];
                }
                else
                {
                    return null;
                 
                }
            }
            set
            {
                if (HttpContext.Current.Session["MemberToEdit"] == null)
                {
                    HttpContext.Current.Session["MemberToEdit"] = new MemberToEdit();
                }
                HttpContext.Current.Session["MemberToEdit"] = value;
            }
        }
    }
    public static class MemberEvidenceToEditSession
    {
        public static MemberEvidenceToEdit MemberEvidenceToEdit
        {
            get
            {
                if (HttpContext.Current.Session["MemberEvidenceToEdit"] != null)
                {
                    return (MemberEvidenceToEdit)HttpContext.Current.Session["MemberEvidenceToEdit"];
                }
                else
                {
                    return null;
                }
            }
            set
            {
                if (HttpContext.Current.Session["MemberEvidenceToEdit"] == null)
                {
                    HttpContext.Current.Session["MemberEvidenceToEdit"] = new MemberEvidenceToEdit();
                }
                HttpContext.Current.Session["MemberEvidenceToEdit"] = value;
            }
        }
    }
    public static class BeneficiaryToEditSession
    {
        public static BeneficiaryToEdit BeneficiaryToEdit
        {
            get
            {
                if (HttpContext.Current.Session["BeneficiaryToEdit"] != null)
                {
                    return (BeneficiaryToEdit)HttpContext.Current.Session["BeneficiaryToEdit"];
                }
                else
                {
                    return null;
                }
            }
            set
            {
                if (HttpContext.Current.Session["BeneficiaryToEdit"] == null)
                {
                    HttpContext.Current.Session["BeneficiaryToEdit"] = new BeneficiaryToEdit();
                }
                HttpContext.Current.Session["BeneficiaryToEdit"] =  value;
            }
        }
    }
    public static class ServiceBreakToEditSession
    {
        public static ServiceBreakToEdit ServiceBreakToEdit
        {
            get
            {
                if (HttpContext.Current.Session["ServiceBreakToEdit"] != null)
                {
                    return (ServiceBreakToEdit)HttpContext.Current.Session["ServiceBreakToEdit"];
                }
                else
                {
                    return null;
                }
            }
            set
            {
                if (HttpContext.Current.Session["ServiceBreakToEdit"] == null)
                {
                    HttpContext.Current.Session["ServiceBreakToEdit"] = new ServiceBreakToEdit();
                }
                HttpContext.Current.Session["ServiceBreakToEdit"] = value;
            }
        }
    }
    public static class MemberServiceBreakEvidenceToEditSession
    {
        public static MemberServiceBreakEvidenceToEdit MemberServiceBreakEvidenceToEdit
        {
            get
            {
                if (HttpContext.Current.Session["MemberServiceBreakEvidenceToEdit"] != null)
                {
                    return (MemberServiceBreakEvidenceToEdit)HttpContext.Current.Session["MemberServiceBreakEvidenceToEdit"];
                }
                else
                {
                    return null;
                }
            }
            set
            {
                if (HttpContext.Current.Session["MemberServiceBreakEvidenceToEdit"] == null)
                {
                    HttpContext.Current.Session["MemberServiceBreakEvidenceToEdit"] = new MemberServiceBreakEvidenceToEdit();
                }
                HttpContext.Current.Session["MemberServiceBreakEvidenceToEdit"] = value;
            }
        }
    }
    /// <summary>
    /// Summary description for Utility
    /// </summary>   

    public class Utility
    {
        public Utility()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public Control FindControlToRootOnly(Control parent, string id)
        {
            //Checking if the control can’t be found on the current level
            Control c = parent.FindControl(id);
            if (c == null && parent.Parent != null)
            {
                //The control wasn’t found, we need to search in higher levels
                c = FindControlToRoot(parent.Parent, id);
            }
            //We found our control and we don’t need to search further
            if (c != null)
            {
                return c;
            }
            // We arrived at the root but we didn’t find anything. We need to travel down the control tree to check all the nodes of the tree
            return null;
        }
        // Recursively finding the root control in the control tree and checking the first hierarchy level for the searched control
        public Control FindControlToRoot(Control parent, string id)
        {
            //Checking if the control can’t be found on the current level
            Control c = parent.FindControl(id);
            if (c == null && parent.Parent != null)
            {
                //The control wasn’t found, we need to search in higher levels
                c = FindControlToRoot(parent.Parent, id);
            }
            //We found our control and we don’t need to search further
            if (c != null)
            {
                return c;
            }
            // We arrived at the root but we didn’t find anything. We need to travel down the control tree to check all the nodes of the tree
            return FindControlFromRoot(parent, id);
        }
        //Traveling down the control tree and searching for our control
        public Control FindControlFromRoot(Control parent, string id)
        {
            //Checking all the available controls
            foreach (Control item in parent.Controls)
            {
                Control c = item.FindControl(id);
                if (c != null)
                {
                    //We found our control on this level
                    return c;
                }
                //Traveling further down if nothing was found
                FindControlFromRoot(item, id);
            }

            //If there is no such control in any of the branches the method returns the null value
            return null;
        }

        public static void EmptyControl(Control ctrl)
        {

            if ((ctrl.GetType() == typeof(TextBox)))
            {
                ((TextBox)(ctrl)).Text = string.Empty;

            }
            else if ((ctrl.GetType() == typeof(RadComboBox)))
            {
                ((RadComboBox)(ctrl)).Text = string.Empty;
                ((RadComboBox)(ctrl)).EmptyMessage = "--Please Select--";
                ((RadComboBox)(ctrl)).SelectedIndex = -1;
                ((RadComboBox)(ctrl)).ClearSelection();
            }
            else if ((ctrl.GetType() == typeof(RadTextBox)))
            {
                ((RadTextBox)(ctrl)).Text = string.Empty;

            }
            else if ((ctrl.GetType() == typeof(RadAsyncUpload)))
            {
                if (((RadAsyncUpload)(ctrl)).UploadedFiles.Count > 0) ((RadAsyncUpload)(ctrl)).UploadedFiles.RemoveAt(0);
                ((RadAsyncUpload)(ctrl)).UploadedFiles.Clear();
            }
            else if ((ctrl.GetType()) == typeof(RadDatePicker))
            {
                //((RadDatePicker)(ctrl)).SelectedDate = null;
                //((RadDatePicker)(ctrl)).DateInput.Text = "";
                //((RadDatePicker)(ctrl)).DateInput.EmptyMessage = "Select Date";
                ((RadDatePicker)(ctrl)).Clear();
                ((RadDatePicker)(ctrl)).DateInput.Clear();
            }
            else if ((ctrl.GetType() == typeof(RadNumericTextBox)))
            {
                ((RadNumericTextBox)(ctrl)).Text = string.Empty;

            }
        }
        //    private string CurrentControl
        //    {
        //        get
        //        {
        //            return this.ViewState["CurrentControl"] == null ? string.Empty : (string)this.ViewState["CurrentControl"];
        //        }
        //        set
        //        {
        //            this.ViewState["CurrentControl"] = value;
        //        }
        //    }
        //    private void LoadMyUserControl(string controlName, Control parent)
        //    {
        //        parent.Controls.Clear();
        //        UserControl MyControl = (UserControl)LoadControl(controlName);
        //        string userControlID = controlName.Split('.')[0];
        //        MyControl.ID = userControlID.Replace("/", "").Replace("~", "");
        //        parent.Controls.Add(MyControl);
        //        this.CurrentControl = controlName;
        //    }

    }
}