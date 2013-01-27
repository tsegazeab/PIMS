using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSPITS.MODEL
{
    public class MemberBenefitEligibility
    {
        public Member Member { get; set; }
        /// <summary>
        /// Gets or sets value indicating whether Member's Date Of Birth exists
        /// </summary>
        public bool DoBCheck { get; set; }
        /// <summary>
        /// Gets or sets value indicating whether Member's Date Of Birth Evidence exists and is accepted
        /// </summary>
        public bool DoBEvidenceCheck { get; set; }
        /// <summary>
        /// Gets or sets value indicating whether Member's Date Of Appointment exists
        /// </summary>
        public bool DoACheck { get; set; }
        /// <summary>
        /// Gets or sets value indicating whether Member's Date Of Appointment Evidence exists and is accepted
        /// </summary>
        public bool DoAEvidenceCheck { get; set; }
        /// <summary>
        /// Gets or sets value indicating whether member has been in service for more than two years 
        /// </summary>
        public bool MoreThanTwoYears { get; set; }
        /// <summary>
        /// Gets or sets value indicating whether Member's Service Break Evidence exists and is accepted. NOTE: ONLY Service Breaks with Evidence are considered
        /// when calculating benefits
        /// </summary>
        public bool ServiceBreakEvidenceCheck { get; set; }
        /// <summary>
        /// Gets or sets value indicating whether Member's Annual Pension has been Proceed for the last financial year
        /// </summary>
        public bool AnnualPensionProcessedCheck { get; set; }
    }
}
