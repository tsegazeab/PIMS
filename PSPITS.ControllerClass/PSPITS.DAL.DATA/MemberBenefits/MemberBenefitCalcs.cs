using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Linq.Expressions;
using PSPITS.COMMON;
using PSPITS.MODEL;
using PSPITS.DAL.DATA.Membership;

namespace PSPITS.DAL.DATA.MemberBenefits
{
    public class MemberBenefitCalcs
    {
        private MembershipService membershipService;

        public MemberBenefitCalcs()
        {
            membershipService = new MembershipService();
        }

        public MemberBenefit GetMemberBenefit(MemberBenefitRequest mbr)
        {   
            MemberBenefit mb = this.GetMemberBenefitByPensionID(mbr.Member.pensionID);
            if (mb != null)
                return mb;
            mb = new MemberBenefit();
            FinancialYear currentFY = membershipService.GetCurrentFinancialYear();
            List<MemberEmploymentServiceBreak> serviceBreaks = GetServiceBreaksPriorToJuly2012(mbr.Member.pensionID);
            mb.Member = mbr.Member;
            mb.GrossAnnualPensionUptoLastFY = 0;
            mb.MemberServiceBreaks = ConstructMemberServiceBreakList(serviceBreaks);
            mb.NumberOfServiceYears = CalcuateYearsInServicePriorTo(mb.Member, Constants.JULY_FIRST_2012);
            mb.NumberOfServiceBreakYears = CalculateServiceBreakYears(serviceBreaks);
            mb.NumberOfPensionableYears = mb.NumberOfServiceYears - mb.NumberOfServiceBreakYears;
            mb.ServiceEndDate = mbr.ServiceEndDate;
            mb.CurrentMDA = this.GetMDAName(mb.Member.currentMDA);

            mb.MemberAge = this.GetMemberAge(mb.Member.dateofBirth.Value, mb.ServiceEndDate.Value);
            //To be picked from table
            mb.AverageCivilServiceSalaryIncrease = currentFY != null && currentFY.AverageCivilServiceSalaryIncrease.HasValue ? currentFY.AverageCivilServiceSalaryIncrease.Value : 3.25;
            if (currentFY != null) mb.FinancialYearId = currentFY.FinancialYearId;
            //This will eventually be Calculate/Get Gross Annual Pension up to Last Financial Year
            CalculateGrossAnnualPensionUpToJuly2012(mb);
            mb.PensionTypeEnum = DetermineTypeOfPension(mbr, mb);
            mb.PensionType = (int)mb.PensionTypeEnum;
            SetPensionTypeString(mb);
            this.CalculateBenefits(mbr, mb, currentFY);
            return mb;
        }

        private string GetMDAName(int? mdaId)
        {
            using (var context = new PSPITSEntities())
            {
                return context.MdaListings.FirstOrDefault(m => m.mdaID == mdaId).mdaName;
            }
        }
        
        private static void SetPensionTypeString(MemberBenefit mb)
        {
            switch (mb.PensionTypeEnum)
            {
                case PensionType.PesionableAgePension:
                    mb.PensionTypeString = "Pensionable Age Retirement";
                    break;
                case PensionType.EarlyPension:
                    mb.PensionTypeString = "Early Pension";
                    break;
                case PensionType.LatePension:
                    mb.PensionTypeString = "Late Pension";
                    break;
                case PensionType.DeathInServicePension:
                    mb.PensionTypeString = "Death In Service Pension";
                    break;
                case PensionType.TerminationLumpSumAmount:
                    mb.PensionTypeString = "Termination Lump Sum Amount";
                    break;
                case PensionType.LessThanTwoYears:
                    mb.PensionTypeString = "Less Than Two Years In Service";
                    break;
                case PensionType.DisabilityPension:
                    mb.PensionTypeString = "Disability Pension";
                    break;
                default:
                    mb.PensionTypeString = "";
                    break;
            }
        }

