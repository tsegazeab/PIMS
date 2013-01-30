using System;
using System.Collections.Generic;
using System.Text;
using PSPITS.DAL;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using PSPITS.COMMON;
using PSPITS.MODEL;

namespace PSPITS.DAL.DATA
{
    public class PSPITSDO : DataObject
    {

        #region .From Gabriel.
        
        public GetMDA_ActualContributionHistoryByPeriodAndID_Result GetActualContributionByPeriodandID(int mdaID, int periodStart, int PeriodEnd)
        {
            using (var context = new PSPITSEntities())
            {
                return context.GetMDA_ActualContributionHistoryByPeriodAndID(mdaID, periodStart, PeriodEnd).FirstOrDefault();

            }
        }
        public DataTable GetMDAByID(int mdaID)
        {
            using (var context = new PSPITSEntities())
            {
                return LINQToDataTable(context.MdaListings.Where(m => m.mdaID == mdaID).Select(m => m).ToArray());
            }
        }

        public IEnumerable<vwMemberSalary> GetMemberSalaryByPensionID(int pensionID)
        {
            using (var context = new PSPITSEntities())
            {

                return context.vwMemberSalaries.Where(m => m.pensionID == pensionID).Select(m => m).ToArray();
            }
        }
        public IEnumerable<vwMemberSalary> GetMemberSalaryByMDAID(int mdaID)
        {
            using (var context = new PSPITSEntities())
            {

                return context.vwMemberSalaries.Where(m => m.mdaID == mdaID).Select(m => m).ToArray();
            }
        }
        public DataTable GetMemberSalaryContributionByPensionID(int pensionID)
        {
            using (var context = new PSPITSEntities())
            {
                var rows = from contribution in context.vwMemberSalaries
                           where (contribution.pensionID == pensionID)
                           select new { BodyText1 = contribution.year, BodyText2 = contribution.month, BodyText3 = contribution.mdaName, BodyText20 = contribution.mdaName, BodyText4 = contribution.grossPay, BodyText5 = contribution.basicPay, BodyText6 = contribution.employerDeduction, BodyText7 = contribution.employeeDeduction, BodyText8 = contribution.employeeDeduction + contribution.employerDeduction, BodyGroup1 = contribution.schemeID, BodyGroup2 = contribution.firstName, BodyGroup3 = contribution.lastName, BodyGroup4 = contribution.pensionID, BodyGroup5 = contribution.maritalStatus, BodyGroup6 = contribution.dateoffirstAppointment, BodyGroup7 = contribution.dateofBirth, BodyGroup8 = contribution.dateoffirstAppointment };
                return LINQToDataTable(rows);
            }
        }
        public vwMemberSalary GetMemberSalaryContributionByPeriod(int pensionID, int month, int year)
        {
            using (var context = new PSPITSEntities())
            {

                return context.vwMemberSalaries.FirstOrDefault(m => m.pensionID == pensionID && m.month == month && m.year == year);
            }
        }
        public ActualContribution GetActualContributionByPeriod(int pensionID, int month, int year)
        {
            using (var context = new PSPITSEntities())
            {

                return context.ActualContributions.FirstOrDefault(m => m.mdaID == pensionID && m.month == month && m.year == year);
            }
        }
        public DataTable GetMemberSalaryContributionByMDAID(int mdaID)
        {
            using (var context = new PSPITSEntities())
            {
                var rows = from contribution in context.vwMemberSalaries
                           where (contribution.mdaID == mdaID)
                           select new { BodyText1 = contribution.year, BodyText2 = contribution.month, BodyText3 = contribution.mdaName, BodyText20 = contribution.mdaName, BodyText4 = contribution.grossPay, BodyText5 = contribution.basicPay, BodyText6 = contribution.employerDeduction, BodyText7 = contribution.employeeDeduction, BodyText8 = contribution.employeeDeduction + contribution.employerDeduction, BodyGroup1 = contribution.schemeID, BodyGroup2 = contribution.firstName, BodyGroup3 = contribution.lastName, BodyGroup4 = contribution.pensionID, BodyGroup5 = contribution.maritalStatus, BodyGroup6 = contribution.dateoffirstAppointment, BodyGroup7 = contribution.dateofBirth, BodyGroup8 = contribution.dateoffirstAppointment };
                return LINQToDataTable(rows);
            }
        }
        public DataTable GetMemberSalaryContributionByPensionIDFirst(int pensionID)
        {
            using (var context = new PSPITSEntities())
            {
                var rows = from contribution in context.vwMemberSalaries
                           where (contribution.pensionID == pensionID)
                           select new { BodyText1 = contribution.year, BodyText2 = contribution.month, BodyText3 = contribution.mdaName, BodyText4 = contribution.grossPay, BodyText5 = contribution.basicPay, BodyText6 = contribution.employerDeduction, BodyText7 = contribution.employeeDeduction, BodyText8 = contribution.employeeDeduction + contribution.employerDeduction, BodyGroup1 = contribution.schemeID, BodyGroup2 = contribution.firstName, BodyGroup3 = contribution.lastName, BodyGroup4 = contribution.pensionID, BodyGroup5 = contribution.maritalStatus, BodyGroup6 = contribution.dateoffirstAppointment, BodyGroup7 = contribution.dateofBirth, BodyGroup8 = contribution.dateoffirstAppointment };
                return LINQToDataTableFirst(rows);
            }
        }
        public DataTable LINQToDataTable<T>(IEnumerable<T> varlist)
        {
            DataTable dtReturn = new DataTable();


            // column names
            PropertyInfo[] oProps = null;


            if (varlist == null) return dtReturn;


            foreach (T rec in varlist)
            {
                // Use reflection to get property names, to create table, Only first time, others will follow
                if (oProps == null)
                {
                    oProps = ((Type)rec.GetType()).GetProperties();
                    foreach (PropertyInfo pi in oProps)
                    {
                        Type colType = pi.PropertyType;


                        if ((colType.IsGenericType) && (colType.GetGenericTypeDefinition() == typeof(Nullable<>)))
                        {
                            colType = colType.GetGenericArguments()[0];
                        }


                        dtReturn.Columns.Add(new DataColumn(pi.Name, colType));
                    }
                }


                DataRow dr = dtReturn.NewRow();


                foreach (PropertyInfo pi in oProps)
                {
                    dr[pi.Name] = pi.GetValue(rec, null) == null ? DBNull.Value : pi.GetValue
                    (rec, null);
                }


                dtReturn.Rows.Add(dr);
            }
            return dtReturn;
        }
        public DataTable LINQToDataTableFirst<T>(IEnumerable<T> varlist)
        {
            DataTable dtReturn = new DataTable();


            // column names
            PropertyInfo[] oProps = null;


            if (varlist == null) return dtReturn;


            foreach (T rec in varlist)
            {
                // Use reflection to get property names, to create table, Only first time, others will follow
                if (oProps == null)
                {
                    oProps = ((Type)rec.GetType()).GetProperties();
                    foreach (PropertyInfo pi in oProps)
                    {
                        Type colType = pi.PropertyType;


                        if ((colType.IsGenericType) && (colType.GetGenericTypeDefinition() == typeof(Nullable<>)))
                        {
                            colType = colType.GetGenericArguments()[0];
                        }


                        dtReturn.Columns.Add(new DataColumn(pi.Name, colType));
                    }
                }


                DataRow dr = dtReturn.NewRow();


                foreach (PropertyInfo pi in oProps)
                {
                    dr[pi.Name] = pi.GetValue(rec, null) == null ? DBNull.Value : pi.GetValue
                    (rec, null);
                }
                dtReturn.Rows.Add(dr);
                break;
            }
            return dtReturn;
        }
        public int SaveMemberSalary(MemberSalary aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERSALARY);

            db.AddInParameter(cmdSelect, Constants.COL_MEMBERSALARY_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdSelect, Constants.COL_MEMBERSALARY_MONTH, DbType.Int32, aPD.month);
            db.AddInParameter(cmdSelect, Constants.COL_MEMBERSALARY_YEAR, DbType.Int32, aPD.year);
            //see if this is a new record or an update
            DataSet ds = GetData(cmdSelect, null);
            DataTable dt = ds.Tables[0];

