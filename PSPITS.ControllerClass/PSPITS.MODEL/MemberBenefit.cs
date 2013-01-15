using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PSPITS.COMMON;

namespace PSPITS.MODEL
{
    public class MemberBenefit
    {
        public Member Member { get; set; }

        public MemberAge MemberAge { get; set; }

        public List<MemberServiceBreak> MemberServiceBreaks { get; set; }

        public double NumberOfServiceYears { get; set; }

        public double NumberOfServiceBreakYears { get; set; }

        public decimal GrossAnnualPensionUptoLastFY { get; set; }

        public decimal GrossSalaryInRetirementYear { get; set; }

        public double AverageCivilServiceSalaryIncrease { get; set; }

        public double CommutationFactor { get; set; }

        public decimal PensionAccrualUpdateForCurrentFY { get; set; }

        public decimal UpdatedGrossAnnualPension { get; set; }

        public decimal GrossPensionAccruedInRetirementYear { get; set; }

        public decimal TotalAccruedPension { get; set; }

        public decimal NoCommutation { get; set; }

        public decimal AThirdAnnualPension { get; set; }

        public decimal LumpSumCommutation { get; set; }

        public decimal NetAnnualPension { get; set; }

        public decimal MonthlyPension { get; set; }

        public decimal EarlyRetirementReductionAdjustment { get; set; }

        public decimal LateRetirementReductionAdjustment { get; set; }

        public decimal AnnualGrossPensionEntitlement { get; set; }

        public string PensionType { get; set; }

        public PensionType PensionTypeEnum { get; set; }

        public MemberAge PensionableAge { get; set; }

        public List<MonthlySalary> MonthlySalaries { get; set; }

        public int MonthsToPensionableAge { get; set; }
    }
}
