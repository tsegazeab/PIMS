using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PSPITS.MODEL;
using PSPITS.COMMON;

namespace PSPITS.DAL.DATA.MemberPayments
{
    public class MemberPaymentService
    {
        public List<MemberPayment> GeneratePaymentSchedule(int month, int year, int? mdaId = null)
        {
            List<MemberPayment> paymentList = new List<MemberPayment>();
            DeletePaymentSchedule(month, year, mdaId);
            using (var context = new PSPITSEntities())
            {
                var memberBenefits = context.MemberBenefits.Where(b => b.PaymentStopped == false);
                
                //Get Pensionable Age Members
                var pensionableAgeBenefits = memberBenefits.Where(p => p.PensionType == (int)PensionType.PesionableAgePension).ToList();
                ProcessPELPensionPayments(month, year, paymentList, context, pensionableAgeBenefits);

                //Get Early Pension
                var earlyPensionBenefits = memberBenefits.Where(e => e.PensionType == (int)PensionType.EarlyPension).ToList();
                ProcessPELPensionPayments(month, year, paymentList, context, earlyPensionBenefits);

                //Get Late Pension
                var latePensionBenefits = memberBenefits.Where(e => e.PensionType == (int)PensionType.LatePension).ToList();
                ProcessPELPensionPayments(month, year, paymentList, context, latePensionBenefits);

                //Terminal Benefits
                var terminalBenefits = memberBenefits.Where(e => e.PensionType == (int)PensionType.TerminationLumpSumAmount).ToList();
                ProcessTerminalBenefits(month, year, paymentList, context, terminalBenefits);

                //Disability Pension
                var disabilityBenefits = memberBenefits.Where(e => e.PensionType == (int)PensionType.TerminationLumpSumAmount).ToList();
                ProcessDisabilityBenefits(month, year, paymentList, context, disabilityBenefits);
            }
            SaveNewMemberPaymentList(paymentList);
            return paymentList;
        }

        private void SaveNewMemberPaymentList(List<MemberPayment> paymentList)
        {
            using (var context = new PSPITSEntities())
            { 
                foreach(var payment in paymentList)
                {
                    context.MemberPayments.AddObject(payment);
                }
                context.SaveChanges();
            }
        }

        private void DeletePaymentSchedule(int month, int year, int? mdaId)
        {
            List<MemberPayment> paymentList = new List<MemberPayment>();
            using (var context = new PSPITSEntities())
            {
                paymentList = context.MemberPayments.Where(p => p.Month == month && p.Year == year && ((mdaId.HasValue && p.MemberBenefit.Member.currentMDA.Value == mdaId.Value) || mdaId.HasValue == false || mdaId == 0)).ToList();
            }

            foreach (var payment in paymentList)
            {
                DeletePayment(payment.PaymentId);
            }
        }

        private void DeletePayment(int memberPaymentId)
        {
            using (var context = new PSPITSEntities())
            {
                var payment = context.MemberPayments.FirstOrDefault(p => p.PaymentId == memberPaymentId);
                context.MemberPayments.DeleteObject(payment);
                context.SaveChanges();
            }
        }

        /// <summary>
        /// Process Pensionable Age, Early Pension and Late Pension Payments
        /// </summary>
        /// <param name="month"></param>
        /// <param name="year"></param>
        /// <param name="paymentList"></param>
        /// <param name="context"></param>
        /// <param name="pensionableAgeBenefits"></param>
        private static void ProcessPELPensionPayments(int month, int year, List<MemberPayment> paymentList, PSPITSEntities context, List<MemberBenefit> pensionableAgeBenefits)
        {
            foreach (var benefit in pensionableAgeBenefits)
            {
                var payment = new MemberPayment();
                if (benefit.BenefitOption == Constants.BENEFIT_OPTION_A)
                    payment.AmountDue = benefit.NoCommutation;
                else
                    payment.AmountDue = benefit.MonthlyPension;
                //Arrears
                var previousPayments = context.MemberPayments.Where(p => p.MemberBenefitId == benefit.MemberBenefitId && p.IsApproved == false && ((p.Month < month && p.Year == year) || p.Year < year));
                foreach (var prevPayt in previousPayments)
                {
                    payment.Arrears += prevPayt.TotalAmount;
                }
                payment.MdaId = benefit.Member.currentMDA.Value;
                payment.MemberBenefitId = benefit.MemberBenefitId;
                payment.Month = month;
                payment.Year = year;
                payment.TotalAmount = payment.AmountDue + payment.Arrears;
                payment.MemberName = string.Format("{0} {1}", benefit.Member.firstName, benefit.Member.lastName);
                //changing this to state
                //payment.CurrentMDA = context.MdaListings.FirstOrDefault(m => m.mdaID == payment.MdaId).mdaName;
                payment.CurrentMDA = context.vwlistStates.FirstOrDefault(s => s.stateID == benefit.Member.homeState.Value).State;
                payment.PensionType = SetPensionTypeString((PensionType)benefit.PensionType);
                paymentList.Add(payment);
            }
        }