            // DataRow row;
            if (dt.Rows.Count == 0)
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_ADDMEMBERSALARY);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.Date, aPD.dateCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, aPD.whoCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_LOGREF, DbType.String, aPD.logRef);
            }
            else
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEMEMBERSALARY);//
                db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);
            }
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_MONTH, DbType.Int32, aPD.month);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_YEAR, DbType.Int32, aPD.year);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_PERIOD, DbType.Int32, aPD.period);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_PAYROLLNUMBER, DbType.String, aPD.payrollNumber);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_BASICPAY, DbType.Decimal, aPD.basicPay);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_COLA, DbType.Decimal, aPD.cola);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_GROSSPAY, DbType.Decimal, aPD.grossPay);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_EMPLOYEEDEDUCTION, DbType.Decimal, aPD.employeeDeduction);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_EMPLOYERDEDUCTION, DbType.Decimal, aPD.employerDeduction);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_MONTHGRADE, DbType.Int32, aPD.monthGrade);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSALARY_MONTHRSSAGENCY, DbType.Int32, aPD.monthRSSAgency);


            return (ExecuteNonQuery(cmdAddEdit));
        }
        public DataTable GetMDAContributionHistoryByID(int mdaID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect;
            if (mdaID == -1)
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDACONTRIBUTIONHISTORYALL);

            }
            else
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDACONTRIBUTIONHISTORYBYID);
                db.AddInParameter(cmdSelect, Constants.COL_LIST_MDAID, DbType.Int32, mdaID);
            }



            //see if this is a new record or an update
            return (GetData(cmdSelect, null).Tables[0]);

        }
        public DataTable GetMDA_ActualContributionHistoryByID(int mdaID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect;
            if (mdaID == -1)
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDAACTUALCONTRIBUTIONHISTORYALL);

            }
            else
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDAACTUALCONTRIBUTIONHISTORYBYID);
                db.AddInParameter(cmdSelect, Constants.COL_LIST_MDAID, DbType.Int32, mdaID);
            }

            return (GetData(cmdSelect, null).Tables[0]);

        }
        public DataTable GetMDAContributionHistoryByIDandPeriod(int mdaID, int periodStart, int periodEnd)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect;
            if (mdaID == -1) //ALL MDA's
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDACONTRIBUTIONHISTORYBYPERIOD);
            }
            else  //FOR Selected MDA
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDACONTRIBUTIONHISTORYBYPERIODANDID);
                db.AddInParameter(cmdSelect, Constants.COL_LIST_MDAID, DbType.Int32, mdaID);
            }

            db.AddInParameter(cmdSelect, Constants.COL_LIST_PERIODSTART, DbType.Int32, periodStart);
            db.AddInParameter(cmdSelect, Constants.COL_LIST_PERIODEND, DbType.Int32, periodEnd);

            return (GetData(cmdSelect, null).Tables[0]);

        }
        public DataTable GetMDA_ActualContributionHistoryByIDandPeriod(int mdaID, int periodStart, int periodEnd)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect;
            if (mdaID == -1) //ALL MDA'sal
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDAACTUALCONTRIBUTIONHISTORYBYPERIOD);
            }
            else  //FOR Selected MDA
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDAACTUALCONTRIBUTIONHISTORYBYPERIODANDID);
                db.AddInParameter(cmdSelect, Constants.COL_LIST_MDAID, DbType.Int32, mdaID);
            }

            db.AddInParameter(cmdSelect, Constants.COL_LIST_PERIODSTART, DbType.Int32, periodStart);
            db.AddInParameter(cmdSelect, Constants.COL_LIST_PERIODEND, DbType.Int32, periodEnd);

            return (GetData(cmdSelect, null).Tables[0]);

        }
        public DataTable GetMDA(Boolean withALL)
        {
            DbCommand cmdSelect;
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            if (withALL)
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDAWITHAll);
            }
            else
            {
                cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDA);
            }
            return GetData(cmdSelect, null).Tables[0];

        }
        public bool SaveActualContribution(ActualContribution be)
        {
            using (var context = new PSPITSEntities())
            {
                var actualContribution = context.ActualContributions.FirstOrDefault(b => b.mdaID == be.mdaID && b.month == be.month && b.year == be.year);
                if (actualContribution != null)
                {
                    actualContribution.dateRemitted = be.dateRemitted;
                    actualContribution.employeeDeduction = be.employeeDeduction;
                    actualContribution.employerDeduction = be.employerDeduction;
                    actualContribution.dateUpdated = DateTime.Now;
                    actualContribution.whoUpdated = be.whoUpdated;
                }
                else
                {
                    context.ActualContributions.AddObject(be);
                }
                return context.SaveChanges() > 0;
            }
        }

        #endregion

        public int GenPensionID()
        {
            string code = string.Empty;
            DataTable dt;
            do
            {
                code = string.Format("{0}", PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                dt = PensionIDExist(int.Parse(code));
            } while (dt.Rows.Count > 0);

            return (int.Parse(code));
        }

        public string GenSchemeID()
        {
            string code = string.Empty;
            string schemeID = string.Empty;
            int yearNum = DateTime.Today.Year - 2000;
            int monthNum = DateTime.Today.Month;
            DataTable dt;
            do
            {
                code = string.Format("{0}", PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                schemeID = "A" + yearNum + Constants.MONTH_CODES[monthNum] + code;
                dt = SchemeIDExist(schemeID);
            }
            while (dt.Rows.Count > 0);
            return schemeID;
        }

        public int GenEmploymentID()
        {
            string code = string.Empty;
            DataTable dt;
            do
            {
                //code = string.Format("{0}{1}", DateTime.Now.Year, PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                code = string.Format("{0}", PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                dt = EmploymentIDExist(int.Parse(code));
            } while (dt.Rows.Count > 0);

            return (int.Parse(code));

        }
        public int GenServiceBreakID()
        {
            string code = string.Empty;
            DataTable dt;
            do
            {
                //code = string.Format("{0}{1}", DateTime.Now.Year, PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                code = string.Format("{0}", PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                dt = ServiceBreakIDExist(int.Parse(code));
            } while (dt.Rows.Count > 0);

            return (int.Parse(code));
        }

        public int GenEvidenceID()
        {
            string code = string.Empty;
            DataTable dt;
            do
            {
                //code = string.Format("{0}{1}", DateTime.Now.Year, PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                code = string.Format("{0}", PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                dt = ServiceBreakIDExist(int.Parse(code));
            } while (dt.Rows.Count > 0);

            return (int.Parse(code));
        }

        public int GenBeneficiaryID()
        {
            string code = string.Empty;
            DataTable dt;
            do
            {
                //code = string.Format("{0}{1}", DateTime.Now.Year, PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                code = string.Format("{0}", PadCode((new Random(~unchecked((int)DateTime.Now.Ticks) * (DateTime.Now.Millisecond + 1)).Next(999999999)), 9));
                dt = BeneficiaryIDExist(int.Parse(code));
            } while (dt.Rows.Count > 0);

            return (int.Parse(code));

        }
        public DataTable ServiceBreakIDExist(int servicebreakID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETSERVICEBREAKBYID);
            db.AddInParameter(cmdSelect, Constants.COL_MEMBERSERVICEBREAK_ID, DbType.Int32, servicebreakID);
            //see if this is a new record or an update
            return GetData(cmdSelect, Constants.TABLE_MEMBER_SERVICEBREAK).Tables[0];

        }
        public DataTable PensionIDExist(int pensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERBYID);
            db.AddInParameter(cmdSelect, Constants.COL_PENSIONID, DbType.Int32, pensionID);
            //see if this is a new record or an update
            return GetData(cmdSelect, Constants.TABLE_MEMBER).Tables[0];
        }

        public DataTable SchemeIDExist(string schemeID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERBYSCHEMEID);
            db.AddInParameter(cmdSelect, Constants.COL_SCHEMEID, DbType.String, schemeID);
            //see if this is a new record or an update
            return GetData(cmdSelect, Constants.TABLE_MEMBER).Tables[0];

        }

        public DataTable BeneficiaryIDExist(int beneficiaryID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYBYBENEFICIARYID);
            db.AddInParameter(cmdSelect, Constants.COL_BENEFICIARY_BENEFICIARYID, DbType.Int32, beneficiaryID);
            //see if this is a new record or an update
            return GetData(cmdSelect, Constants.TABLE_BENEFICIARY).Tables[0];

        }
        public DataTable EmploymentIDExist(int employmentID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETEMPLOYMENTBYID);
            db.AddInParameter(cmdSelect, Constants.COL_EMPLOYMENTID, DbType.Int32, employmentID);
            //see if this is a new record or an update
            return GetData(cmdSelect, Constants.TABLE_MEMBER_EMPLOYMENT).Tables[0];

        }
        public MemberPersonalDetail GetMemberbyPensionID(int pensionID)
        {
            MemberPersonalDetail md = new MemberPersonalDetail();
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERBYID);
            db.AddInParameter(cmdSelect, Constants.COL_PENSIONID, DbType.Int32, pensionID);
            //see if this is a new record or an update
            DataTable dt = GetData(cmdSelect, Constants.TABLE_MEMBER).Tables[0];
            if (dt.Rows.Count == 1)
            {
                if (dt.Rows[0][Constants.COL_PENSIONID] != DBNull.Value) md.pensionID = (int)dt.Rows[0][Constants.COL_PENSIONID];
                if (dt.Rows[0][Constants.COL_PREFIX] != DBNull.Value) md.prefix = (string)dt.Rows[0][Constants.COL_PREFIX];
                if (dt.Rows[0][Constants.COL_FIRSTNAME] != DBNull.Value) md.firstName = (string)dt.Rows[0][Constants.COL_FIRSTNAME];
                if (dt.Rows[0][Constants.COL_LASTNAME] != DBNull.Value) md.lastName = (string)dt.Rows[0][Constants.COL_LASTNAME];
                if (dt.Rows[0][Constants.COL_GENDER] != DBNull.Value) md.gender = (string)dt.Rows[0][Constants.COL_GENDER];
                if (dt.Rows[0][Constants.COL_DATEOFBIRTH] != DBNull.Value) md.dateofBirth = (DateTime)dt.Rows[0][Constants.COL_DATEOFBIRTH];
                if (dt.Rows[0][Constants.COL_MARITALSTATUS] != DBNull.Value) md.maritalStatus = (int)dt.Rows[0][Constants.COL_MARITALSTATUS];
                if (dt.Rows[0][Constants.COL_NATIONALID] != DBNull.Value) md.nationalID = (string)dt.Rows[0][Constants.COL_NATIONALID];
                if (dt.Rows[0][Constants.COL_PERSONALNO] != DBNull.Value) md.personalNo = (string)dt.Rows[0][Constants.COL_PERSONALNO];
                if (dt.Rows[0][Constants.COL_PAYROLLNUMBER] != DBNull.Value) md.payrollNumber = (string)dt.Rows[0][Constants.COL_PAYROLLNUMBER];
                if (dt.Rows[0][Constants.COL_ESTABLISHMENTNUMBER] != DBNull.Value) md.establishmentNumber = (string)dt.Rows[0][Constants.COL_ESTABLISHMENTNUMBER];
                if (dt.Rows[0][Constants.COL_DATEOFFIRSTAPPOINTMENT] != DBNull.Value) md.dateofFirstAppointment = (DateTime)dt.Rows[0][Constants.COL_DATEOFFIRSTAPPOINTMENT];
                if (dt.Rows[0][Constants.COL_CURRENTMDA] != DBNull.Value) md.currentMDA = (int)dt.Rows[0][Constants.COL_CURRENTMDA];
                if (dt.Rows[0][Constants.COL_DATECREATED] != DBNull.Value) md.dateCreated = (DateTime)dt.Rows[0][Constants.COL_DATECREATED];
                if (dt.Rows[0][Constants.COL_DATEUPDATED] != DBNull.Value) md.dateUpdated = (DateTime)dt.Rows[0][Constants.COL_DATEUPDATED];
                if (dt.Rows[0][Constants.COL_WHOCREATED] != DBNull.Value) md.whoCreated = (string)dt.Rows[0][Constants.COL_WHOCREATED];
                if (dt.Rows[0][Constants.COL_WHOUPDATED] != DBNull.Value) md.whoUpdated = (string)dt.Rows[0][Constants.COL_WHOUPDATED];
                if (dt.Rows[0][Constants.COL_LOGREF] != DBNull.Value) md.logRef = (int)dt.Rows[0][Constants.COL_LOGREF];
            }
            return md;
        }

        public MemberPersonalDetail GetMemberFullNamebyPensionID(int pensionID)
        {
            MemberPersonalDetail md = new MemberPersonalDetail();
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERFULLNAMEBYPENSIONID);
            db.AddInParameter(cmdSelect, Constants.COL_PENSIONID, DbType.Int32, pensionID);
            //see if this is a new record or an update
            DataTable dt = GetData(cmdSelect, Constants.TABLE_MEMBER).Tables[0];
            if (dt.Rows.Count == 1)
            {
                if (dt.Rows[0][Constants.COL_PENSIONID] != DBNull.Value) md.pensionID = (int)dt.Rows[0][Constants.COL_PENSIONID];
                if (dt.Rows[0][Constants.COL_MEMBERFULLNAME] != DBNull.Value) md.memberFullName = (string)dt.Rows[0][Constants.COL_MEMBERFULLNAME];

            }
            return md;
        }
        public BeneficiaryPersonalDetail GetBeneficiaryPersonalDetailByBeneficiaryID(int beneficiaryID)
        {
            BeneficiaryPersonalDetail md = new BeneficiaryPersonalDetail();
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYBYBENEFICIARYID);
            db.AddInParameter(cmdSelect, Constants.COL_BENEFICIARY_BENEFICIARYID, DbType.Int32, beneficiaryID);
            //see if this is a new record or an update
            DataTable dt = GetData(cmdSelect, Constants.TABLE_BENEFICIARY).Tables[0];
            if (dt.Rows.Count == 1)
            {
                if (dt.Rows[0][Constants.COL_BENEFICIARY_PENSIONID] != DBNull.Value) md.pensionID = (int)dt.Rows[0][Constants.COL_BENEFICIARY_PENSIONID];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_BENEFICIARYID] != DBNull.Value) md.beneficiaryID = (int)dt.Rows[0][Constants.COL_BENEFICIARY_BENEFICIARYID];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_FIRSTNAME] != DBNull.Value) md.firstName = (string)dt.Rows[0][Constants.COL_BENEFICIARY_FIRSTNAME];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_LASTNAME] != DBNull.Value) md.lastName = (string)dt.Rows[0][Constants.COL_BENEFICIARY_LASTNAME];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_GENDER] != DBNull.Value) md.gender = (string)dt.Rows[0][Constants.COL_BENEFICIARY_GENDER];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DATEOFBIRTH] != DBNull.Value) md.dateofBirth = (DateTime)dt.Rows[0][Constants.COL_BENEFICIARY_DATEOFBIRTH];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_MARITALSTATUS] != DBNull.Value) md.maritalStatus = (int)dt.Rows[0][Constants.COL_BENEFICIARY_MARITALSTATUS];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_RELATIONID] != DBNull.Value) md.relationID = (int)dt.Rows[0][Constants.COL_BENEFICIARY_RELATIONID];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_NATIONALID] != DBNull.Value) md.nationalID = (string)dt.Rows[0][Constants.COL_BENEFICIARY_NATIONALID];
            }
            return md;
        }
        public BeneficiaryContactDetail GetBeneficiaryContactDetailByBeneficiaryID(int beneficiaryID)
        {
            BeneficiaryContactDetail md = new BeneficiaryContactDetail();
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYBYBENEFICIARYID);
            db.AddInParameter(cmdSelect, Constants.COL_BENEFICIARY_BENEFICIARYID, DbType.Int32, beneficiaryID);
            //see if this is a new record or an update
            DataTable dt = GetData(cmdSelect, Constants.TABLE_BENEFICIARY).Tables[0];
            if (dt.Rows.Count == 1)
            {
                if (dt.Rows[0][Constants.COL_BENEFICIARY_PENSIONID] != DBNull.Value) md.pensionID = (int)dt.Rows[0][Constants.COL_BENEFICIARY_PENSIONID];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_BENEFICIARYID] != DBNull.Value) md.beneficiaryID = (int)dt.Rows[0][Constants.COL_BENEFICIARY_BENEFICIARYID];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_EMAIL] != DBNull.Value) md.email = (string)dt.Rows[0][Constants.COL_BENEFICIARY_EMAIL];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_PHONEMOBILE] != DBNull.Value) md.phoneMobile = (string)dt.Rows[0][Constants.COL_BENEFICIARY_PHONEMOBILE];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_PHONELANDLINE] != DBNull.Value) md.phoneLandline = (string)dt.Rows[0][Constants.COL_BENEFICIARY_PHONELANDLINE];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_POSTADDRESS] != DBNull.Value) md.postAddress = (string)dt.Rows[0][Constants.COL_BENEFICIARY_POSTADDRESS];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_ADDRESS] != DBNull.Value) md.address = (string)dt.Rows[0][Constants.COL_BENEFICIARY_ADDRESS];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_HOMESTATE] != DBNull.Value) md.homeState = (int)dt.Rows[0][Constants.COL_BENEFICIARY_HOMESTATE];

            }
            return md;
        }
        public MemberContactDetail GetMemberContact(int PensionID)
        {
            MemberContactDetail md = new MemberContactDetail();
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERBYID);
            db.AddInParameter(cmdSelect, Constants.COL_PENSIONID, DbType.Int32, PensionID);
            //see if this is a new record or an update
            DataTable dt = GetData(cmdSelect, Constants.TABLE_MEMBER).Tables[0];
            if (dt.Rows.Count == 1)
            {
                if (dt.Rows[0][Constants.COL_PENSIONID] != DBNull.Value) md.pensionID = (int)dt.Rows[0][Constants.COL_PENSIONID];
                if (dt.Rows[0][Constants.COL_FIRSTNAME] != DBNull.Value) md.firstName = (string)dt.Rows[0][Constants.COL_FIRSTNAME];
                if (dt.Rows[0][Constants.COL_LASTNAME] != DBNull.Value) md.lastName = (string)dt.Rows[0][Constants.COL_LASTNAME];
                if (dt.Rows[0][Constants.COL_EMAIL] != DBNull.Value) md.email = (string)dt.Rows[0][Constants.COL_EMAIL];
                if (dt.Rows[0][Constants.COL_PHONEMOBILE] != DBNull.Value) md.phoneMobile = (string)dt.Rows[0][Constants.COL_PHONEMOBILE];
                if (dt.Rows[0][Constants.COL_PHONELANDLINE] != DBNull.Value) md.phoneLandline = (string)dt.Rows[0][Constants.COL_PHONELANDLINE];
                if (dt.Rows[0][Constants.COL_POSTADDRESS] != DBNull.Value) md.postAddress = (string)dt.Rows[0][Constants.COL_POSTADDRESS];
                if (dt.Rows[0][Constants.COL_ADDRESS] != DBNull.Value) md.address = (string)dt.Rows[0][Constants.COL_ADDRESS];
                if (dt.Rows[0][Constants.COL_DATEUPDATED] != DBNull.Value) md.dateUpdated = (DateTime)dt.Rows[0][Constants.COL_DATEUPDATED];
                if (dt.Rows[0][Constants.COL_WHOUPDATED] != DBNull.Value) md.whoUpdated = (string)dt.Rows[0][Constants.COL_WHOUPDATED];
                if (dt.Rows[0][Constants.COL_HOMESTATE] != DBNull.Value) md.homeState = (int)dt.Rows[0][Constants.COL_HOMESTATE];
            }
            return md;
        }

        #region .Member Identity.

        public int SaveMemberIdentity(MemberIdentity memberIdentity)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            MemberIdentity currentMI = GetMemberIdentityByPensionId(memberIdentity.PensionID);
            string spName = currentMI != null ? Constants.SP_UPDATEMEMBERIDENTITY : Constants.SP_ADDMEMBERIDENTITY;
            
            DbCommand cmdAddEdit = db.GetStoredProcCommand(spName);

            //If this MemberIdentity already exists then it's an update otherwise, it's a new record
            if (currentMI != null)
            {
                db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.DateTime, memberIdentity.DateUpdated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, memberIdentity.WhoUpdated);

                if (memberIdentity.MemberLeftFourFingerprint.Count() == 0 && currentMI.MemberLeftFourFingerprint.Count() > 0)
                    memberIdentity.MemberLeftFourFingerprint = currentMI.MemberLeftFourFingerprint;
                if (memberIdentity.MemberLeftThumbprint.Count() == 0 && currentMI.MemberLeftThumbprint.Count() > 0)
                    memberIdentity.MemberLeftThumbprint = currentMI.MemberLeftThumbprint;
                if (memberIdentity.MemberPhoto.Count() == 0 && currentMI.MemberPhoto.Count() > 0)
                    memberIdentity.MemberPhoto = currentMI.MemberPhoto;
                if (memberIdentity.MemberRightFourFingerprint.Count() == 0 && currentMI.MemberRightFourFingerprint.Count() > 0)
                    memberIdentity.MemberRightFourFingerprint = currentMI.MemberRightFourFingerprint;
                if (memberIdentity.MemberRightThumbprint.Count() == 0 && currentMI.MemberRightThumbprint.Count() > 0)
                    memberIdentity.MemberRightThumbprint = currentMI.MemberRightThumbprint;
                if (memberIdentity.MemberSignature.Count() == 0 && currentMI.MemberSignature.Count() > 0)
                    memberIdentity.MemberSignature = currentMI.MemberSignature;
                if (memberIdentity.NationalID.Trim().Length == 0 && currentMI.NationalID.Trim().Length > 0)
                    memberIdentity.NationalID = currentMI.NationalID;
            }
            else
            {
                db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.DateTime, memberIdentity.DateCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, memberIdentity.WhoCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_LOGREF, DbType.Int32, memberIdentity.LogRef);
            }
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERLEFTFOURFINGERPRINT, DbType.Binary, memberIdentity.MemberLeftFourFingerprint);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERLEFTTHUMBPRINT, DbType.Binary, memberIdentity.MemberLeftThumbprint);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERPHOTO, DbType.Binary, memberIdentity.MemberPhoto);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERRIGHTFOURFINGERPRINT, DbType.Binary, memberIdentity.MemberRightFourFingerprint);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERRIGHTTHUMBPRINT, DbType.Binary, memberIdentity.MemberRightThumbprint);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSIGNATURE, DbType.Binary, memberIdentity.MemberSignature);
            db.AddInParameter(cmdAddEdit, Constants.COL_NATIONALID, DbType.String, memberIdentity.NationalID);
            db.AddInParameter(cmdAddEdit, Constants.COL_PENSIONID, DbType.String, memberIdentity.PensionID);

            return db.ExecuteNonQuery(cmdAddEdit);

        }

        public MemberIdentity GetMemberIdentityByPensionId(int _pensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            MemberIdentity mi = null;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERIDENTITYBYPENSIONID);
            db.AddInParameter(cmdSelect, Constants.COL_PENSIONID, DbType.Int32, _pensionID);
            DataTable dt = (GetData(cmdSelect, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {
                mi = new MemberIdentity();
                mi.PensionID = _pensionID;
                if (dt.Rows[0][Constants.COL_NATIONALID] != DBNull.Value) mi.NationalID = dt.Rows[0][Constants.COL_NATIONALID].ToString();
                if (dt.Rows[0][Constants.COL_MEMBERPHOTO] != DBNull.Value) mi.MemberPhoto = (byte[])dt.Rows[0][Constants.COL_MEMBERPHOTO];
                if (dt.Rows[0][Constants.COL_MEMBERSIGNATURE] != DBNull.Value) mi.MemberSignature = (byte[])dt.Rows[0][Constants.COL_MEMBERSIGNATURE];
                if (dt.Rows[0][Constants.COL_MEMBERLEFTFOURFINGERPRINT] != DBNull.Value) mi.MemberLeftFourFingerprint = (byte[])dt.Rows[0][Constants.COL_MEMBERLEFTFOURFINGERPRINT];
                if (dt.Rows[0][Constants.COL_MEMBERLEFTTHUMBPRINT] != DBNull.Value) mi.MemberLeftThumbprint = (byte[])dt.Rows[0][Constants.COL_MEMBERLEFTFOURFINGERPRINT];
                if (dt.Rows[0][Constants.COL_MEMBERRIGHTFOURFINGERPRINT] != DBNull.Value) mi.MemberRightFourFingerprint = (byte[])dt.Rows[0][Constants.COL_MEMBERRIGHTFOURFINGERPRINT];
                if (dt.Rows[0][Constants.COL_MEMBERRIGHTTHUMBPRINT] != DBNull.Value) mi.MemberRightThumbprint = (byte[])dt.Rows[0][Constants.COL_MEMBERRIGHTTHUMBPRINT];
                if (dt.Rows[0][Constants.COL_DATECREATED] != DBNull.Value) mi.DateCreated = (DateTime)dt.Rows[0][Constants.COL_DATECREATED];
                if (dt.Rows[0][Constants.COL_DATEUPDATED] != DBNull.Value) mi.DateUpdated = (DateTime)dt.Rows[0][Constants.COL_DATEUPDATED];
                if (dt.Rows[0][Constants.COL_WHOCREATED] != DBNull.Value) mi.WhoCreated = dt.Rows[0][Constants.COL_WHOCREATED].ToString();
                if (dt.Rows[0][Constants.COL_WHOUPDATED] != DBNull.Value) mi.WhoUpdated = dt.Rows[0][Constants.COL_WHOUPDATED].ToString();
                if (dt.Rows[0][Constants.COL_LOGREF] != DBNull.Value) mi.LogRef = (int)dt.Rows[0][Constants.COL_LOGREF];
            }

            return mi;
        }

        public MemberIdentity GetMemberIdentityPhotoByPensionId(int _pensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            MemberIdentity mi = null;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERIDENTITYPHOTOBYID);
            db.AddInParameter(cmdSelect, Constants.COL_PENSIONID, DbType.Int32, _pensionID);
            DataTable dt = (GetData(cmdSelect, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {
                mi = new MemberIdentity();
                mi.PensionID = _pensionID;
                if (dt.Rows[0][Constants.COL_MEMBERPHOTO] != DBNull.Value) mi.MemberPhoto = (byte[])dt.Rows[0][Constants.COL_MEMBERPHOTO];
            }

            return mi;
        }

        public MemberIdentity GetMemberIdentitySignatureByPensionId(int _pensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            MemberIdentity mi = null;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERIDENTITYSIGNATUREBYID);
            db.AddInParameter(cmdSelect, Constants.COL_PENSIONID, DbType.Int32, _pensionID);
            DataTable dt = (GetData(cmdSelect, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {
                mi = new MemberIdentity();
                mi.PensionID = _pensionID;
                if (dt.Rows[0][Constants.COL_MEMBERSIGNATURE] != DBNull.Value) mi.MemberSignature = (byte[])dt.Rows[0][Constants.COL_MEMBERSIGNATURE];
            }

            return mi;
        }

        #endregion

        public EvidenceDetail GetEvidence(int _evidenceID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            EvidenceDetail md = new EvidenceDetail();

            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETEVIDENCE);
            db.AddInParameter(cmdAddEdit, Constants.COL_LIST_EVIDENCEID, DbType.Int32, _evidenceID);
            DataTable dt = (GetData(cmdAddEdit, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {

                ///
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID] != DBNull.Value) md.EvidenceByFunctionID = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCEID] != DBNull.Value) md.EvidenceID = (int)dt.Rows[0][Constants.COL_LIST_EVIDENCEID];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCETYPEID] != DBNull.Value) md.EvidenceTypeID = (int)dt.Rows[0][Constants.COL_LIST_EVIDENCETYPEID];
                if (dt.Rows[0][Constants.COL_LIST_FUNCTIONID] != DBNull.Value) md.FunctionID = (int)dt.Rows[0][Constants.COL_LIST_FUNCTIONID];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCE] != DBNull.Value) md.Evidence = (string)dt.Rows[0][Constants.COL_LIST_EVIDENCE];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCETYPE] != DBNull.Value) md.EvidenceType = (string)dt.Rows[0][Constants.COL_LIST_EVIDENCETYPE];
                if (dt.Rows[0][Constants.COL_LIST_FUNCTION] != DBNull.Value) md.EvidenceFunction = (string)dt.Rows[0][Constants.COL_LIST_FUNCTION];
                if (dt.Rows[0][Constants.COL_LIST_MANDATORY] != DBNull.Value) md.Mandatory = (string)dt.Rows[0][Constants.COL_LIST_MANDATORY];
            }
            return md;

        }
        public EvidenceDetail GetEvidenceType(int _evidencetypeID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            EvidenceDetail md = new EvidenceDetail();

            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETEVIDENCETYPE);
            db.AddInParameter(cmdAddEdit, Constants.COL_LIST_EVIDENCETYPEID, DbType.Int32, _evidencetypeID);
            DataTable dt = (GetData(cmdAddEdit, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {

                ///
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID] != DBNull.Value) md.EvidenceByFunctionID = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCEID] != DBNull.Value) md.EvidenceID = (int)dt.Rows[0][Constants.COL_LIST_EVIDENCEID];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCETYPEID] != DBNull.Value) md.EvidenceTypeID = (int)dt.Rows[0][Constants.COL_LIST_EVIDENCETYPEID];
                if (dt.Rows[0][Constants.COL_LIST_FUNCTIONID] != DBNull.Value) md.FunctionID = (int)dt.Rows[0][Constants.COL_LIST_FUNCTIONID];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCE] != DBNull.Value) md.Evidence = (string)dt.Rows[0][Constants.COL_LIST_EVIDENCE];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCETYPE] != DBNull.Value) md.EvidenceType = (string)dt.Rows[0][Constants.COL_LIST_EVIDENCETYPE];
                if (dt.Rows[0][Constants.COL_LIST_FUNCTION] != DBNull.Value) md.EvidenceFunction = (string)dt.Rows[0][Constants.COL_LIST_FUNCTION];
                if (dt.Rows[0][Constants.COL_LIST_MANDATORY] != DBNull.Value) md.Mandatory = (string)dt.Rows[0][Constants.COL_LIST_MANDATORY];
            }
            return md;

        }
        public EvidenceDetail GetEvidenceFunction(int _functionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            EvidenceDetail md = new EvidenceDetail();

            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETEVIDENCEFUNCTION);
            db.AddInParameter(cmdAddEdit, Constants.COL_LIST_FUNCTIONID, DbType.Int32, _functionID);
            DataTable dt = (GetData(cmdAddEdit, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {

                ///
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID] != DBNull.Value) md.EvidenceByFunctionID = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCEID] != DBNull.Value) md.EvidenceID = (int)dt.Rows[0][Constants.COL_LIST_EVIDENCEID];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCETYPEID] != DBNull.Value) md.EvidenceTypeID = (int)dt.Rows[0][Constants.COL_LIST_EVIDENCETYPEID];
                if (dt.Rows[0][Constants.COL_LIST_FUNCTIONID] != DBNull.Value) md.FunctionID = (int)dt.Rows[0][Constants.COL_LIST_FUNCTIONID];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCE] != DBNull.Value) md.Evidence = (string)dt.Rows[0][Constants.COL_LIST_EVIDENCE];
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCETYPE] != DBNull.Value) md.EvidenceType = (string)dt.Rows[0][Constants.COL_LIST_EVIDENCETYPE];
                if (dt.Rows[0][Constants.COL_LIST_FUNCTION] != DBNull.Value) md.EvidenceFunction = (string)dt.Rows[0][Constants.COL_LIST_FUNCTION];
                if (dt.Rows[0][Constants.COL_LIST_MANDATORY] != DBNull.Value) md.Mandatory = (string)dt.Rows[0][Constants.COL_LIST_MANDATORY];
            }
            return md;

        }
        public DataTable GetDay()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETDAY);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetMonth()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMONTH);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetYear()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETYEAR);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetPrefix()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETPREFIX);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetGender()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETGENDER);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetMaritalStatus()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMARITALSTATUS);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetGrade()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETGRADE);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetMDA()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMDA);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetWorkstation()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETWORKSTATION);
            return GetData(cmdSelect, null).Tables[0];
        }

        public DataTable GetServiceBreakType()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETSERVICEBREAKTYPE);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetDisabilityType()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETDISABILITYTYPE);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetMemberFunctions()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERFUNCTIONS);
            return GetData(cmdSelect, null).Tables[0];
        }

        public DataTable GetMemberBenefitEvents()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERBENEFITEVENTS);
            return GetData(cmdSelect, null).Tables[0];
        }

        public string GetSchemeIDByPensionID(int pensionID)
        {
            using (var context = new PSPITSEntities())
            {
                var member = context.Members.FirstOrDefault(m => m.pensionID == pensionID);
                return member != null ? member.schemeID : string.Empty;
            }
        }

        public Member GetMemberByPensionID(int pensionID)
        {
            using (var context = new PSPITSEntities())
            {
                return context.Members.FirstOrDefault(m => m.pensionID == pensionID);
            }
        }

        public DataTable GetMemberByWhereClause(string Where)
        {
            if (Where.Trim().Length < 10) Where = string.Format("{0}", " WHERE 1=2 ");
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERBYWHERECLAUSE);
            db.AddInParameter(cmdSelect, Constants.PARAMETER_WHERE, DbType.String, Where);
            return GetData(cmdSelect, null).Tables[0];            
        }
        public DataTable GetBeneficiaryRelationshipType()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYRELATIONSHIPTYPE);
            return GetData(cmdSelect, null).Tables[0];

        }
        public DataTable GetServiceBreakbyPensionIDandServiceBreakID(MemberServiceBreak aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETSERVICEBREAKBYPENSIONIDANDSERVICEBREAKID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_ID, DbType.Int32, aPD.serviceBreakID);


            return (GetData(cmdAddEdit, null)).Tables[0];
        }
        public MemberServiceBreak GetServiceBreakbyPensionIDandServiceBreakID(int _pensionID, int _servicebreakID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            MemberServiceBreak md = new MemberServiceBreak();
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETSERVICEBREAKBYPENSIONIDANDSERVICEBREAKID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_PENSIONID, DbType.Int32, _pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_ID, DbType.Int32, _servicebreakID);

            DataTable dt = (GetData(cmdAddEdit, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {
                if (dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_PENSIONID] != DBNull.Value) md.pensionID = (int)dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_PENSIONID];
                if (dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_ID] != DBNull.Value) md.serviceBreakID = (int)dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_ID];
                if (dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_TYPEID] != DBNull.Value) md.serviceBreakType = (int)dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_TYPEID];
                if (dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_START] != DBNull.Value) md.dateStart = (DateTime)dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_START];
                if (dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_END] != DBNull.Value) md.dateEnd = (DateTime)dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_END];
            }
            return md;
        }
        public BeneficiaryDisabilityDetail GetBeneficiaryDisabilityByPensionIDandBeneficiaryID(int _pensionID, int _beneficiaryID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            BeneficiaryDisabilityDetail md = new BeneficiaryDisabilityDetail();
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYDISABILITYBYPENSIONIDANDBENEFICIARYID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_PENSIONID, DbType.Int32, _pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_BENEFICIARYID, DbType.Int32, _beneficiaryID);

            DataTable dt = (GetData(cmdAddEdit, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_PENSIONID] != DBNull.Value) md.pensionID = (int)dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_PENSIONID];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_BENEFICIARYID] != DBNull.Value) md.beneficiaryID = (int)dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_BENEFICIARYID];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_TYPE] != DBNull.Value) md.disabilityType = (int)dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_TYPE];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_DATE] != DBNull.Value) md.dateofDisability = (DateTime)dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_DATE];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_FULLNAME] != DBNull.Value) md.beneficiaryfullName = (string)dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_FULLNAME];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_DESCRIPTION] != DBNull.Value) md.description = (string)dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_DESCRIPTION];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_FILELOCATION] != DBNull.Value) md.medicalFileLocation = (string)dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_FILELOCATION];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_EVIDENCEPRESENTED] != DBNull.Value) md.evidencePresented = (string)dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_EVIDENCEPRESENTED];
                if (dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_EVIDENCEACCEPTED] != DBNull.Value) md.evidenceAccepted = (string)dt.Rows[0][Constants.COL_BENEFICIARY_DISABILITY_EVIDENCEACCEPTED];
            }
            return md;
        }
        public DataTable GetBeneficiaryDisabilityFullNameByPensionIDandBeneficiaryID(int _pensionID, int _beneficiaryID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYDISABILITYFULLNAMEBYPENSIONIDANDBENEFICIARYID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_PENSIONID, DbType.Int32, _pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_BENEFICIARYID, DbType.Int32, _beneficiaryID);

            return (GetData(cmdAddEdit, null)).Tables[0];

        }
        public DataTable GetBeneficiaryDisabilityFullNameByPensionID(int _pensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYDISABILITYFULLNAMEBYPENSIONID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_PENSIONID, DbType.Int32, _pensionID);
            return (GetData(cmdAddEdit, null)).Tables[0];
        }
        public DataTable GetMemberEvidenceByPensionIDandFunctionID(int _pensionID, int _functionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETMEMBEREVIDENCEBYPENSIONIDANDFUNCTIONID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_PENSIONID, DbType.Int32, _pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_LIST_FUNCTIONID, DbType.Int32, _functionID);

            return (GetData(cmdAddEdit, null)).Tables[0];
        }

        public DataTable GetMemberEmploymentServiceBreakEvidenceByPensionID(int _pensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETSERVICEBREAKEVIDENCEBYPENSIONID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_PENSIONID, DbType.Int32, _pensionID);

            return (GetData(cmdAddEdit, null)).Tables[0];
        }

        public MemberServiceBreakEvidenceDetail GetMemberEmploymentServiceBreakEvidenceByPensionAndServiceBreakID(int _pensionID, int _servicebreakID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            MemberServiceBreakEvidenceDetail md = new MemberServiceBreakEvidenceDetail();

            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETSERVICEBREAKEVIDENCEBYPENSIONANDSERVICEBREAKID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_PENSIONID, DbType.Int32, _pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_ID, DbType.Int32, _servicebreakID);

            DataTable dt = (GetData(cmdAddEdit, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {
                ///
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_PENSIONID] != DBNull.Value) md.pensionID = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_PENSIONID];
                if (dt.Rows[0][Constants.COL_SCHEMEID] != DBNull.Value) md.schemeID = dt.Rows[0][Constants.COL_SCHEMEID].ToString();
                if (dt.Rows[0][Constants.COL_LIST_EVIDENCEID] != DBNull.Value) md.EvidenceID = (int)dt.Rows[0][Constants.COL_LIST_EVIDENCEID];
                if (dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_ID] != DBNull.Value) md.serviceBreakID = (int)dt.Rows[0][Constants.COL_MEMBERSERVICEBREAK_ID];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEPRESENTED] != DBNull.Value) md.evidencePresented = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEPRESENTED];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEACCEPTED] != DBNull.Value) md.evidenceAccepted = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEACCEPTED];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCECOMMENT] != DBNull.Value) md.evidenceComment = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCECOMMENT];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILECONTENTTYPE] != DBNull.Value) md.filecontentType = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILECONTENTTYPE];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILEORIGINALNAME] != DBNull.Value) md.fileOriginalName = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILEORIGINALNAME];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEDATED] != DBNull.Value) md.evidenceDated = (DateTime)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEDATED];
                
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILESIZE] != DBNull.Value) md.fileSize = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILESIZE];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_MEMBERFULLNAME] != DBNull.Value) md.memberfullName = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_MEMBERFULLNAME];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_VERIFIEDON] != DBNull.Value) md.dateVerified = (DateTime)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_VERIFIEDON];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_VERIFIEDBY] != DBNull.Value) md.whoVerified = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_VERIFIEDBY];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_SIGNEDBYTITLE] != DBNull.Value) md.evidenceSignedByTitle = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_SIGNEDBYTITLE];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_SIGNEDBYNAME] != DBNull.Value) md.evidenceSignedByName = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_SIGNEDBYNAME];                
            }
            return md;
        }

        public MemberEvidenceDetail GetMemberEvidenceByPensionIDandEvidenceByFunctionID(int _pensionID, int _evidencebyfunctionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            MemberEvidenceDetail md = new MemberEvidenceDetail();

            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETMEMBEREVIDENCEBYPENSIONIDANDEVIDENCEBYFUNCTIONID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_PENSIONID, DbType.Int32, _pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID, DbType.Int32, _evidencebyfunctionID);
            DataTable dt = (GetData(cmdAddEdit, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {
                ///
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_PENSIONID] != DBNull.Value) md.pensionID = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_PENSIONID];
                if (dt.Rows[0][Constants.COL_SCHEMEID] != DBNull.Value) md.schemeID = dt.Rows[0][Constants.COL_SCHEMEID].ToString();
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID] != DBNull.Value) md.EvidenceByFunctionID = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEPRESENTED] != DBNull.Value) md.evidencePresented = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEPRESENTED];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEACCEPTED] != DBNull.Value) md.evidenceAccepted = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEACCEPTED];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCECOMMENT] != DBNull.Value) md.evidenceComment = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCECOMMENT];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILECONTENTTYPE] != DBNull.Value) md.filecontentType = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILECONTENTTYPE];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILEORIGINALNAME] != DBNull.Value) md.fileOriginalName = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILEORIGINALNAME];
                //if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILECONTENT] != DBNull.Value) md.fileContent = (Byte[])dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILECONTENT];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILESIZE] != DBNull.Value) md.fileSize = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_FILESIZE];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_MEMBERFULLNAME] != DBNull.Value) md.memberfullName = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_MEMBERFULLNAME];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_VERIFIEDON] != DBNull.Value) md.dateVerified = (DateTime)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_VERIFIEDON];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_VERIFIEDBY] != DBNull.Value) md.whoVerified = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_VERIFIEDBY];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEID] != DBNull.Value) md.EvidenceID = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCEID];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCETYPEID] != DBNull.Value) md.EvidenceTypeID = (int)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCETYPEID];
                if (dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCE] != DBNull.Value) md.Evidence = (string)dt.Rows[0][Constants.COL_MEMBEREVIDENCE_EVIDENCE];
            }
            return md;

        }
        public MemberDeclaration GetMemberDeclarationByPensionID(int pensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            MemberDeclaration md = new MemberDeclaration();
            md.pensionID = pensionID;

            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETMEMBERDECLARATION);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_PENSIONID, DbType.Int32, pensionID);
            DataTable dt = (GetData(cmdAddEdit, null)).Tables[0];
            if (dt.Rows.Count == 1)
            {
                ///
                if (dt.Rows[0][Constants.COL_NAMEOFCERTIFYINGOFFICER] != DBNull.Value) md.nameofCertifyingOfficer = dt.Rows[0][Constants.COL_NAMEOFCERTIFYINGOFFICER].ToString();
                if (dt.Rows[0][Constants.COL_TITLEOFCERTIFYINGOFFICER] != DBNull.Value) md.titleofCertifyingOfficer = dt.Rows[0][Constants.COL_TITLEOFCERTIFYINGOFFICER].ToString();
                if (dt.Rows[0][Constants.COL_SCHEMEID] != DBNull.Value) md.schemeID = dt.Rows[0][Constants.COL_SCHEMEID].ToString();
                if (dt.Rows[0][Constants.COL_FIRSTNAME] != DBNull.Value) md.firstName = dt.Rows[0][Constants.COL_FIRSTNAME].ToString();
                if (dt.Rows[0][Constants.COL_LASTNAME] != DBNull.Value) md.lastName = dt.Rows[0][Constants.COL_LASTNAME].ToString();
                if (dt.Rows[0][Constants.COL_DATEOFAPPLICATION] != DBNull.Value) md.dateofApplication = (DateTime)dt.Rows[0][Constants.COL_DATEOFAPPLICATION];
                if (dt.Rows[0][Constants.COL_DATEOFCERTIFYING] != DBNull.Value) md.dateofCertifying = (DateTime)dt.Rows[0][Constants.COL_DATEOFCERTIFYING];
                if (dt.Rows[0][Constants.COL_DATEUPDATED] != DBNull.Value) md.dateUpdated = (DateTime)dt.Rows[0][Constants.COL_DATEUPDATED];
                if (dt.Rows[0][Constants.COL_WHOUPDATED] != DBNull.Value) md.whoUpdated = (string)dt.Rows[0][Constants.COL_WHOUPDATED];
                if (dt.Rows[0][Constants.COL_LOCATIONOFCERTIFYINGOFFICERSIGNATURE] != DBNull.Value) md.locationofCertifyingOfficerSignature = (string)dt.Rows[0][Constants.COL_LOCATIONOFCERTIFYINGOFFICERSIGNATURE];                
            }
            return md;
        }

        public DataTable GetServiceBreakbyPensionID(int PensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETSERVICEBREAKBYPENSIONID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_PENSIONID, DbType.Int32, PensionID);
            return (GetData(cmdAddEdit, null)).Tables[0];
        }
        public DataTable GetBeneficiaryByBeneficiaryID(int BeneficiaryID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYBYBENEFICIARYID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_BENEFICIARYID, DbType.Int32, BeneficiaryID);
            return (GetData(cmdAddEdit, null)).Tables[0];
        }
        public DataTable GetBeneficiaryByPensionID(int PensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYBYPENSIONID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_PENSIONID, DbType.Int32, PensionID);
            return (GetData(cmdAddEdit, null)).Tables[0];
        }
        public DataTable GetBeneficiaryFullNameByPensionID(int PensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYFULLNAMEBYPENSIONID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_PENSIONID, DbType.Int32, PensionID);
            return (GetData(cmdAddEdit, null)).Tables[0];
        }
        public DataTable GetBeneficiaryFullName4ComboByPensionID(int PensionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYFULLNAME4COMBOBYPENSIONID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_PENSIONID, DbType.Int32, PensionID);
            return (GetData(cmdAddEdit, null)).Tables[0];
        }
        public DataTable GetEvidenceType4ComboByFunctionID(int functionID)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_GETEVIDENCETYPE4COMBOBYFUNCTION);
            db.AddInParameter(cmdAddEdit, Constants.COL_LIST_FUNCTIONID, DbType.Int32, functionID);
            return (GetData(cmdAddEdit, null)).Tables[0];
        }
        public DataTable GetState()
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;

            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETSTATE);
            return GetData(cmdSelect, null).Tables[0];

        }
        public string PadCode(int code, int Len)
        {
            string lc = string.Format("{0}", code);
            for (int i = 0; i < Len - lc.Trim().Length; i++)
            {
                lc = lc + "0";
            }

            return lc;
        }
        //RETURNS THE AUTO-GENERATED APPLICANT ID  
        public int SaveBeneficiaryPersonalDetail(BeneficiaryPersonalDetail aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYBYBENEFICIARYID);

            db.AddInParameter(cmdSelect, Constants.COL_BENEFICIARY_BENEFICIARYID, DbType.Int32, aPD.beneficiaryID);
            //see if this is a new record or an update
            DataSet ds = GetData(cmdSelect, null);
            DataTable dt = ds.Tables[0];

            // DataRow row;
            if (dt.Rows.Count == 0)
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_ADDBENEFICIARYPERSONALDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.Date, aPD.dateCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, aPD.whoCreated);
            }
            else
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEBENEFICIARYPERSONALDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);
            }

            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_BENEFICIARYID, DbType.Int32, aPD.beneficiaryID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_FIRSTNAME, DbType.String, aPD.firstName);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_LASTNAME, DbType.String, aPD.lastName);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_GENDER, DbType.String, aPD.gender);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DATEOFBIRTH, DbType.Date, aPD.dateofBirth);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_MARITALSTATUS, DbType.Int32, aPD.maritalStatus);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_NATIONALID, DbType.String, aPD.nationalID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_RELATIONID, DbType.Int32, aPD.relationID);
            db.AddInParameter(cmdAddEdit, Constants.COL_LOGREF, DbType.Int32, aPD.logRef);
            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int SaveBeneficiaryDisabilityDetail(BeneficiaryDisabilityDetail aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETBENEFICIARYDISABILITY);

            db.AddInParameter(cmdSelect, Constants.COL_BENEFICIARY_DISABILITY_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdSelect, Constants.COL_BENEFICIARY_DISABILITY_BENEFICIARYID, DbType.Int32, aPD.beneficiaryID);
            //see if this is a new record or an update
            DataSet ds = GetData(cmdSelect, null);
            DataTable dt = ds.Tables[0];

            // DataRow row;
            if (dt.Rows.Count == 0)
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_ADDBENEFICIARYDISABILITYDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.Date, aPD.dateCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, aPD.whoCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_LOGREF, DbType.Int32, aPD.logRef);
            }
            else
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEBENEFICIARYDISABILITYDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);

            }

            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_BENEFICIARYID, DbType.Int32, aPD.beneficiaryID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_TYPE, DbType.Int32, aPD.disabilityType);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_DATE, DbType.Date, aPD.dateofDisability);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_DESCRIPTION, DbType.String, aPD.description);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_FILELOCATION, DbType.String, aPD.medicalFileLocation);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_EVIDENCEPRESENTED, DbType.String, aPD.evidencePresented);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_DISABILITY_EVIDENCEACCEPTED, DbType.String, aPD.evidenceAccepted);

            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int SaveMemberPersonalDetail(MemberPersonalDetail aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBERBYID);

            db.AddInParameter(cmdSelect, Constants.COL_PENSIONID, DbType.Int32, aPD.pensionID);
            //see if this is a new record or an update
            DataSet ds = GetData(cmdSelect, Constants.TABLE_APPLICANT);
            DataTable dt = ds.Tables[0];

            // DataRow row;
            if (dt.Rows.Count == 0)
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_ADDMEMBERPERSONALDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.Date, aPD.dateCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, aPD.whoCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_SCHEMEID, DbType.String, aPD.schemeID);
            }
            else
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEMEMBERPERSONALDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);

            }
            db.AddInParameter(cmdAddEdit, Constants.COL_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_PREFIX, DbType.String, aPD.prefix);
            db.AddInParameter(cmdAddEdit, Constants.COL_FIRSTNAME, DbType.String, aPD.firstName);
            db.AddInParameter(cmdAddEdit, Constants.COL_LASTNAME, DbType.String, aPD.lastName);
            db.AddInParameter(cmdAddEdit, Constants.COL_GENDER, DbType.String, aPD.gender);
            db.AddInParameter(cmdAddEdit, Constants.COL_DATEOFBIRTH, DbType.Date, aPD.dateofBirth);
            db.AddInParameter(cmdAddEdit, Constants.COL_MARITALSTATUS, DbType.Int32, aPD.maritalStatus);
            db.AddInParameter(cmdAddEdit, Constants.COL_NATIONALID, DbType.String, aPD.nationalID);
            db.AddInParameter(cmdAddEdit, Constants.COL_PERSONALNO, DbType.String, aPD.personalNo);
            db.AddInParameter(cmdAddEdit, Constants.COL_PAYROLLNUMBER, DbType.String, aPD.payrollNumber);
            db.AddInParameter(cmdAddEdit, Constants.COL_DATEOFFIRSTAPPOINTMENT, DbType.Date, aPD.dateofFirstAppointment);
            db.AddInParameter(cmdAddEdit, Constants.COL_CURRENTMDA, DbType.Int32, aPD.currentMDA);
            //db.AddInParameter(cmdAddEdit, Constants.COL_CURRENTSTATE, DbType.Int32, aPD.currentState);
            //db.AddInParameter(cmdAddEdit, Constants.COL_CURRENTGRADE, DbType.Int32, aPD.currentGrade);
            //db.AddInParameter(cmdAddEdit, Constants.COL_CURRENTWORKSTATION, DbType.Int32, aPD.currentWorkstation);            
            //db.AddInParameter(cmdAddEdit, Constants.COL_CURRENTPOSITION, DbType.String, aPD.currentPosition);
            //db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.Date, aPD.dateCreated);
            //db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
            //db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, aPD.whoCreated);
            //db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);
            db.AddInParameter(cmdAddEdit, Constants.COL_LOGREF, DbType.Int32, aPD.logRef);
            db.AddInParameter(cmdAddEdit, Constants.COL_ESTABLISHMENTNUMBER, DbType.String, aPD.establishmentNumber);

            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int SaveMemberCurrentPosition(MemberCurrentPosition aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_ADDMEMBERCURRENTPOSITION);
            db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.Date, aPD.dateCreated);
            db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, aPD.whoCreated);
            db.AddInParameter(cmdAddEdit, Constants.COL_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_EMPLOYMENTID, DbType.Int32, aPD.employmentID);
            db.AddInParameter(cmdAddEdit, Constants.COL_CURRENTGRADE, DbType.Int32, aPD.Grade);
            db.AddInParameter(cmdAddEdit, Constants.COL_CURRENTPOSITION, DbType.String, aPD.Position);
            db.AddInParameter(cmdAddEdit, Constants.COL_RSSAGENCY, DbType.Int32, aPD.rssAgency);
            db.AddInParameter(cmdAddEdit, Constants.COL_CURRENTWORKSTATION, DbType.Int32, aPD.workStation);
            db.AddInParameter(cmdAddEdit, Constants.COL_CURRENTSTATE, DbType.Int32, aPD.workState);
            db.AddInParameter(cmdAddEdit, Constants.COL_LOGREF, DbType.Int32, aPD.logRef);
            db.AddInParameter(cmdAddEdit, Constants.COL_EMP_ISACTIVE, DbType.String, aPD.isActive);

            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int SaveMemberContactDetail(MemberContactDetail aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEMEMBERCONTACTDETAIL);
            db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
            db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);
            db.AddInParameter(cmdAddEdit, Constants.COL_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_EMAIL, DbType.String, aPD.email);
            db.AddInParameter(cmdAddEdit, Constants.COL_PHONELANDLINE, DbType.String, aPD.phoneLandline);
            db.AddInParameter(cmdAddEdit, Constants.COL_PHONEMOBILE, DbType.String, aPD.phoneMobile);
            db.AddInParameter(cmdAddEdit, Constants.COL_POSTADDRESS, DbType.String, aPD.postAddress);
            db.AddInParameter(cmdAddEdit, Constants.COL_ADDRESS, DbType.String, aPD.address);
            db.AddInParameter(cmdAddEdit, Constants.COL_HOMESTATE, DbType.Int32, aPD.homeState);

            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int SaveMemberDeclaration(MemberDeclaration aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEMEMBERDECLARATION);
            db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
            db.AddInParameter(cmdAddEdit, Constants.COL_DATEOFAPPLICATION, DbType.Date, aPD.dateofApplication);
            db.AddInParameter(cmdAddEdit, Constants.COL_DATEOFCERTIFYING, DbType.Date, aPD.dateofCertifying);
            db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);
            db.AddInParameter(cmdAddEdit, Constants.COL_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_NAMEOFCERTIFYINGOFFICER, DbType.String, aPD.nameofCertifyingOfficer);
            db.AddInParameter(cmdAddEdit, Constants.COL_TITLEOFCERTIFYINGOFFICER, DbType.String, aPD.titleofCertifyingOfficer);
            db.AddInParameter(cmdAddEdit, Constants.COL_LOCATIONOFCERTIFYINGOFFICERSIGNATURE, DbType.String, aPD.locationofCertifyingOfficerSignature);

            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int SaveBeneficiaryContactDetail(BeneficiaryContactDetail aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEBENEFICIARYCONTACTDETAIL);
            db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
            db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);
            db.AddInParameter(cmdAddEdit, Constants.COL_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_BENEFICIARYID, DbType.Int32, aPD.beneficiaryID);
            db.AddInParameter(cmdAddEdit, Constants.COL_EMAIL, DbType.String, aPD.email);
            db.AddInParameter(cmdAddEdit, Constants.COL_PHONELANDLINE, DbType.String, aPD.phoneLandline);
            db.AddInParameter(cmdAddEdit, Constants.COL_PHONEMOBILE, DbType.String, aPD.phoneMobile);
            db.AddInParameter(cmdAddEdit, Constants.COL_POSTADDRESS, DbType.String, aPD.postAddress);
            db.AddInParameter(cmdAddEdit, Constants.COL_ADDRESS, DbType.String, aPD.address);
            db.AddInParameter(cmdAddEdit, Constants.COL_HOMESTATE, DbType.Int32, aPD.homeState);

            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int SaveMemberServiceBreak(MemberServiceBreak aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETSERVICEBREAKBYPENSIONIDANDSERVICEBREAKID);

            db.AddInParameter(cmdSelect, Constants.COL_MEMBERSERVICEBREAK_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdSelect, Constants.COL_MEMBERSERVICEBREAK_ID, DbType.Int32, aPD.serviceBreakID);
            //see if this is a new record or an update
            DataSet ds = GetData(cmdSelect, null);
            DataTable dt = ds.Tables[0];

            // DataRow row;
            if (dt.Rows.Count == 0)
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_ADDMEMBERSERVICEBREAK);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.Date, aPD.dateCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, aPD.whoCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_LOGREF, DbType.String, aPD.logRef);
            }
            else
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEMEMBERSERVICEBREAK);//
                db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);
            }
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_ID, DbType.Int32, aPD.serviceBreakID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_TYPE, DbType.Int32, aPD.serviceBreakType);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_START, DbType.Date, aPD.dateStart);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_END, DbType.Date, aPD.dateEnd);

            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int DeleteMemberServiceBreak(MemberServiceBreak aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_DELMEMBERSERVICEBREAK);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_ID, DbType.Int32, aPD.serviceBreakID);
            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int DeleteBeneficiary(BeneficiaryPersonalDetail aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit = db.GetStoredProcCommand(Constants.SP_DELBENEFICIARY);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_BENEFICIARY_BENEFICIARYID, DbType.Int32, aPD.beneficiaryID);


            return (ExecuteNonQuery(cmdAddEdit));
        }
        public int SaveMemberEvidenceDetail(MemberEvidenceDetail aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETMEMBEREVIDENCE);

            db.AddInParameter(cmdSelect, Constants.COL_MEMBEREVIDENCE_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdSelect, Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID, DbType.Int32, aPD.EvidenceByFunctionID);
            //see if this is a new record or an update
            DataSet ds = GetData(cmdSelect, null);
            DataTable dt = ds.Tables[0];

            // DataRow row;
            if (dt.Rows.Count == 0)
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_ADDMEMBEREVIDENCEDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.Date, aPD.dateCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, aPD.whoCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_LOGREF, DbType.Int32, aPD.logRef);
            }
            else
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEMEMBEREVIDENCEDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.Date, aPD.dateUpdated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);
            }

            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID, DbType.Int32, aPD.EvidenceByFunctionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_EVIDENCEPRESENTED, DbType.String, aPD.evidencePresented);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_EVIDENCEACCEPTED, DbType.String, aPD.evidenceAccepted);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_EVIDENCECOMMENT, DbType.String, aPD.evidenceComment);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_FILECONTENTTYPE, DbType.String, aPD.filecontentType);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_FILEORIGINALNAME, DbType.String, aPD.fileOriginalName);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_FILECONTENT, DbType.Binary, aPD.fileContent);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_FILESIZE, DbType.Int32, aPD.fileSize);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_VERIFIEDBY, DbType.String, aPD.whoVerified);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_VERIFIEDON, DbType.String, aPD.dateVerified);


            return (ExecuteNonQuery(cmdAddEdit));
        }

        public int SaveMemberServiceBreakEvidenceDetail(MemberServiceBreakEvidenceDetail aPD)
        {
            Microsoft.Practices.EnterpriseLibrary.Data.Database db = DatabaseInstance;
            DbCommand cmdAddEdit;
            DbCommand cmdSelect = db.GetStoredProcCommand(Constants.SP_GETSERVICEBREAKEVIDENCEBYPENSIONANDSERVICEBREAKID);

            db.AddInParameter(cmdSelect, Constants.COL_MEMBEREVIDENCE_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdSelect, Constants.COL_MEMBERSERVICEBREAK_ID, DbType.Int32, aPD.serviceBreakID);
            //see if this is a new record or an update
            DataSet ds = GetData(cmdSelect, null);
            DataTable dt = ds.Tables[0];

            // DataRow row;
            if (dt.Rows.Count == 0)
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_ADDMEMBERSERVICEBREAKEVIDENCEDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATECREATED, DbType.DateTime, aPD.dateCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOCREATED, DbType.String, aPD.whoCreated);
                db.AddInParameter(cmdAddEdit, Constants.COL_LOGREF, DbType.Int32, aPD.logRef);
                db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_VERIFIEDBY, DbType.String, aPD.whoVerified);
                db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_VERIFIEDON, DbType.String, aPD.dateVerified);
            }
            else
            {
                cmdAddEdit = db.GetStoredProcCommand(Constants.SP_UPDATEMEMBERSERVICEBREAKEVIDENCEDETAIL);
                db.AddInParameter(cmdAddEdit, Constants.COL_DATEUPDATED, DbType.DateTime, aPD.dateUpdated);
                db.AddInParameter(cmdAddEdit, Constants.COL_WHOUPDATED, DbType.String, aPD.whoUpdated);
                db.AddInParameter(cmdAddEdit, Constants.COL_LIST_EVIDENCEID, DbType.Int32, aPD.EvidenceID);
            }
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_PENSIONID, DbType.Int32, aPD.pensionID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBERSERVICEBREAK_ID, DbType.Int32, aPD.serviceBreakID);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_EVIDENCEPRESENTED, DbType.String, aPD.evidencePresented);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_EVIDENCEACCEPTED, DbType.String, aPD.evidenceAccepted);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_EVIDENCEDATED, DbType.Date, aPD.evidenceDated);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_SIGNEDBYTITLE, DbType.String, aPD.evidenceSignedByTitle);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_SIGNEDBYNAME, DbType.String, aPD.evidenceSignedByName);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_EVIDENCECOMMENT, DbType.String, aPD.evidenceComment);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_FILECONTENTTYPE, DbType.String, aPD.filecontentType);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_FILEORIGINALNAME, DbType.String, aPD.fileOriginalName);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_FILECONTENT, DbType.Binary, aPD.fileContent);
            db.AddInParameter(cmdAddEdit, Constants.COL_MEMBEREVIDENCE_FILESIZE, DbType.Int32, aPD.fileSize);

            return (ExecuteNonQuery(cmdAddEdit));
        }
    }
    
    public class BeneficiaryPersonalDetail
    {
        public BeneficiaryPersonalDetail()
        {
            firstName = lastName = gender = whoCreated = whoUpdated = string.Empty;

        }

        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public int beneficiaryID { set; get; }
        public string firstName { set; get; }
        public string lastName { set; get; }
        public string gender { set; get; }
        public DateTime dateofBirth { set; get; }
        public int maritalStatus { set; get; }
        public string nationalID { set; get; }
        public int relationID { set; get; }
        public DateTime dateCreated { set; get; }
        public DateTime dateUpdated { set; get; }
        public string whoCreated { set; get; }
        public string whoUpdated { set; get; }
        public int logRef { set; get; }

    }
    public class BeneficiaryContactDetail
    {
        public BeneficiaryContactDetail()
        {
            email = phoneLandline = phoneMobile = whoUpdated = address = string.Empty;

        }

        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public int beneficiaryID { set; get; }
        public string email { set; get; }
        public string phoneMobile { set; get; }
        public string phoneLandline { set; get; }
        public string postAddress { set; get; }
        public int homeState { set; get; }
        public string address { set; get; }
        public DateTime dateUpdated { set; get; }
        public string whoUpdated { set; get; }

    }
    public class BeneficiaryDisabilityDetail
    {
        public BeneficiaryDisabilityDetail()
        {
            beneficiaryfullName = description = evidenceAccepted=evidencePresented = whoCreated = whoUpdated = string.Empty;

        }

        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public int beneficiaryID { set; get; }
        public string beneficiaryfullName { set; get; }
        public string description { set; get; }
        public string evidencePresented { set; get; }
        public string evidenceAccepted { set; get; }
        public DateTime dateofDisability { set; get; }
        public int disabilityType { set; get; }
        public string medicalFileLocation { set; get; }
        public DateTime dateCreated { set; get; }
        public DateTime dateUpdated { set; get; }
        public string whoCreated { set; get; }
        public string whoUpdated { set; get; }
        public int logRef { set; get; }

    }
    public class MemberPersonalDetail
    {
        public MemberPersonalDetail()
        {
            prefix = firstName = lastName = memberFullName = gender = whoCreated = whoUpdated = string.Empty;
        }       
        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public string prefix { set; get; }
        public string firstName { set; get; }
        public string lastName { set; get; }
        public string memberFullName { set; get; }
        public string gender { set; get; }
        public DateTime dateofBirth { set; get; }
        public int maritalStatus { set; get; }
        public string nationalID { set; get; }
        public string personalNo { get; set; }
        public string payrollNumber { set; get; }
        public string establishmentNumber { set; get; }
        public DateTime dateofFirstAppointment { set; get; }
        public int currentMDA { get; set; }
        public DateTime dateCreated { set; get; }
        public DateTime dateUpdated { set; get; }
        public string whoCreated { set; get; }
        public string whoUpdated { set; get; }
        public int logRef { set; get; }  
    }

    public class MemberContactDetail
    {
        public MemberContactDetail()
        {
           firstName=lastName= email = phoneLandline = phoneMobile =  whoUpdated = address = string.Empty;

        }

        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public string firstName { set; get; }
        public string lastName { set; get; }   
        public string email { set; get; }
        public string phoneMobile { set; get; }
        public string phoneLandline { set; get; }
        public string postAddress { set; get; }
        public int homeState { set; get; }
        public string address { set; get; }
        public DateTime dateUpdated { set; get; }
        public string whoUpdated { set; get; }
        
    }
    public class MemberCurrentPosition
    {
        public MemberCurrentPosition()
        {
            Position = whoCreated  = string.Empty;

        }

        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public int employmentID { set; get; }
        public int Grade { set; get; }
        public string Position { set; get; }
        public int rssAgency { set; get; }
        public int workStation { set; get; }
        public int workState { set; get; }
        public int logRef { set; get; }
        public DateTime dateCreated { set; get; }
        public string whoCreated { set; get; }
        public string isActive { set; get; }

    }
    public class MemberServiceBreak
    {
        public MemberServiceBreak()
        {
            whoUpdated = whoCreated = string.Empty;

        }
        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public int serviceBreakID { set; get; }
        public int serviceBreakType { set; get; }
        public DateTime dateStart { set; get; }
        public DateTime dateEnd { set; get; }
        public int logRef { set; get; }
        public DateTime dateCreated { set; get; }
        public string whoCreated { set; get; }
        public DateTime dateUpdated { set; get; }
        public string whoUpdated { set; get; }
       

    }
    public class MemberDeclaration
    {
        public MemberDeclaration()
        {
            whoUpdated=locationofApplicantPhoto = locationofApplicantSignature = nameofCertifyingOfficer = titleofCertifyingOfficer = locationofCertifyingOfficerSignature = string.Empty;

        }

        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public string firstName { set; get; }
        public string lastName { set; get; }
        public string memberFullName
        {
            get { return this.firstName + " " + this.lastName; }
        }
        public string locationofApplicantPhoto { set; get; }
        public string locationofApplicantSignature { set; get; }
        public string nameofCertifyingOfficer { set; get; }
        public string titleofCertifyingOfficer { set; get; }
        public string locationofCertifyingOfficerSignature { set; get; }
        public DateTime dateUpdated { set; get; }
        public DateTime dateofApplication { set; get; }
        public DateTime dateofCertifying { set; get; }
        public string whoUpdated { set; get; }

    }
    public class MemberEvidenceDetail
    {
        public MemberEvidenceDetail()
        {
            evidenceComment = memberfullName=fileOriginalName = evidenceAccepted = evidencePresented = whoCreated = whoUpdated = string.Empty;

        }

        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public int EvidenceByFunctionID { set; get; }
        public int EvidenceTypeID { set; get; }
        public int EvidenceID { set; get; }
        public string Evidence { set; get; }
        public string evidencePresented { set; get; }
        public string evidenceAccepted { set; get; }
        public string evidenceComment { set; get; }
        public string filecontentType { set; get; }
        public string fileOriginalName { set; get; }
        public string memberfullName { set; get; }
        public byte[] fileContent { set; get; }
        public int fileSize { set; get; }
        public DateTime dateVerified { set; get; }
        public string whoVerified { set; get; }
        public DateTime dateCreated { set; get; }
        public DateTime dateUpdated { set; get; }
        public string whoCreated { set; get; }
        public string whoUpdated { set; get; }
        public int logRef { set; get; }
    }

    public class MemberServiceBreakEvidenceDetail
    {
        public MemberServiceBreakEvidenceDetail()
        {
            evidenceComment = memberfullName = evidenceAccepted = evidencePresented = whoCreated = whoUpdated = string.Empty;
        }

        public int pensionID { set; get; }
        public string schemeID { set; get; }
        public int serviceBreakID { set; get; }
        public int EvidenceID { set; get; }
        public string Evidence { set; get; }
        public DateTime? evidenceDated { get; set; }
        public string evidencePresented { set; get; }
        public string evidenceAccepted { set; get; }
        public string evidenceComment { set; get; }
        public string evidenceStorageLocation { set; get; }
        public string evidenceSignedByTitle { set; get; }
        public string evidenceSignedByName { set; get; }
        public string filecontentType { set; get; }
        public string fileOriginalName { set; get; }
        public string memberfullName { set; get; }
        public byte[] fileContent { set; get; }
        public int fileSize { set; get; }
        public DateTime dateVerified { set; get; }
        public string whoVerified { set; get; }
        public DateTime dateCreated { set; get; }
        public DateTime dateUpdated { set; get; }
        public string whoCreated { set; get; }
        public string whoUpdated { set; get; }
        public int logRef { set; get; }
    }

    public class EvidenceDetail
    {
        public EvidenceDetail()
        {           

        }
     
        public int EvidenceByFunctionID { set; get; }
        public int EvidenceTypeID { set; get; }
        public int EvidenceID { set; get; }
        public int FunctionID { set; get; }
        public string Evidence { set; get; }
        public string EvidenceType { set; get; }
        public string EvidenceFunction { set; get; }
        public string Mandatory { set; get; }        
    }


    public class MemberSalary
    {
        public MemberSalary()
        {
            whoUpdated = whoCreated = string.Empty;

        }
        public int pensionID { set; get; }
        public int month { set; get; }
        public int year { set; get; }
        public int period { set; get; }
        public string payrollNumber { set; get; }
        public decimal basicPay { set; get; }
        public decimal cola { set; get; }
        public decimal grossPay { set; get; }
        public decimal employeeDeduction { set; get; }
        public decimal employerDeduction { set; get; }
        public int monthGrade { set; get; }
        public int monthRSSAgency { set; get; }
        public int logRef { set; get; }
        public DateTime dateCreated { set; get; }
        public string whoCreated { set; get; }
        public DateTime dateUpdated { set; get; }
        public string whoUpdated { set; get; }


    }

} //PSPITS.DAL
