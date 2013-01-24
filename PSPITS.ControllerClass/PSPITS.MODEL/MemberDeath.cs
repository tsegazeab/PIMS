using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSPITS.MODEL
{
    public partial class MemberDeath
    {
        public string MemberFullName
        {
            get { return string.Format("{0} {1}", Member.firstName, Member.lastName); }
        }
    }
}
