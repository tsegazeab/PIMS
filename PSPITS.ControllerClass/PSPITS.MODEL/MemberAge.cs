using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSPITS.MODEL
{
    public class MemberAge
    {
        public int Years { get; set; }

        public int Months { get; set; }

        public int Days { get; set; }

        public override string ToString()
        {
            string age = this.Years != 1 ? this.Years + " years " : this.Years + " year ";
            if (this.Months > 1)
                age += this.Months + " months ";
            else if (this.Months == 1)
                age += this.Months + " month ";
            if (this.Days > 1)
                age += this.Days + " days";
            else if (this.Days == 1)
                age += this.Days + " day";
            return age;
        }
    }
}
