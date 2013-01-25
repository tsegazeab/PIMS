using System;
using System.Collections.Generic;
using System.Text;

namespace PSPITS.COMMON
{
    public class Constants
    {

        #region Stored Procedures

        public const string SP_GETDAY = "GetDay";
        public const string SP_GETMONTH = "GetMonth";
        public const string SP_GETYEAR = "GetYear";
        public const string SP_GETGENDER = "GetGender";
        public const string SP_GETMARITALSTATUS = "GetMaritalStatus";
        public const string SP_GETPREFIX = "GetPrefix";
        public const string SP_GETGRADE = "GetGrade";
        public const string SP_GETMDA = "GetMDA";
        public const string SP_GETWORKSTATION = "GetWorkstation";
        public const string SP_GETSTATE = "GetState";
        public const string SP_GETMEMBERBYID = "GetMemberByID";
        public const string SP_GETMEMBERBYSCHEMEID = "GetMemberBySchemeID";
        public const string SP_GETEMPLOYMENTBYID = "GetEmploymentByEmploymentID";
        public const string SP_GETSERVICEBREAKBYID = "GetServiceBreakByServiceBreakID";        
        public const string SP_GETMEMBERS = "GetMembers";
        public const string SP_GETSERVICEBREAKTYPE = "GetServiceBreakType";
        public const string SP_GETDISABILITYTYPE = "GetDisabilityType";      
        public const string SP_ADDMEMBERPERSONALDETAIL = "AddMemberPersonalDetail";
        public const string SP_ADDBENEFICIARYPERSONALDETAIL = "AddBeneficiaryPersonalDetail";
        public const string SP_ADDBENEFICIARYDISABILITYDETAIL = "AddBeneficiaryDisabilityDetail";
        public const string SP_ADDMEMBEREVIDENCEDETAIL = "AddMemberEvidenceDetail";
        public const string SP_ADDMEMBERSERVICEBREAKEVIDENCEDETAIL = "AddMemberServiceBreakEvidenceDetail";

        public const string SP_UPDATEBENEFICIARYPERSONALDETAIL = "UpdateBeneficiaryPersonalDetail";
        public const string SP_UPDATEBENEFICIARYDISABILITYDETAIL = "UpdateBeneficiaryDisabilityDetail";
        public const string SP_UPDATEMEMBERPERSONALDETAIL = "UpdateMemberPersonalDetail";
        public const string SP_UPDATEMEMBERCONTACTDETAIL = "UpdateMemberContactDetail";
        public const string SP_UPDATEBENEFICIARYCONTACTDETAIL = "UpdateBeneficiaryContactDetail";
        public const string SP_UPDATEMEMBERDECLARATION = "UpdateMemberDeclaration";
        public const string SP_UPDATEMEMBERSERVICEBREAK = "UpdateMemberServiceBreak";
        public const string SP_UPDATEMEMBEREVIDENCEDETAIL = "UpdateMemberEvidenceDetail";
        public const string SP_UPDATEMEMBERSERVICEBREAKEVIDENCEDETAIL = "UpdateMemberServiceBreakEvidenceDetail";
        
