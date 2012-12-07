using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSPITS.MODEL
{
    public class MemberBenefit
    {
        public Member Member { get; set; }

        public List<MemberServiceBreak> MemberServiceBreaks { get; set; }

        public double NumberOfServiceYears { get; set; }

        public double NumberOfServiceBreakYears { get; set; }

        public decimal GrossAnnualPensionUpto30June2012 { get; set; }
    }
}