        public MemberBenefit GetMemberBenefitByPensionID(int pensionId)
        {
            using (var context = new PSPITSEntities())
            {
                MemberBenefit mb = context.MemberBenefits.FirstOrDefault(m => m.MemberId == pensionId);
                if (mb == null)
                    return mb;

                mb.MemberServiceBreaks = ConstructMemberServiceBreakList(GetServiceBreaksPriorToJuly2012(pensionId));
                mb.MemberAge = this.GetMemberAge(mb.Member.dateofBirth.Value, mb.ServiceEndDate.Value);
                mb.PensionableAge = this.DeterminePensionableAge(mb.Member.dateofBirth.Value);
                if (mb.FirstOfFollowingMonth.HasValue && mb.StandardRetirementDate.HasValue)
                    mb.ProjectedRemainingServiceAge = this.GetDateDiff(mb.FirstOfFollowingMonth.Value, mb.StandardRetirementDate.Value);
                mb.PensionTypeEnum = (PensionType)mb.PensionType;
                mb.CurrentMDA = context.MdaListings.FirstOrDefault(m => m.mdaID == mb.Member.currentMDA).mdaName;

                SetPensionTypeString(mb);
                mb.MonthlySalaries = this.GetMemberSalaryListForFinancialYear(mb.Member, mb.FinancialYear);
                if (mb.PensionTypeEnum == PensionType.DeathInServicePension)
                    ComputeSurvivorBenefits(mb);
                return mb;
            }
        }

        public void SaveMemberBenefit(MemberBenefit mb)
        {
            bool isNew = false;
            using (var context = new PSPITSEntities())
            {
                MemberBenefit memberBenefit = context.MemberBenefits.FirstOrDefault(p => p.MemberId == mb.MemberId);
                if (memberBenefit == null)
                {
                    memberBenefit = new MemberBenefit();
                    isNew = true;
                }
                memberBenefit.AnnualGrossPensionEntitlement = mb.AnnualGrossPensionEntitlement;
                memberBenefit.AThirdAnnualPension = mb.AThirdAnnualPension;
                memberBenefit.AverageCivilServiceSalaryIncrease = mb.AverageCivilServiceSalaryIncrease;
                memberBenefit.BenefitOption = mb.BenefitOption;
                memberBenefit.CommutationFactor = mb.CommutationFactor;
                memberBenefit.EarlyRetirementReductionAdjustment = mb.EarlyRetirementReductionAdjustment;
                memberBenefit.FinalMonthGrossSalary = mb.FinalMonthGrossSalary;
                memberBenefit.FinancialYearEndDate = mb.FinancialYearEndDate;
                memberBenefit.FinancialYearId = mb.FinancialYearId;
                memberBenefit.FirstOfFollowingMonth = mb.FirstOfFollowingMonth;
                memberBenefit.GrossAnnualPensionUptoLastFY = mb.GrossAnnualPensionUptoLastFY;
                memberBenefit.GrossPensionAccruedInRetirementYear = mb.GrossPensionAccruedInRetirementYear;
                memberBenefit.GrossSalaryInRetirementYear = mb.GrossSalaryInRetirementYear;
                memberBenefit.LateRetirementReductionAdjustment = mb.LateRetirementReductionAdjustment;
                memberBenefit.LumpSumCommutation = mb.LumpSumCommutation;
                memberBenefit.LumpSumPension = mb.LumpSumPension;
                memberBenefit.MemberId = mb.MemberId;
                memberBenefit.MonthlyPension = mb.MonthlyPension;
                memberBenefit.MonthsBeyondPensionableAge = mb.MonthsBeyondPensionableAge;
                memberBenefit.MonthsToPensionableAge = mb.MonthsToPensionableAge;
                memberBenefit.NetAnnualPension = mb.NetAnnualPension;
                memberBenefit.NoCommutation = mb.NoCommutation;
                memberBenefit.NumberOfPensionableYears = mb.NumberOfPensionableYears;
                memberBenefit.NumberOfServiceBreakYears = mb.NumberOfServiceBreakYears;
                memberBenefit.NumberOfServiceYears = mb.NumberOfServiceYears;
                memberBenefit.PensionAccrualUpdateForCurrentFY = mb.PensionAccrualUpdateForCurrentFY;
                memberBenefit.PensionType = mb.PensionType;
                memberBenefit.ProjectedAnnualPension = mb.ProjectedAnnualPension;
                memberBenefit.ProjectedRemainingService = mb.ProjectedRemainingService;
                memberBenefit.ProjectedRemainingServiceAge = mb.ProjectedRemainingServiceAge;
                memberBenefit.ServiceEndDate = mb.ServiceEndDate;
                memberBenefit.StandardRetirementDate = mb.StandardRetirementDate;
                memberBenefit.TotalAccruedPension = mb.TotalAccruedPension;
                memberBenefit.UpdatedGrossAnnualPension = mb.UpdatedGrossAnnualPension;
                if (isNew)
                    context.MemberBenefits.AddObject(memberBenefit);
                context.SaveChanges();
            }
        }