        private static string SetPensionTypeString(PensionType ptype)
        {
            string pensionType;
            switch (ptype)
            {
                case PensionType.PesionableAgePension:
                    pensionType = "Pensionable Age Retirement";
                    break;
                case PensionType.EarlyPension:
                    pensionType = "Early Pension";
                    break;
                case PensionType.LatePension:
                    pensionType = "Late Pension";
                    break;
                case PensionType.DeathInServicePension:
                    pensionType = "Death In Service Pension";
                    break;
                case PensionType.TerminationLumpSumAmount:
                    pensionType = "Termination Lump Sum Amount";
                    break;
                case PensionType.LessThanTwoYears:
                    pensionType = "Less Than Two Years In Service";
                    break;
                case PensionType.DisabilityPension:
                    pensionType = "Disability Pension";
                    break;
                default:
                    pensionType = "";
                    break;
            }
            return pensionType;
        }

        private static void ProcessTerminalBenefits(int month, int year, List<MemberPayment> paymentList, PSPITSEntities context, List<MemberBenefit> terminalBenefits)
        {
            foreach (var benefit in terminalBenefits)
            {
                var payment = new MemberPayment();
                if (benefit.BenefitOption == Constants.BENEFIT_OPTION_A && benefit.StandardRetirementDate.HasValue && ((benefit.StandardRetirementDate.Value.Month <= month && benefit.StandardRetirementDate.Value.Year == year) || benefit.StandardRetirementDate.Value.Year < year))
                    payment.AmountDue = benefit.MonthlyPension;
                else
                    payment.AmountDue = benefit.LumpSumPension;
                //Arrears
                var previousPayments = context.MemberPayments.Where(p => p.MemberBenefitId == benefit.MemberBenefitId && p.IsApproved == false && ((p.Month < month && p.Year == year) || p.Year < year));
                foreach (var prevPayt in previousPayments)
                {
                    payment.Arrears += prevPayt.TotalAmount;
                }
                payment.MdaId = benefit.Member.currentMDA.Value;
                payment.MemberBenefitId = benefit.MemberBenefitId;
                payment.Month = month;
                payment.Year = year;
                payment.TotalAmount = payment.AmountDue + payment.Arrears;
                payment.MemberName = string.Format("{0} {1}", benefit.Member.firstName, benefit.Member.lastName);
                //changing this to state
                //payment.CurrentMDA = context.MdaListings.FirstOrDefault(m => m.mdaID == payment.MdaId).mdaName;
                payment.CurrentMDA = context.vwlistStates.FirstOrDefault(s => s.stateID == benefit.Member.homeState.Value).State;
                paymentList.Add(payment);
            }
        }

        private static void ProcessDisabilityBenefits(int month, int year, List<MemberPayment> paymentList, PSPITSEntities context, List<MemberBenefit> disabilityBenefits)
        {
            foreach (var benefit in disabilityBenefits)
            {
                var payment = new MemberPayment();
                payment.AmountDue = benefit.MonthlyPension;
                //Arrears
                var previousPayments = context.MemberPayments.Where(p => p.MemberBenefitId == benefit.MemberBenefitId && p.IsApproved == false && ((p.Month < month && p.Year == year) || p.Year < year));
                foreach (var prevPayt in previousPayments)
                {
                    payment.Arrears += prevPayt.TotalAmount;
                }
                payment.MdaId = benefit.Member.currentMDA.Value;
                payment.MemberBenefitId = benefit.MemberBenefitId;
                payment.Month = month;
                payment.Year = year;
                payment.TotalAmount = payment.AmountDue + payment.Arrears;
                payment.MemberName = string.Format("{0} {1}", benefit.Member.firstName, benefit.Member.lastName);
                //changing this to state
                //payment.CurrentMDA = context.MdaListings.FirstOrDefault(m => m.mdaID == payment.MdaId).mdaName;
                payment.CurrentMDA = context.vwlistStates.FirstOrDefault(s => s.stateID == benefit.Member.homeState.Value).State;
                paymentList.Add(payment);
            }
        }
    }
}
