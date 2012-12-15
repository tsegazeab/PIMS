using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSPITS.MODEL
{
    /// <summary>
    /// This class stores properties captured when starting to calculate member's benefits
    /// </summary>
    public class MemberBenefitRequest
    {
        /// <summary>
        /// Member requesting benefits
        /// </summary>
        public Member Member { get; set; }

        /// <summary>
        /// Date of Service End or Event
        /// </summary>
        public DateTime ServiceEndDate { get; set; }

        /// <summary>
        /// Type of Event e.g. Employee Terminated/Resigned/Retired or Employee Disabled
        /// </summary>
        public int EventType { get; set; }
    }
}