        private double GetCommutationFactor(MemberAge memberAge)
        {
            using (var context = new PSPITSEntities())
            {
                var commutationFactor = context.CommutationFactors.FirstOrDefault(c => c.PensionableAge == memberAge.Years);
                if (commutationFactor != null)
                    return commutationFactor.Factor;
                if (memberAge.Years < 55)
                    return context.CommutationFactors.FirstOrDefault(c => c.PensionableAge == 55).Factor;
                return context.CommutationFactors.FirstOrDefault(c => c.PensionableAge == 70).Factor;
            }
        }

        public MemberBenefitEligibility GetMemberBenefitEligibility(MemberBenefitRequest mbr)
        {
            MemberBenefitEligibility mbEligibility = new MemberBenefitEligibility();
            mbEligibility.Member = mbr.Member;
            mbEligibility.AnnualPensionProcessedCheck = true;
            mbEligibility.DoACheck = mbr.Member.dateoffirstAppointment.HasValue;
            mbEligibility.DoAEvidenceCheck = this.DateOfAppointmentEvidenceExists(mbr.Member.pensionID);
            mbEligibility.DoBCheck = mbr.Member.dateofBirth.HasValue;
            mbEligibility.DoBEvidenceCheck = this.DateOfBirthEvidenceExits(mbr.Member.pensionID);
            MemberAge yearsInService = this.GetYearsOfMemberInService(mbr);
            mbEligibility.MoreThanTwoYears = yearsInService.Years >= 2;
            mbEligibility.ServiceBreakEvidenceCheck = this.AllServiceBreaksEvidenceExists(mbr.Member.pensionID);
            return mbEligibility;
        }

        #region .private methods Gross Annual Pension Accrued.

        /// <summary>
        /// Get Service Breaks prior to July 2012
        /// </summary>
        /// <param name="pensionId"></param>
        /// <returns></returns>
        private List<MemberEmploymentServiceBreak> GetServiceBreaksPriorToJuly2012(int pensionId)
        {
            using (var context = new PSPITSEntities())
            {                
                return context.MemberEmploymentServiceBreaks.Where(s => s.pensionID == pensionId && s.dateStart.Value < Constants.JULY_FIRST_2012).OrderBy(s => s.dateStart).ToList();
            }
        }

        /// <summary>
        /// Construct list of service breaks for display
        /// </summary>
        /// <param name="msb"></param>
        /// <returns></returns>
        private List<MODEL.MemberServiceBreak> ConstructMemberServiceBreakList(List<MemberEmploymentServiceBreak> msb)
        {
            List<MODEL.MemberServiceBreak> serviceBreaks = new List<MODEL.MemberServiceBreak>();
            int i=1;
            foreach (var serviceBreak in msb)
            {
                serviceBreaks.Add(new MODEL.MemberServiceBreak
                {
                    Name = "Service Break " + i++,
                    StartDate = serviceBreak.dateStart.Value.ToString("dd/MM/yyyy"),
                    EndDate = serviceBreak.dateEnd.Value.ToString("dd/MM/yyyy")
                });
            }
            return serviceBreaks;
        }

        /// <summary>
        /// Calculate years in service prior to July 2012
        /// </summary>
        /// <param name="member"></param>
        /// <param name="endDate">Date to stop calculating years in service</param>
        /// <returns></returns>
        private double CalcuateYearsInServicePriorTo(Member member, DateTime endDate)
        {
            TimeSpan duration = endDate - member.dateoffirstAppointment.Value;
            return duration.TotalDays / Constants.NUMBER_OF_DAYS_IN_YEAR;
        }

        private double GetDateDiffInYears(DateTime date1, DateTime date2)
        {
            TimeSpan duration = date2 - date1;
            return duration.TotalDays / Constants.NUMBER_OF_DAYS_IN_YEAR;
        }

