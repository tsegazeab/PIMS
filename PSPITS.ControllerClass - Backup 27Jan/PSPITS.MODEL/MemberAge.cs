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

        /// <summary>
        /// Compares this age with the age passed and returns 1 if this age is greater, 0 if the two ages are equal
        /// and -1 if the this age is less
        /// </summary>
        /// <param name="age">age to be compared with this</param>
        /// <returns>integer representing greater(older), equal(same) or less(younger)</returns>
        public int Compare(MemberAge age)
        {
            if (this.Years > age.Years)
                return 1;
            else if (this.Years == age.Years && this.Months > age.Months)
                return 1;
            else if (this.Years == age.Years && this.Months == age.Months)
                return 0;
            else if (this.Years == age.Years && this.Months < age.Months)
                return -1;
            else
                return -1;
        }

        public static MemberAge operator -(MemberAge thisAge, MemberAge thatAge)
        {
            MemberAge diffAge = new MemberAge();
            diffAge.Years = thisAge.Years - thatAge.Years;
            diffAge.Months = thisAge.Months - thatAge.Months;
            //if months diff is negative then adjust it accordingly and adjust the years accordingly too
            if (diffAge.Months < 0)
            {
                diffAge.Months += 12;
                diffAge.Years--;
            }
            diffAge.Days = thisAge.Days - thisAge.Days;
            if (diffAge.Days < 0)
            {
                diffAge.Days += 30;
                diffAge.Months--;
                if (diffAge.Months < 0)
                {
                    diffAge.Months += 12;
                    diffAge.Years--;
                }
            }
            return diffAge;
        }
    }
}
