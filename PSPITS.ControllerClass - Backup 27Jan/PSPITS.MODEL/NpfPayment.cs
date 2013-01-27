using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSPITS.MODEL
{
    public class NpfPayment
    {
        public int NpfPensionerId { get; set; }

        public int NpfPensionerBenefitId { get; set; }

        public string IndexNumber { get; set; }

        public string Surname { get; set; }

        public string OtherNames { get; set; }

        public string BankName { get; set; }

        public string BankAddress { get; set; }

        public string BranchName { get; set; }

        public string AccountNumber { get; set; }

        public decimal Sum { get; set; }

        public decimal Pension { get; set; }

        public decimal Addition1 { get; set; }

        public decimal Addition2 { get; set; }

        public decimal Addition3 { get; set; }

        public decimal Addition4 { get; set; }

        public decimal Deduction1 { get; set; }

        public decimal Deduction2 { get; set; }

        public decimal Deduction3 { get; set; }

        public decimal Deduction4 { get; set; }

        public decimal NetPension { get; set; }

        public decimal Arrears { get; set; }

        public decimal TotalPension { get; set; }

        public bool PensionPaid { get; set; }

        public decimal OutstandingBalance { get; set; }

        public bool PensionStopped { get; set; }
    }
}