        /// <summary>
        /// Calculate service break years prior to July 2012
        /// </summary>
        /// <param name="serviceBreaks"></param>
        /// <returns></returns>
        private double CalculateServiceBreakYears(List<MemberEmploymentServiceBreak> serviceBreaks)
        {
            double totalDays = 0;
            TimeSpan duration;
            foreach (var serviceBreak in serviceBreaks)
            {
                duration = serviceBreak.dateEnd.Value - serviceBreak.dateStart.Value;
                totalDays += duration.TotalDays;
            }
            return totalDays / Constants.NUMBER_OF_DAYS_IN_YEAR;
        }

        /// <summary>
        /// Get Member by Pension Id
        /// </summary>
        /// <param name="pensionId"></param>
        /// <returns></returns>
        private Member GetMemberByPensionId(int pensionId)
        {
            using (var context = new PSPITSEntities())
            {
                return context.Members.FirstOrDefault(m => m.pensionID == pensionId);
            }
        }

        /// <summary>
        /// Calculate Members Annual Gross Pension Up To June 30, 2012
        /// </summary>
        /// <param name="mb"></param>
        private void CalculateGrossAnnualPensionUpToJuly2012(MemberBenefit mb)
        {
            decimal june2012Salary; 
            using (var context = new PSPITSEntities())
            {
                var salary = context.MemberSalaries.FirstOrDefault(s => s.pensionID == mb.Member.pensionID && s.month == 6 && s.year == 2012);
                if (salary != null)
                    june2012Salary = salary.grossPay.Value;
                else
                    june2012Salary = Constants.JUNE_2012_SALARY;//Just for testing
            }
            mb.GrossAnnualPensionUptoLastFY = (decimal)(Constants.ONE_POINT_FIVE_PERCENT * (double)june2012Salary * Constants.NUMBER_OF_MONTHS_IN_YEAR * mb.NumberOfPensionableYears);
        }

        private MemberAge DeterminePensionableAge(DateTime dob)
        {
            if (dob <= Constants.DEC_31_1952)
                return new MemberAge { Years = 60 };
            if (dob >= Constants.DEC_01_1957)
                return new MemberAge { Years = 65 };
            int yearDiff = dob.Year - Constants.DEC_31_1952.Year;
            yearDiff--;
            return new MemberAge { Years = 60 + yearDiff, Months = dob.Month };
        }

        /// <summary>
        /// This applies to Terminal Benefits
        /// </summary>
        /// <param name="ageDiff"></param>
        /// <returns></returns>
        private DateTime DetermineStandardRetirementDate(MemberBenefit mb)
        {
            DateTime retirementDate = mb.Member.dateofBirth.Value;
            retirementDate = retirementDate.AddYears(mb.PensionableAge.Years);
            retirementDate = retirementDate.AddMonths(mb.PensionableAge.Months);
            retirementDate = retirementDate.AddDays(mb.PensionableAge.Days);
            return retirementDate;
        }

        /// <summary>
        /// Calculate age 
        /// </summary>
        /// <param name="dob"></param>
        /// <returns></returns>
        private MemberAge GetMemberAge(DateTime dob, DateTime dateOfRetirement)
        {
            TimeSpan ts = dateOfRetirement - dob;
            int days;
            MemberAge age = new MemberAge();
            age.Years = (int)(ts.Days / Constants.NUMBER_OF_DAYS_IN_YEAR);
            //get number of extra days
            days = (int)(ts.Days - (age.Years * Constants.NUMBER_OF_DAYS_IN_YEAR));
            age.Months = (int)(days / Constants.NUMBER_OF_DAYS_IN_MONTH);
            age.Days = (int)(days - (age.Months * Constants.NUMBER_OF_DAYS_IN_MONTH));
            return age;
        }

        /// <summary>
        /// Assumes date2 > date1
        /// </summary>
        /// <param name="date1"></param>
        /// <param name="date2"></param>
        /// <returns></returns>
        private MemberAge GetDateDiff(DateTime date1, DateTime date2)
        {
            TimeSpan ts = date2 - date1;
            int days;
            MemberAge age = new MemberAge();
            age.Years = (int)(ts.Days / Constants.NUMBER_OF_DAYS_IN_YEAR);
            //get number of extra days
            days = (int)(ts.Days - (age.Years * Constants.NUMBER_OF_DAYS_IN_YEAR));
            age.Months = (int)(days / Constants.NUMBER_OF_DAYS_IN_MONTH);
            age.Days = (int)(days - (age.Months * Constants.NUMBER_OF_DAYS_IN_MONTH));
            return age;
        }

