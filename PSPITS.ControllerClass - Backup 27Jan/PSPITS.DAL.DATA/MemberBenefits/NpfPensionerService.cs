using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PSPITS.MODEL;

namespace PSPITS.DAL.DATA.MemberBenefits
{
    public class NpfPensionerService
    {
        public NpfPensioner GetNpfPensionerById(int pensionerId)
        {
            using (var context = new PSPITSEntities())
            {
                var retiree = context.NpfPensioners.FirstOrDefault(n => n.NpfPensionerId == pensionerId);
                return retiree;
            }
        }

        public void SaveNpfPensioner(NpfPensioner npfPensioner)
        {
            using (var context = new PSPITSEntities())
            {
                if (context.NpfPensioners.FirstOrDefault(n => n.NpfPensionerId == npfPensioner.NpfPensionerId) == null)
                {
                    context.NpfPensioners.AddObject(npfPensioner);
                }
                else
                {
                    context.NpfPensioners.Attach(npfPensioner);
                    context.ObjectStateManager.ChangeObjectState(npfPensioner, System.Data.EntityState.Modified);
                }
                context.SaveChanges();
            }
        }

        public List<NpfPensioner> GetNpfPensionerList()
        {
            using (var context = new PSPITSEntities())
            {
                var pensionerList = context.NpfPensioners.ToList();
                return pensionerList;
            }
        }

        public void ProcessNpfPensionPayments(int year, int month)
        {
            decimal arrears = 0;
            using (var context = new PSPITSEntities())
            {
                var pensioners = context.NpfPensioners.ToList();
                foreach (var pensioner in pensioners)
                {
                    arrears = 0;
                    if (pensioner.NpfPensionerBenefits.Count > 0)
                    {
                        //Get previously computed benefits
                        var benefits = pensioner.NpfPensionerBenefits.Where(b => b.Month < month && b.Year <= year).OrderByDescending(b => b.Year).ThenByDescending(b => b.Month);
                        foreach (var benefit in benefits)
                        {
                            if (!benefit.PensionPaid && !benefit.PensionStopped)
                            {
                                arrears += benefit.TotalPension;
                            }
                            var newBenefit = pensioner.NpfPensionerBenefits.FirstOrDefault(b => b.Month == month && b.Year == year);
                            if (newBenefit == null)
                                newBenefit = new NpfPensionerBenefit();
                            newBenefit.Arrears = arrears;
                            newBenefit.Month = month;
                            newBenefit.Year = year;
                            newBenefit.NetPension = pensioner.Sum + pensioner.Pension + pensioner.Addition1 + pensioner.Addition2 + pensioner.Addition3 + pensioner.Addition4;
                            newBenefit.NetPension = newBenefit.NetPension - (pensioner.Deduction1 + pensioner.Deduction2 + pensioner.Deduction3 + pensioner.Deduction4);
                            newBenefit.TotalPension = newBenefit.NetPension + newBenefit.Arrears;
                            if (newBenefit.NpfPensioner == null)
                            {
                                newBenefit.NpfPensionerId = pensioner.NpfPensionerId;
                                pensioner.NpfPensionerBenefits.Add(newBenefit);
                            }
                            break;
                        }
                    }
                    else
                    {
                        var newBenefit = new NpfPensionerBenefit();
                        newBenefit.NpfPensionerId = pensioner.NpfPensionerId;
                        newBenefit.Arrears = arrears;
                        newBenefit.Month = month;
                        newBenefit.Year = year;
                        newBenefit.NetPension = pensioner.Sum + pensioner.Pension + pensioner.Addition1 + pensioner.Addition2 + pensioner.Addition3 + pensioner.Addition4;
                        newBenefit.NetPension = newBenefit.NetPension - (pensioner.Deduction1 + pensioner.Deduction2 + pensioner.Deduction3 + pensioner.Deduction4);
                        newBenefit.TotalPension = newBenefit.NetPension + newBenefit.Arrears;
                        context.NpfPensionerBenefits.AddObject(newBenefit);
                    }
                }
                context.SaveChanges();
            }
        }

        public List<NpfPayment> GetMonthlyPaymentList(int year, int month)
        {
            List<NpfPayment> paymentList = new List<NpfPayment>();
            using (var context = new PSPITSEntities())
            {
                var pensionerBenefits = context.NpfPensionerBenefits.Where(b => b.Year == year && b.Month == month).ToList();
                foreach (var pensionerBenefit in pensionerBenefits)
                {
                    paymentList.Add(new NpfPayment
                    {
                        AccountNumber = pensionerBenefit.NpfPensioner.AccountNumber,
                        Addition1 = pensionerBenefit.NpfPensioner.Addition1,
                        Addition2 = pensionerBenefit.NpfPensioner.Addition2,
                        Addition3 = pensionerBenefit.NpfPensioner.Addition3,
                        Addition4 = pensionerBenefit.NpfPensioner.Addition4,
                        Arrears = pensionerBenefit.Arrears,
                        BankAddress = pensionerBenefit.NpfPensioner.BankAddress,
                        BankName = pensionerBenefit.NpfPensioner.BankName,
                        BranchName = pensionerBenefit.NpfPensioner.BranchName,
                        Deduction1 = pensionerBenefit.NpfPensioner.Deduction1,
                        Deduction2 = pensionerBenefit.NpfPensioner.Deduction2,
                        Deduction3 = pensionerBenefit.NpfPensioner.Deduction3,
                        Deduction4 = pensionerBenefit.NpfPensioner.Deduction4,
                        IndexNumber = pensionerBenefit.NpfPensioner.IndexNumber,
                        NetPension = pensionerBenefit.NetPension,
                        NpfPensionerBenefitId = pensionerBenefit.NpfPensionerBenefitId,
                        NpfPensionerId = pensionerBenefit.NpfPensionerId,
                        OtherNames = pensionerBenefit.NpfPensioner.OtherNames,
                        OutstandingBalance = pensionerBenefit.OutstandingBalance,
                        Pension = pensionerBenefit.NpfPensioner.Pension,
                        PensionPaid = pensionerBenefit.PensionPaid,
                        PensionStopped = pensionerBenefit.PensionStopped,
                        Sum = pensionerBenefit.NpfPensioner.Sum,
                        Surname = pensionerBenefit.NpfPensioner.Surname,
                        TotalPension = pensionerBenefit.TotalPension
                    });
                }
                return paymentList;
            }
        }

        public void ApprovePayments(int month, int year)
        {
            using (var context = new PSPITSEntities())
            {
                var paymentList = context.NpfPensionerBenefits.Where(b => b.Month == month && b.Year == year).ToList();                
                foreach (var payment in paymentList)
                {
                    payment.PaymentApproved = true;
                }
                context.SaveChanges();
            }
        }
    }
}
