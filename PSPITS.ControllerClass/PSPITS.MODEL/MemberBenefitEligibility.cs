using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSPITS.MODEL
{
    public class MemberBenefitEligibility
    {
        public Member Member { get; set; }

        public bool DoBCheck { get; set; }

        public bool DoBEvidenceCheck { get; set; }

        public bool DoACheck { get; set; }

        public bool DoAEvidenceCheck { get; set; }

        public bool ServiceBreakEvidenceCheck { get; set; }

        public bool AnnualPensionProcessedCheck { get; set; }
    }
}