        /// <summary>
        /// Get the number of years, months and days (Age) the member has been in Service up to the time of service termination
        /// </summary>
        /// <param name="member"></param>
        /// <returns></returns>
        private MemberAge GetYearsOfMemberInService(MemberBenefitRequest mbr)
        {
            TimeSpan ts = mbr.ServiceEndDate - mbr.Member.dateoffirstAppointment.Value;
            int days;
            MemberAge age = new MemberAge();
            age.Years = (int)(ts.Days / Constants.NUMBER_OF_DAYS_IN_YEAR);
            //get number of extra days
            days = (int)(ts.Days - (age.Years * Constants.NUMBER_OF_DAYS_IN_YEAR));
            age.Months = (int)(days / Constants.NUMBER_OF_DAYS_IN_MONTH);
            age.Days = (int)(days - (age.Months * Constants.NUMBER_OF_DAYS_IN_MONTH));
            return age;
        }

        #endregion

        #region .private methods Member Eligibility Checks.

        private bool DateOfBirthEvidenceExits(int pensionId)
        {
            using (var context = new PSPITSEntities())
            {
                var function = context.EvidenceByFunctions.FirstOrDefault(e => e.evidencetypeID == Constants.DATE_OF_BIRTH_EVIDENCEID);
                var memberEvidence = context.MemberEvidences.FirstOrDefault(m => m.PensionID == pensionId && m.EvidenceByFunctionID == function.EvidenceByFunctionID
                     && m.evidencePresented == Constants.YES && m.evidenceAccepted == Constants.YES);
                return memberEvidence != null;
            }
        }

        private bool DateOfAppointmentEvidenceExists(int pensionId)
        {
            using (var context = new PSPITSEntities())
            {
                var function = context.EvidenceByFunctions.FirstOrDefault(e => e.evidencetypeID == Constants.DATE_OF_APPOINTMENT_EVIDENCEID);
                var memberEvidence = context.MemberEvidences.FirstOrDefault(m => m.PensionID == pensionId && m.EvidenceByFunctionID == function.EvidenceByFunctionID
                     && m.evidencePresented == Constants.YES && m.evidenceAccepted == Constants.YES);
                return memberEvidence != null;
            }
        }

        private bool AllServiceBreaksEvidenceExists(int pensionId)
        {
            bool evidenceExists = true;
            using (var context = new PSPITSEntities())
            {
                var serviceBreaks = context.MemberEmploymentServiceBreaks.Where(s => s.pensionID == pensionId).ToList();
                foreach (var serviceBreak in serviceBreaks)
                {
                    var sbEvidence = context.MemberEmploymentServiceBreakEvidences.FirstOrDefault(e => e.servicebreakID == serviceBreak.servicebreakID &&
                        e.evidencePresented == Constants.YES && e.evidenceAccepted == Constants.YES);
                    evidenceExists = sbEvidence != null;
                    if (!evidenceExists)
                        return evidenceExists;
                }
                return evidenceExists;
            }
        }

