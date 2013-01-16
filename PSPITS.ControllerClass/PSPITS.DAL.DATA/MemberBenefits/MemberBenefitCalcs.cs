﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Linq.Expressions;
using PSPITS.COMMON;
using PSPITS.MODEL;

namespace PSPITS.DAL.DATA.MemberBenefits
{
    public class MemberBenefitCalcs
    {

        public MemberBenefit GetMemberBenefit(MemberBenefitRequest mbr)
        {            
            MemberBenefit mb = new MemberBenefit();
            List<MemberEmploymentServiceBreak> serviceBreaks = GetServiceBreaksPriorToJuly2012(mbr.Member.pensionID);
            mb.Member = mbr.Member;
            mb.MemberServiceBreaks = ConstructMemberServiceBreakList(serviceBreaks);
            mb.NumberOfServiceYears = CalcuateYearsInServicePriorToJuly2012(mb.Member);
            mb.NumberOfServiceBreakYears = CalculateServiceBreakYears(serviceBreaks);
            mb.MemberAge = this.GetMemberAge(mb.Member.dateofBirth.Value);
            //To be picked from table
            mb.AverageCivilServiceSalaryIncrease = 3.25;
            //To be picked from table
            mb.CommutationFactor = 14.10;
            //This will eventually be Calculate/Get Gross Annual Pension up to Last Financial Year
            CalculateGrossAnnualPensionUpToJuly2012(mb);
            mb.PensionTypeEnum = DetermineTypeOfPension(mbr, mb);
            switch (mb.PensionTypeEnum)
            { 
                case PensionType.PesionableAgePension:
                    mb.PensionType = "Pensionable Age Retirement";
                    break;
                case PensionType.EarlyPension:
                    mb.PensionType = "Early Pension";
                    break;
                case PensionType.LatePension:
                    mb.PensionType = "Late Pension";
                    break;
                case PensionType.DeathInServicePension:
                    mb.PensionType = "Death In Service Pension";
                    break;
                case PensionType.TerminationLumpSumAmount:
                    mb.PensionType = "Termination Lump Sum Amount";
                    break;
                case PensionType.LessThanTwoYears:
                    mb.PensionType = "Less Than Two Years In Service";
                    break;
                default:
                    mb.PensionType = "";
                    break;
            }
            this.CalculateBenefits(mbr, mb);
            return mb;
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
        /// <returns></returns>
        private double CalcuateYearsInServicePriorToJuly2012(Member member)
        {
            TimeSpan duration = Constants.JULY_FIRST_2012 - member.dateoffirstAppointment.Value;
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
            double netServiceYears = mb.NumberOfServiceYears - mb.NumberOfServiceBreakYears;
            mb.GrossAnnualPensionUptoLastFY = (decimal)(Constants.ONE_POINT_FIVE_PERCENT * (double)Constants.JUNE_2012_SALARY * Constants.NUMBER_OF_MONTHS_IN_YEAR * netServiceYears);
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
        /// Calculate age 
        /// </summary>
        /// <param name="dob"></param>
        /// <returns></returns>
        private MemberAge GetMemberAge(DateTime dob)
        {
            TimeSpan ts = DateTime.Today - dob;
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
            MemberAge memberAge = this.GetMemberAge(mbr.Member.dateofBirth.Value);
            MemberAge ageDiff;
            mb.PensionableAge = this.DeterminePensionableAge(mbr.Member.dateofBirth.Value);
            
            int ageCompare = memberAge.Compare(mb.PensionableAge);
            if (ageCompare == 0)
                return PensionType.PesionableAgePension;
            if (ageCompare > 0)
            {
                //Complete months beyond pensionable age
                ageDiff = memberAge - mb.PensionableAge;
                mb.MonthsBeyondPensionableAge = (ageDiff.Years * 12) + ageDiff.Months;
                return PensionType.LatePension;
            }
            //Complete months to pensionable age -- applies to early pension and termination lump sum
            ageDiff = mb.PensionableAge - memberAge;
            mb.MonthsToPensionableAge = (ageDiff.Years * 12) + ageDiff.Months;

            if (IsEarlyPension(mbr, memberAge, mb.PensionableAge))
                return PensionType.EarlyPension;
            if (IsTerminationLumpSum(mbr, memberAge, mb.PensionableAge))
                return PensionType.TerminationLumpSumAmount;
            return PensionType.LessThanTwoYears;
           
        }

        private bool IsEarlyPension(MemberBenefitRequest mbr, MemberAge memberAge, MemberAge memberPensionableAge)
        {            
            //ageDiff refers to the years/age left to attain pensionable age;
            MemberAge ageDiff = memberPensionableAge - memberAge;
            if (ageDiff.Years>0 && ageDiff.Years < 10)
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

        private void CalculateBenefits(MemberBenefitRequest mbr, MemberBenefit mb)
        { 
            //Get Annual Pension Accrued upto last FY. Ideally this will be picked from the DB but for now we calculate it and it is contained in the 
            //MemberBenefit object
            //Get MonthlySalaries for the Retiring FY
            mb.MonthlySalaries = this.GetMemberSalaryListForCurrentFY(mbr);
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
            //Early/Late Retirement Reduction/Increase Adjustment
            if (mb.PensionTypeEnum == PensionType.EarlyPension)
            {
                mb.EarlyRetirementReductionAdjustment = (decimal)(0.5 / 100) * mb.MonthsToPensionableAge * mb.TotalAccruedPension;
                mb.AnnualGrossPensionEntitlement = mb.TotalAccruedPension - mb.EarlyRetirementReductionAdjustment;
            }
            else if (mb.PensionTypeEnum == PensionType.LatePension)
            {
                mb.LateRetirementReductionAdjustment = (decimal)(0.5 / 100) * mb.MonthsBeyondPensionableAge * mb.TotalAccruedPension;
                mb.AnnualGrossPensionEntitlement = mb.TotalAccruedPension + mb.LateRetirementReductionAdjustment;
            }

            //BENEFIT OPTIONS
            //No Commutation and Only Monthly Pension
            mb.NoCommutation = mb.TotalAccruedPension / Constants.NUMBER_OF_MONTHS_IN_YEAR;
            // 1/3 rd Annual Pension
            mb.AThirdAnnualPension = mb.TotalAccruedPension / 3;
            //Lump Sum Commutation Amount 
            mb.LumpSumCommutation = mb.AThirdAnnualPension * (decimal)mb.CommutationFactor;
            //Net Annual Pension After Commutation
            mb.NetAnnualPension = mb.TotalAccruedPension - mb.AThirdAnnualPension;
            //Monthl Pension
            mb.MonthlyPension = mb.NetAnnualPension / Constants.NUMBER_OF_MONTHS_IN_YEAR;

        }

        /// <summary>
        /// Get list of MonthlySalary objects representing each month the Member has worked in the current financial year up to the date of service termination
        /// or retirement or resignation
        /// </summary>
        /// <param name="mbr"></param>
        /// <returns></returns>
        private List<MonthlySalary> GetMemberSalaryListForCurrentFY(MemberBenefitRequest mbr)
        { 
            //we'll pick these from the database. for now we simply use generic data
            Random rand = new Random();
            int month = 7, year, nextYear;
            int monthsWorkedInCurrentFY = GetMonthsWorkedInCurrentFY(mbr, out year);
            nextYear = year + 1;
            List<MonthlySalary> monthlySalaries = new List<MonthlySalary>();
            
            
            for (int i = 0; i < monthsWorkedInCurrentFY; i++)
            {
                monthlySalaries.Add(new MonthlySalary { Month = month, Year = year, GrossSalary = 2500 });
                month++;
                if (month > 12)
                {
                    month = 1;
                    year = nextYear;
                }
            }
            return monthlySalaries;
        }

        /// <summary>
        /// Get number of months worked in current financial year basing on service end date provided by user
        /// </summary>
        /// <param name="mbr"></param>
        /// <param name="year"></param>
        /// <returns></returns>
        private int GetMonthsWorkedInCurrentFY(MemberBenefitRequest mbr, out int year)
        {
            int monthsWorked;
            if (mbr.ServiceEndDate.Month > 6)
            {
                year = mbr.ServiceEndDate.Year;
                monthsWorked = mbr.ServiceEndDate.Month - 7 + 1;
            }
            else
            {
                year = mbr.ServiceEndDate.Year - 1;
                monthsWorked = mbr.ServiceEndDate.Month + 6;
            }
            return monthsWorked;
        }
            
        #endregion

    }
}