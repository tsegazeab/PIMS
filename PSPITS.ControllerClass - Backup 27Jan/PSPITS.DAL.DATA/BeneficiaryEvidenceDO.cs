using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Linq.Expressions;
using PSPITS.COMMON;
using PSPITS.MODEL;

namespace PSPITS.DAL.DATA
{
    public class BeneficiaryEvidenceDO
    {
        public List<vwlistBeneficiaryEvidence> BeneficiaryEvidenceList
        {
            get
            {
                using (var context = new PSPITSEntities())
                {
                    return context.vwlistBeneficiaryEvidences.ToList();
                }
            }
        }

        public List<BeneficiaryEvidence> GetMemberBeneficiaryEvidence(int pensionId)
        {
            List<BeneficiaryEvidence> benEvidences = new List<BeneficiaryEvidence>();
            using (var context = new PSPITSEntities())
            {
                var beList = context.BeneficiaryEvidences.Where(b => b.pensionID == pensionId).ToList();
                foreach (var be in beList)
                {
                    var beneficiary = context.Beneficiaries.FirstOrDefault(b => b.beneficiaryID == be.beneficiaryID);
                    be.BeneficiaryName = beneficiary.firstName + " " + beneficiary.lastName;
                    be.Relationship = context.vwlistBeneficiaryRelationships.FirstOrDefault(b => b.relationshipID == beneficiary.relationID).Relationship;
                    be.EvidenceType = context.vwlistBeneficiaryEvidences.FirstOrDefault(e => e.evidenceID == be.evidenceID).evidence;
                    benEvidences.Add(be);
                }
                return benEvidences;
            }
        }

        public BeneficiaryEvidence GetBeneficiaryEvidence(int beneficiaryId, int evidenceId)
        {
            using (var context = new PSPITSEntities())
            {
                return context.BeneficiaryEvidences.FirstOrDefault(b => b.beneficiaryID == beneficiaryId && b.evidenceID == evidenceId);
            }
        }

        public bool SaveBeneficiaryEvidence(BeneficiaryEvidence be)
        {
            using (var context = new PSPITSEntities())
            {
                var beneficiaryEvidence = context.BeneficiaryEvidences.FirstOrDefault(b => b.beneficiaryID == be.beneficiaryID && b.evidenceID == be.evidenceID);
                if (beneficiaryEvidence != null)
                {
                    beneficiaryEvidence.dateUpdated = DateTime.Now;
                    beneficiaryEvidence.dateVerified = be.dateVerified;
                    beneficiaryEvidence.evidenceAccepted = be.evidenceAccepted;
                    beneficiaryEvidence.evidenceComment = be.evidenceComment;
                    beneficiaryEvidence.evidencePresented = be.evidencePresented;
                    if (be.fileContent != null)
                    {
                        beneficiaryEvidence.fileContent = be.fileContent;
                        beneficiaryEvidence.fileExtention = be.fileExtention;
                        beneficiaryEvidence.fileOriginalName = be.fileOriginalName;
                        beneficiaryEvidence.fileSize = be.fileSize;
                    }
                    beneficiaryEvidence.whoUpdated = be.whoUpdated;
                    beneficiaryEvidence.whoVerified = be.whoVerified;
                }
                else
                {
                    context.BeneficiaryEvidences.AddObject(be);
                }
                return context.SaveChanges() > 0;
            }
        }

    }
}