        private PensionType DetermineTypeOfPension(MemberBenefitRequest mbr, MemberBenefit mb)
        {
            MemberAge ageDiff;
            mb.PensionableAge = this.DeterminePensionableAge(mbr.Member.dateofBirth.Value);
            mb.CommutationFactor = this.GetCommutationFactor(mb.MemberAge);

            //Check if Disability was selected or if is DeathInService
            if (mbr.EventType >= 2)
            {
                mb.StandardRetirementDate = DetermineStandardRetirementDate(mb);                
                int day = mbr.ServiceEndDate.Day, month = mbr.ServiceEndDate.Month, year = mbr.ServiceEndDate.Year;
                if (month < 12)
                {
                    month++;
                }
                else
                {
                    month = 1;
                    year++;
                }
                mb.FirstOfFollowingMonth = new DateTime(year, month, 1);
                mb.ProjectedRemainingServiceAge = this.GetDateDiff(mb.FirstOfFollowingMonth.Value , mb.StandardRetirementDate.Value);

                return mbr.EventType == 2 ? PensionType.DisabilityPension : PensionType.DeathInServicePension;
            }          

            int ageCompare = mb.MemberAge.Compare(mb.PensionableAge);
            if (ageCompare == 0)
                return PensionType.PesionableAgePension;
            if (ageCompare > 0)
            {
                //Complete months beyond pensionable age
                ageDiff = mb.MemberAge - mb.PensionableAge;
                mb.MonthsBeyondPensionableAge = (ageDiff.Years * 12) + ageDiff.Months;
                return PensionType.LatePension;
            }
            //Complete months to pensionable age -- applies to early pension and termination lump sum
            ageDiff = mb.PensionableAge - mb.MemberAge;
            mb.MonthsToPensionableAge = (ageDiff.Years * 12) + ageDiff.Months;

            if (IsEarlyPension(mbr, mb.MemberAge, mb.PensionableAge))
            {                
                return PensionType.EarlyPension;
            }
            if (IsTerminationLumpSum(mbr, mb.MemberAge, mb.PensionableAge))
            {
                mb.StandardRetirementDate = DetermineStandardRetirementDate(mb);
                return PensionType.TerminationLumpSumAmount;
            }
            return PensionType.LessThanTwoYears;           
        }

        private bool IsEarlyPension(MemberBenefitRequest mbr, MemberAge memberAge, MemberAge memberPensionableAge)
        {            
            //ageDiff refers to the years/age left to attain pensionable age;
            MemberAge ageDiff = memberPensionableAge - memberAge;
            if (ageDiff.Years>0 && ageDiff.Years < 10)
                return true;
            if (ageDiff.Years == 0 && (ageDiff.Months > 0 || ageDiff.Days > 0))
                return true;
            if (ageDiff.Years == 10 && ageDiff.Months == 0 && ageDiff.Days == 0)
                return true;
            return false;
        }

        private bool IsTerminationLumpSum(MemberBenefitRequest mbr, MemberAge memberAge, MemberAge memberPensionableAge)
        {
            //ageDiff refers to the years/age left to attain pensionable age;
            MemberAge ageDiff = memberPensionableAge - memberAge;
            if (ageDiff.Years > 10)
                return true;
            if (ageDiff.Years == 10 && (ageDiff.Months > 0 || ageDiff.Days > 0))
                return true;
            return false;
        }

        #endregion

        #region .private methods Member Benefits Calculations.