        public const string SP_ADDMEMBERCURRENTPOSITION = "AddMemberCurrentPosition";
        public const string SP_ADDMEMBERSERVICEBREAK = "AddMemberServiceBreak";
        public const string SP_DELMEMBERSERVICEBREAK = "DelMemberServiceBreak";
        public const string SP_DELBENEFICIARY = "DelBeneficiary";
        public const string SP_GETSERVICEBREAKBYPENSIONIDANDSERVICEBREAKID = "GetServiceBreakByPensionIDServiceBreakID";
        public const string SP_GETBENEFICIARYDISABILITYBYPENSIONIDANDBENEFICIARYID = "GetBeneficiaryDisabilityByPensionIDandBeneficiaryID";
        public const string SP_GETBENEFICIARYDISABILITYFULLNAMEBYPENSIONIDANDBENEFICIARYID = "GetBeneficiaryDisabilityFullNameByPensionIDandBeneficiaryID";
        public const string SP_GETBENEFICIARYDISABILITYFULLNAMEBYPENSIONID = "GetBeneficiaryDisabilityFullNameByPensionID";
        public const string SP_GETMEMBEREVIDENCEBYPENSIONIDANDFUNCTIONID = "GetMemberEvidenceByPensionIDandFunctionID";
        public const string SP_GETMEMBERFULLNAMEBYPENSIONID = "GetMemberFullNameByPensionID";      
        public const string SP_GETMEMBEREVIDENCEBYPENSIONIDANDEVIDENCEBYFUNCTIONID = "GetMemberEvidenceByPensionIDandEvidenceByFunctionID";
        public const string SP_GETSERVICEBREAKBYPENSIONID = "GetServiceBreakByPensionID";
        public const string SP_GETSERVICEBREAKEVIDENCEBYPENSIONID = "GetServiceBreakEvidenceByPensionID";
        public const string SP_GETSERVICEBREAKEVIDENCEBYPENSIONANDSERVICEBREAKID = "GetServiceBreakEvidenceByPensionandServiceBreakID";
        public const string SP_GETBENEFICIARYRELATIONSHIPTYPE = "GetBeneficiaryRelationshipType";
        public const string SP_GETBENEFICIARYBYBENEFICIARYID = "GetBeneficiaryByBeneficiaryID";
        public const string SP_GETBENEFICIARYBYPENSIONID = "GetBeneficiaryByPensionID";
        public const string SP_GETBENEFICIARYFULLNAMEBYPENSIONID = "GetBeneficiaryFullNameByPensionID";
        public const string SP_GETBENEFICIARYFULLNAME4COMBOBYPENSIONID = "GetBeneficiaryFullName4ComboByPensionID";
        public const string SP_GETBENEFICIARYDISABILITY = "GetBeneficiaryDisability";
        public const string SP_GETMEMBEREVIDENCE = "GetMemberEvidence";
        public const string SP_GETMEMBERDECLARATION = "GetMemberDeclaration";
        public const string SP_GETMEMBERFUNCTIONS = "GetMemberFunctions";
        public const string SP_GETMEMBERBENEFITEVENTS = "GetMemberBenefitEvents";
        public const string SP_GETEVIDENCE = "GetEvidence";
        public const string SP_GETEVIDENCETYPE = "GetEvidenceType";
        public const string SP_GETEVIDENCEFUNCTION = "GetEvidencefunction";
        public const string SP_GETMEMBERBYWHERECLAUSE = "GetMemberByWhereClause";

        public const string SP_GETMEMBERIDENTITYBYPENSIONID = "GetMemberIdentityByPensionID";
        public const string SP_GETMEMBERIDENTITYPHOTOBYID = "GetMemberIdentityPhotoByPensionID";
        public const string SP_GETMEMBERIDENTITYSIGNATUREBYID = "GetMemberIdentitySignatureByPensionID";

        public const string SP_ADDMEMBERIDENTITY = "AddMemberIdentity";
        public const string SP_UPDATEMEMBERIDENTITY = "UpdateMemberIdentity";
        
        #endregion stored procedures

        #region other constans: table names, column names etc

        public const string PARAMETER_WHERE = "Where";
        public const string TABLE_MEMBER_EMPLOYMENT = "MemberEmployment";
        public const string TABLE_MEMBER_SERVICEBREAK = "MemberEmploymentServiceBreak";
        public const string TABLE_MEMBER = "Member";
        public const string TABLE_APPLICANT = "applicant";
        public const string TABLE_BENEFICIARY = "Beneficiary";
        //HERE ARE COLUMNS THAT EXIST IN THE MEMBER TABLE - MAY ALSO BE USED BY OTHER TABLES IF SAME
        public const string COL_PENSIONID = "pensionID";
        public const string COL_SCHEMEID = "schemeID";
        public const string COL_EMPLOYMENTID = "employmentID";
        public const string COL_EMP_ISACTIVE = "isActive";
        public const string COL_PREFIX = "prefix";
        public const string COL_FIRSTNAME = "firstName";
        public const string COL_LASTNAME = "lastName";
        public const string COL_MEMBERFULLNAME = "MemberFullName";
        public const string COL_GENDER = "gender";
        public const string COL_DATEOFBIRTH = "dateofBirth";
        public const string COL_MARITALSTATUS = "maritalStatus";
        public const string COL_BANKACCOUNTID = "bankAccountID";
        public const string COL_NATIONALID = "nationalID";
        public const string COL_PERSONALNO = "PersonalNo";
        public const string COL_PAYROLLNUMBER = "payrollNumber";
        public const string COL_DATEOFFIRSTAPPOINTMENT = "dateofFirstAppointment";
        public const string COL_EMAIL = "email";
        public const string COL_PHONEMOBILE = "phoneMobile";
        public const string COL_PHONELANDLINE = "phoneLandline";
        public const string COL_POSTADDRESS = "postAddress";
        public const string COL_HOMESTATE = "homeState";
        public const string COL_ADDRESS = "address";
        public const string COL_DATEOFAPPLICATION = "dateofApplication";
        public const string COL_DATEOFCERTIFYING = "dateofCertifying";
        public const string COL_NAMEOFCERTIFYINGOFFICER = "nameofcertifyingofficer";
        public const string COL_TITLEOFCERTIFYINGOFFICER = "titleofcertifyingofficer";
        public const string COL_LOCATIONOFCERTIFYINGOFFICERSIGNATURE = "locationofCertifyingOfficerSignature";
        public const string COL_LOCATIONOFAPPLICANTSIGNATURE = "locationofApplicantSignature";
        public const string COL_LOCATIONOFAPPLICANTPHOTO = "locationofApplicantPhoto";
        public const string COL_CURRENTSTATE = "workState";
        public const string COL_CURRENTGRADE = "Grade";
        public const string COL_CURRENTWORKSTATION = "Workstation";
        public const string COL_RSSAGENCY = "rssAgency";
        public const string COL_CURRENTMDA = "currentMDA";
        public const string COL_CURRENTPOSITION = "Position";
        public const string COL_DATECREATED = "dateCreated";
        public const string COL_DATEUPDATED = "dateUpdated";
        public const string COL_WHOUPDATED = "whoUpdated";
        public const string COL_WHOCREATED = "whoCreated";
        public const string COL_LOGREF = "logref";
        public const string COL_ESTABLISHMENTNUMBER = "establishmentNumber";

