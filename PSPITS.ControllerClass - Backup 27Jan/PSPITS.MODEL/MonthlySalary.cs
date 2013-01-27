using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSPITS.MODEL
{
    public class MonthlySalary
    {
        private string[] MonthShortNames = { "", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
        public int Month { get; set; }

        public int Year { get; set; }

        public decimal GrossSalary { get; set; }

        public override string ToString()
        {
            return string.Format("{0}{1}{2}", MonthShortNames[this.Month], " ", this.Year);
        }
    }
}