        private void CalculateBenefits(MemberBenefitRequest mbr, MemberBenefit mb, FinancialYear currentYear)
        { 
            //Get Annual Pension Accrued upto last FY. Ideally this will be picked from the DB but for now we calculate it and it is contained in the 
            //MemberBenefit object
            //Get MonthlySalaries for the Retiring FY
            //mb.MonthlySalaries = this.GetMemberSalaryListForCurrentFY(mbr);
            int year = DateTime.Today.Month >= 7 ? DateTime.Today.Year : DateTime.Today.Year - 1;
            //Use this for Calculations below especially No Commutation, Lumpsum etc
            decimal FinalGrossPension = 0;
            mb.MonthlySalaries = this.GetMemberSalaryListForFinancialYear(mb.Member, currentYear);
            mb.GrossSalaryInRetirementYear = 0;
            foreach (MonthlySalary ms in mb.MonthlySalaries)
            {
                mb.GrossSalaryInRetirementYear += ms.GrossSalary;
            }

            //BENEFIT CALCULATIONS
            //Pension Accrual Update for Current Financial Year
            mb.PensionAccrualUpdateForCurrentFY = (decimal)(mb.AverageCivilServiceSalaryIncrease / 100) * mb.GrossAnnualPensionUptoLastFY;
            //Updated Gross Annual Pension
            mb.UpdatedGrossAnnualPension = mb.GrossAnnualPensionUptoLastFY + mb.PensionAccrualUpdateForCurrentFY;
            //Gross Pension Accrued in Retirement Year --> fixed 1.5 rate
            mb.GrossPensionAccruedInRetirementYear = (decimal)(1.5 / 100) * mb.GrossSalaryInRetirementYear;
            //Total Accrued Annual Pension
            mb.TotalAccruedPension = mb.UpdatedGrossAnnualPension + mb.GrossPensionAccruedInRetirementYear;
            FinalGrossPension = mb.TotalAccruedPension;
            //Early/Late Retirement Reduction/Increase Adjustment
            if (mb.PensionTypeEnum == PensionType.EarlyPension)
            {
                mb.EarlyRetirementReductionAdjustment = (decimal)(0.5 / 100) * mb.MonthsToPensionableAge * mb.TotalAccruedPension;
                mb.AnnualGrossPensionEntitlement = mb.TotalAccruedPension - mb.EarlyRetirementReductionAdjustment;
                FinalGrossPension = mb.AnnualGrossPensionEntitlement;
            }
            else if (mb.PensionTypeEnum == PensionType.LatePension)
            {
                mb.LateRetirementReductionAdjustment = (decimal)(0.5 / 100) * mb.MonthsBeyondPensionableAge * mb.TotalAccruedPension;
                mb.AnnualGrossPensionEntitlement = mb.TotalAccruedPension + mb.LateRetirementReductionAdjustment;
                FinalGrossPension = mb.AnnualGrossPensionEntitlement;
            }

            //BENEFIT OPTIONS
            //No Commutation and Only Monthly Pension
            mb.NoCommutation = FinalGrossPension / Constants.NUMBER_OF_MONTHS_IN_YEAR;
            // 1/3 rd Annual Pension
            mb.AThirdAnnualPension = FinalGrossPension / 3;
            //Lump Sum Commutation Amount 
            mb.LumpSumCommutation = mb.AThirdAnnualPension * (decimal)mb.CommutationFactor;
            //Net Annual Pension After Commutation
            mb.NetAnnualPension = FinalGrossPension - mb.AThirdAnnualPension;
            //Monthl Pension
            mb.MonthlyPension = mb.NetAnnualPension / Constants.NUMBER_OF_MONTHS_IN_YEAR;

            if (mb.PensionTypeEnum == PensionType.TerminationLumpSumAmount)
            {
                mb.FinalMonthGrossSalary = GetFinalMonthGrossSalary(mb.Member); ;//To be picked from db
                mb.GrossPensionAccruedInRetirementYear = (decimal)((1.5 / 100)*(Constants.NUMBER_OF_MONTHS_IN_YEAR * mb.NumberOfPensionableYears)) * mb.FinalMonthGrossSalary;
                mb.LumpSumPension = mb.GrossPensionAccruedInRetirementYear * (decimal)mb.CommutationFactor;
            }
            else if (mb.PensionTypeEnum == PensionType.DisabilityPension || mb.PensionTypeEnum == PensionType.DeathInServicePension)
            {
                mb.FinalMonthGrossSalary = GetFinalMonthGrossSalary(mb.Member);
                mb.ProjectedRemainingService = this.GetDateDiffInYears(mb.FirstOfFollowingMonth.Value, mb.StandardRetirementDate.Value);
                mb.ProjectedAnnualPension = (decimal)((1.5 / 100) * (Constants.NUMBER_OF_MONTHS_IN_YEAR * mb.ProjectedRemainingService)) * mb.FinalMonthGrossSalary;
                
                mb.TotalAccruedPension += mb.ProjectedAnnualPension.Value;
                mb.MonthlyPension = mb.TotalAccruedPension / Constants.NUMBER_OF_MONTHS_IN_YEAR;
                if (mb.PensionTypeEnum == PensionType.DeathInServicePension)
                    ComputeSurvivorBenefits(mb);
            }
        }

