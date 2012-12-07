using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Linq;
using System.Linq.Expressions;
using PSPITS.COMMON;
using PSPITS.MODEL;

namespace PSPITS.DAL.DATA.MemberBenefits
{
    public class MemberBenefitCalcs
    {

        public MemberBenefit GetMemberBenefitByPensionId(int pensionId)
        {
            MemberBenefit mb = new MemberBenefit();
            List<MemberEmploymentServiceBreak> serviceBreaks = GetServiceBreaksPriorToJuly2012(pensionId);
            mb.Member = GetMemberByPensionId(pensionId);
            mb.MemberServiceBreaks = ConstructMemberServiceBreakList(serviceBreaks);
            mb.NumberOfServiceYears = CalcuateYearsInServicePriorToJuly2012(mb.Member);
            mb.NumberOfServiceBreakYears = CalculateServiceBreakYears(serviceBreaks);
            CalculateGrossAnnualPensionUpToJuly2012(mb);

            return mb;
        }

        #region .private methods.

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

        private Member GetMemberByPensionId(int pensionId)
        {
            using (var context = new PSPITSEntities())
            {
                return context.Members.FirstOrDefault(m => m.pensionID == pensionId);
            }
        }

        private void CalculateGrossAnnualPensionUpToJuly2012(MemberBenefit mb)
        {
            double netServiceYears = mb.NumberOfServiceYears - mb.NumberOfServiceBreakYears;
            mb.GrossAnnualPensionUpto30June2012 = (decimal)(Constants.ONE_POINT_FIVE_PERCENT * (double)Constants.JUNE_2012_SALARY * Constants.NUMBER_OF_MONTHS_IN_YEAR * netServiceYears);
        }

        #endregion

    }
}
