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

        public List<MemberServiceBreak> MemberServiceBreaks { get; set; }

        public double NumberOfServiceYears { get; set; }

        public double NumberOfServiceBreakYears { get; set; }

        public decimal GrossAnnualPensionUpto30June2012 { get; set; }

        public decimal GrossSalaryInRetirementYear { get; set; }

        public double AverageCivilServiceSalaryIncrease { get; set; }

        public string PensionType { get; set; }

        public PensionType PensionTypeEnum { get; set; }

        public List<MonthlySalary> MonthlySalaries { get; set; }
    }
}