        //COLUMNS THAT EXIST IN MEMBER IDENTITY TABLE
        public const string COL_MEMBERPHOTO = "MemberPhoto";
        public const string COL_MEMBERSIGNATURE = "MemberSignature";
        public const string COL_MEMBERRIGHTTHUMBPRINT = "MemberRightThumbprint";
        public const string COL_MEMBERLEFTTHUMBPRINT = "MemberLeftThumbprint";
        public const string COL_MEMBERRIGHTFOURFINGERPRINT = "MemberRightFourFingerprint";
        public const string COL_MEMBERLEFTFOURFINGERPRINT = "MemberLeftFourFingerprint";
                
        //COLUMNS USED BY STORED PROCEDURES FOR LIST ITEMS
        public const string COL_LIST_DAYID = "dayID";
        public const string COL_LIST_DAY = "day";
        public const string COL_LIST_DAYCODE = "dayCode";
        public const string COL_LIST_MONTHID = "monthID";
        public const string COL_LIST_MONTH = "Month";
        public const string COL_LIST_MONTHCODE= "monthCode";
        public const string COL_LIST_YEARID = "yearID";
        public const string COL_LIST_YEAR = "Year";
        public const string COL_LIST_YEARCODE = "yearCode";
        public const string COL_LIST_PREFIXID = "prefixID";
        public const string COL_LIST_PREFIX = "Prefix";
        public const string COL_LIST_PREFIXCODE = "prefixCode";
        public const string COL_LIST_GENDERID = "genderID";
        public const string COL_LIST_GENDER = "gender";
        public const string COL_LIST_GENDERCODE = "genderCode";
        public const string COL_LIST_MARITALID = "maritalID";
        public const string COL_LIST_MARITAL = "marital";
        public const string COL_LIST_MARITALCODE = "maritalCode";
        public const string COL_LIST_GRADEID = "gradeID";
        public const string COL_LIST_GRADE = "grade";
        public const string COL_LIST_GRADECODE = "gradeCode";
        public const string COL_LIST_MDAID = "mdaID";
        public const string COL_LIST_MDA = "MDA";
        public const string COL_LIST_MDACODE = "MDACode";
        public const string COL_LIST_WORKSTATIONID = "workstationID";
        public const string COL_LIST_WORKSTATION = "workstation";
        public const string COL_LIST_WORKSTATIONCODE = "workstationCode";
        public const string COL_LIST_STATEID = "stateID";
        public const string COL_LIST_STATE = "state";
        public const string COL_LIST_STATECODE = "stateCode";
        //EVIDENCE TYPE
        public const string COL_LIST_EVIDENCETYPEID = "evidenceTypeID";
        public const string COL_LIST_EVIDENCETYPE = "evidenceType";
        public const string COL_LIST_EVIDENCETYPECODE = "evidencetypeCode";
        //EVIDENCE
        public const string COL_LIST_EVIDENCEID = "evidenceid";
        public const string COL_LIST_EVIDENCE = "evidence";
        public const string COL_LIST_EVIDENCECODE = "evidencecode";
        //FUNCTION TYPE
        public const string COL_LIST_FUNCTIONID = "functionid";
        public const string COL_LIST_FUNCTION = "functionText";
        public const string COL_LIST_FUNCTIONCODE = "functioncode";
        public const string COL_LIST_MANDATORY = "mandatory";
        //MEMBER BENEFIT EVENT
        public const string COL_LIST_EVENTID = "eventID";
        public const string COL_LIST_EVENTNAME = "eventName";
        public const string COL_LIST_EVENTCODE = "eventCode";
        //
        public const string COL_LIST_SERVICEBREAKTYPEID = "servicebreakTypeID";
        public const string COL_LIST_SERVICEBREAKTYPE = "servicebreakType";
        public const string COL_LIST_SERVICEBREAKTYPECODE = "servicebreaktypeCode";
        //
        public const string COL_LIST_DISABILITYTYPEID = "disabilityTypeID";
        public const string COL_LIST_DISABILITYTYPE = "disabilityType";
        public const string COL_LIST_DISABILITYTYPECODE = "disabilitytypeCode";
        //
        public const string COL_LIST_BENEFICIARYRELATIONSHIPTYPEID = "relationshipID";
        public const string COL_LIST_BENEFICIARYRELATIONSHIP = "relationship";
        public const string COL_LIST_BENEFICIARYRELATIONSHIPCODE = "relationshipcode";
        //
        public const string COL_MEMBERSERVICEBREAK_ID = "servicebreakID";
        public const string COL_MEMBERSERVICEBREAK_TYPE = "servicebreakType";
        public const string COL_MEMBERSERVICEBREAK_TYPEID = "servicebreakTypeID";
        public const string COL_MEMBERSERVICEBREAK_PENSIONID = "PensionID";
        public const string COL_MEMBERSERVICEBREAK_START = "dateStart";
        public const string COL_MEMBERSERVICEBREAK_END = "dateEnd";
        //
        public const string COL_MEMBEREVIDENCE_PENSIONID = "pensionID";
        public const string COL_MEMBEREVIDENCE_MEMBERFULLNAME = "memberfullName";
        public const string COL_MEMBEREVIDENCE_EVIDENCEBYFUNCTIONID = "EvidenceByFunctionID";
        public const string COL_MEMBEREVIDENCE_EVIDENCEPRESENTED = "evidencePresented";
        public const string COL_MEMBEREVIDENCE_EVIDENCEACCEPTED = "evidenceAccepted";
        public const string COL_MEMBEREVIDENCE_EVIDENCEDATED = "evidenceDated";
        public const string COL_MEMBEREVIDENCE_SIGNEDBYTITLE = "evidenceSignedByTitle";
        public const string COL_MEMBEREVIDENCE_SIGNEDBYNAME = "evidenceSignedByName";
        public const string COL_MEMBEREVIDENCE_EVIDENCECOMMENT = "evidenceComment";
        public const string COL_MEMBEREVIDENCE_FILECONTENTTYPE = "filecontentType";
        public const string COL_MEMBEREVIDENCE_FILEORIGINALNAME = "fileoriginalName";
        public const string COL_MEMBEREVIDENCE_FILECONTENT = "fileContent";
        public const string COL_MEMBEREVIDENCE_FILESIZE = "fileSize";
        public const string COL_MEMBEREVIDENCE_VERIFIEDBY = "whoVerified";
        public const string COL_MEMBEREVIDENCE_VERIFIEDON = "dateVerified";
        public const string COL_MEMBEREVIDENCE_EVIDENCEID = "evidenceID";
        public const string COL_MEMBEREVIDENCE_EVIDENCETYPEID = "evidencetypeID";
        public const string COL_MEMBEREVIDENCE_EVIDENCE = "evidence";
     //
        public const string COL_BENEFICIARY_PENSIONID = "pensionID";
        public const string COL_BENEFICIARY_BENEFICIARYID = "beneficiaryID";
        public const string COL_BENEFICIARY_DATEOFBIRTH = "dateofBirth";
        public const string COL_BENEFICIARY_MARITALSTATUS = "maritalStatus";
        public const string COL_BENEFICIARY_GENDER = "gender";
        public const string COL_BENEFICIARY_RELATIONID = "relationID";
        public const string COL_BENEFICIARY_NATIONALID = "nationalID";
        public const string COL_BENEFICIARY_FIRSTNAME = "firstName";
        public const string COL_BENEFICIARY_LASTNAME = "lastName";
        public const string COL_BENEFICIARY_EMAIL = "email";
        public const string COL_BENEFICIARY_PHONEMOBILE = "phoneMobile";
        public const string COL_BENEFICIARY_PHONELANDLINE = "phoneLandline";
        public const string COL_BENEFICIARY_POSTADDRESS = "postAddress";
        public const string COL_BENEFICIARY_HOMESTATE = "homeState";
        public const string COL_BENEFICIARY_ADDRESS = "address";
        public const string COL_BENEFICIARY_FULLNAME = "BeneficiaryFullName";
        //
        public const string COL_BENEFICIARY_DISABILITY_PENSIONID = "pensionID";
        public const string COL_BENEFICIARY_DISABILITY_BENEFICIARYID = "beneficiaryID";
        public const string COL_BENEFICIARY_DISABILITY_DATE = "dateofDisability";
        public const string COL_BENEFICIARY_DISABILITY_DESCRIPTION = "description";
        public const string COL_BENEFICIARY_DISABILITY_EVIDENCEPRESENTED = "hasEvidence";
        public const string COL_BENEFICIARY_DISABILITY_EVIDENCEACCEPTED = "evidenceAcceptable";
        public const string COL_BENEFICIARY_DISABILITY_FULLNAME = "BeneficiaryFullName";
        public const string COL_BENEFICIARY_DISABILITY_TYPE = "disabilityType";
        public const string COL_BENEFICIARY_DISABILITY_FILELOCATION = "medicalFileLocation";
        public const string SP_GETEVIDENCETYPE4COMBOBYFUNCTION = "GetEvidenceType4ComboByFunction";
               
