using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PSPITS.COMMON;

namespace PSPITS.MODEL
{
    public partial class MemberBenefit
    {
        public MemberAge MemberAge { get; set; }

        public List<MemberServiceBreak> MemberServiceBreaks { get; set; }

        public string PensionTypeString { get; set; }

        public PensionType PensionTypeEnum { get; set; }

        public MemberAge PensionableAge { get; set; }

        public MemberAge ProjectedRemainingServiceAge { get; set; }

        public List<MonthlySalary> MonthlySalaries { get; set; }

        public List<SurvivorBenefit> SurvivorBenefits { get; set; }
    }
}