        private void ComputeSurvivorBenefits(MemberBenefit mb)
        {
            List<Beneficiary> beneficiaries = membershipService.GetMemberBeneficiaries(mb.Member.pensionID);
            int parentCount = 0;
            bool hasChild = false, hasSpouse = false, hasParent = false;
            foreach (var beneficiary in beneficiaries)
            {
                if (beneficiary.relationID == Constants.BENEFIT_RELATIONSHIP_CHILD)
                    hasChild = true;
                else if (beneficiary.relationID == Constants.BENEFIT_RELATIONSHIP_SPOUSE)
                    hasSpouse = true;
                else if (beneficiary.relationID == Constants.BENEFIT_RELATIONSHIP_PARENT)
                {
                    hasParent = true;
                    parentCount++;
                }
            }
            //All
            if (hasParent && hasSpouse && hasChild)
            {
                mb.SurvivorBenefits = new List<SurvivorBenefit>();
                mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Spouse(s)", Percentage = "50%", BenefitAmount = mb.MonthlyPension * (decimal)0.5 });
                mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Children", Percentage = "30%", BenefitAmount = mb.MonthlyPension * (decimal)0.3 });
                if (parentCount > 1)
                {
                    mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Father", Percentage = "10%", BenefitAmount = mb.MonthlyPension * (decimal)0.1 });
                    mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Mother", Percentage = "10%", BenefitAmount = mb.MonthlyPension * (decimal)0.1 });
                }
                else
                    mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Parent", Percentage = "10%", BenefitAmount = mb.MonthlyPension * (decimal)0.1 });
            }
            //No Spouse
            else if (!hasSpouse && hasParent && hasChild)
            {
                mb.SurvivorBenefits = new List<SurvivorBenefit>();
                mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Children", Percentage = "60%", BenefitAmount = mb.MonthlyPension * (decimal)0.6 });
                if (parentCount > 1)
                {
                    mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Father", Percentage = "20%", BenefitAmount = mb.MonthlyPension * (decimal)0.2 });
                    mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Mother", Percentage = "20%", BenefitAmount = mb.MonthlyPension * (decimal)0.2 });
                }
                else
                    mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Parent", Percentage = "20%", BenefitAmount = mb.MonthlyPension * (decimal)0.2 });
            }
            //No Parents
            else if (!hasParent && hasSpouse && hasChild)
            {
                mb.SurvivorBenefits = new List<SurvivorBenefit>();
                mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Spouse(s)", Percentage = "50%", BenefitAmount = mb.MonthlyPension * (decimal)0.5 });
                mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Children", Percentage = "40%", BenefitAmount = mb.MonthlyPension * (decimal)0.4 });                
            }
            //No spouse and parents
            else if (!hasParent && !hasSpouse && hasChild)
            {
                mb.SurvivorBenefits = new List<SurvivorBenefit>();
                mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Children", Percentage = "100%", BenefitAmount = mb.MonthlyPension }); 
            }
            //No spouse and children
            else if (!hasSpouse && !hasChild)
            {
                mb.SurvivorBenefits = new List<SurvivorBenefit>();
                if (parentCount > 1)
                {
                    mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Father", Percentage = "40%", BenefitAmount = mb.MonthlyPension * (decimal)0.4 });
                    mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Mother", Percentage = "40%", BenefitAmount = mb.MonthlyPension * (decimal)0.4 });
                }
                else
                    mb.SurvivorBenefits.Add(new SurvivorBenefit { Relationship = "Parent", Percentage = "40%", BenefitAmount = mb.MonthlyPension * (decimal)0.4 });
            }
        } 

        /// <summary>
        /// Gets list of monthly salaries for financial year
        /// </summary>
        /// <param name="member"></param>
        /// <param name="month">first month of financial year</param>
        /// <param name="year">current year</param>
        /// <returns></returns>
        private List<MonthlySalary> GetMemberSalaryListForFinancialYear(Member member, FinancialYear fy)
        { 
            List<MonthlySalary> monthlySalaries = new List<MonthlySalary>();
            int month = fy.StartDate.Month;
            int year = fy.StartDate.Year;
            using (var context = new PSPITSEntities())
            {
                var salaries = context.MemberSalaries.Where(s => s.pensionID == member.pensionID && ((s.month >= month && s.year == year) || (s.month < month && s.year == (year + 1)))).OrderBy(s => s.year).ThenBy(s => s.month).ToList();
                foreach (var salary in salaries)
                {
                    monthlySalaries.Add(new MonthlySalary { GrossSalary = salary.grossPay.Value, Month = salary.month, Year = salary.year }); 
                }
                return monthlySalaries;
            }
        }

        private decimal GetFinalMonthGrossSalary(Member member)
        {
            using (var context = new PSPITSEntities())
            {
                var salary = context.MemberSalaries.Where(s => s.pensionID == member.pensionID).OrderByDescending(s => s.year).ThenByDescending(s => s.month).FirstOrDefault();
                if (salary != null)
                    return salary.grossPay.Value;
                return 2500;//To be handle smarter
            }
        }

        #endregion

    }
}