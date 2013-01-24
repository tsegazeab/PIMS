using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using PSPITS.MODEL;

namespace PSPITS.DAL.DATA.Membership
{
    public class MembershipService
    {
        public MemberDeath GetMemberDeathByPensionId(int pensionId)
        {
            using (var context = new PSPITSEntities())
            {
                var memberDeath = context.MemberDeaths.FirstOrDefault(m => m.PensionId == pensionId);
                if (memberDeath != null)
                {
                    var member = memberDeath.Member;
                }
                return memberDeath;
            }
        }

        public void SaveMemberDeath(MemberDeath memberDeath)
        {
            using (var context = new PSPITSEntities())
            {
                var md = context.MemberDeaths.FirstOrDefault(m => m.PensionId == memberDeath.PensionId);
                if (md == null)
                {
                    context.MemberDeaths.AddObject(memberDeath);
                }
                else
                {
                    md.DateOfDeath = memberDeath.DateOfDeath;
                    md.DateUpdated = memberDeath.DateUpdated;
                    md.DateVerified = memberDeath.DateVerified;
                    md.DeathCertificateAccepted = memberDeath.DeathCertificateAccepted;
                    md.DeathCertificateNumber = memberDeath.DeathCertificateNumber;
                    md.DeathCertificatePresented = memberDeath.DeathCertificatePresented;
                    md.FileContent = memberDeath.FileContent;
                    md.FileContentType = memberDeath.FileContentType;
                    md.FileOriginalName = memberDeath.FileOriginalName;
                    md.FileSize = memberDeath.FileSize;
                    md.PlaceOfDeath = memberDeath.PlaceOfDeath;
                    md.WhoUpdated = memberDeath.WhoUpdated;
                    md.WhoVerified = memberDeath.WhoVerified;
                }
                context.SaveChanges();
            }
        }

        public List<MemberDeath> GetMemberDeaths()
        {
            using (var context = new PSPITSEntities())
            {
                var memberDeaths = context.MemberDeaths.OrderBy(m => m.Member.firstName).ThenBy(m => m.Member.lastName).ToList();
                foreach (var md in memberDeaths)
                {
                    var member = md.Member;
                }
                return memberDeaths;
            }
        }

        public List<Beneficiary> GetMemberBeneficiaries(int pensionId)
        {
            using (var context = new PSPITSEntities())
            {
                var beneficiaries = context.Beneficiaries.Where(b => b.pensionID == pensionId).OrderBy(b => b.firstName).ThenBy(b => b.lastName).ToList();
                foreach (var beneficiary in beneficiaries)
                {
                    beneficiary.Relationship = context.vwlistBeneficiaryRelationships.FirstOrDefault(r => r.relationshipID == beneficiary.relationID).Relationship;
                }
                return beneficiaries;
            }
        }
    }
}