        #endregion

        #region Month Codes

        public static string[] MONTH_CODES = new string[] { "", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L" };

        public static string[] MONTHS = new string[] { "", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };

        #endregion

        #region .Benefit Calculation Constants.

        //TO BE PICKED FROM DATABASE

        public const decimal JUNE_2012_SALARY = 2475;
        public static DateTime JULY_FIRST_2012 { get { return new DateTime(2012, 7, 1); } }
        public static DateTime JULY_FIRST_CURRENT_YEAR { get { return new DateTime(DateTime.Today.Year, 7, 1); } }
        public static DateTime JUNE_30_CURRENT_YEAR { get { return new DateTime(DateTime.Today.Year, 6, 30); } }
        public static DateTime DEC_31_1952 { get { return new DateTime(1952, 12, 31); } }
        public static DateTime DEC_01_1957 { get { return new DateTime(1957, 12, 1); } }
        public const double NUMBER_OF_DAYS_IN_YEAR = 365.25;
        public const double ONE_POINT_FIVE_PERCENT = 0.015;
        public const int NUMBER_OF_MONTHS_IN_YEAR = 12;
        public const double NUMBER_OF_DAYS_IN_MONTH = 30.4375;

        #endregion

        #region .List Id Values.

        public const int DATE_OF_BIRTH_EVIDENCEID = 1250;
        public const int DATE_OF_APPOINTMENT_EVIDENCEID = 1251;
        public const string YES = "Yes";
        public const string NO = "No";
        public const int FUNCTION_MEMBERSHIP_REGISTRATION = 1277;
        public const int FUNCTION_BENEFICIARY_REGISTRATION = 1278;
        public const int FUNCTION_MEMBER_SERVICE_BREAKS = 1281;

        public const int BENEFIT_RELATIONSHIP_CHILD = 1239;
        public const int BENEFIT_RELATIONSHIP_SPOUSE = 1240;
        public const int BENEFIT_RELATIONSHIP_PARENT = 1241;

        //MemberBenefitEvents
        /// <summary>
        /// Employee Terminated/Resigned/Retired
        /// </summary>
        public const int EMPLOYEE_TERMINATED_RESIGNED_RETIRED = 1284;
        /// <summary>
        /// Employee Disabled
        /// </summary>
        public const int EMPLOYEE_DISABLED = 1285;

        #endregion

        #region .string formats.

        public const string DATE_FORMAT = "dd/MM/yyyy";
        public const string NUMBER_FORMAT_NO_DECIMAL = "#,##0";
        public const string NUMBER_FORMAT_TWO_DECIMAL = "#,##0.00";

        #endregion

    }

    public enum PensionType
    { 
        PesionableAgePension = 100,
        EarlyPension =101,
        LatePension = 102,
        DeathInServicePension = 103,
        TerminationLumpSumAmount = 104,
        LessThanTwoYears = 105,
        DisabilityPension = 106
    }
}
