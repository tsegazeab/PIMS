﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSPITS.COMMON
{
    #region .From Gabriel.

    public delegate void MemberContributionEventHandler(object sender, MemberContributionEventArgs e);
    public delegate void ActualContributionEventHandler(object sender, ActualContributionEventArgs e);
    public class MemberContributionEventArgs : EventArgs
    {
        private string _pid = string.Empty;
        private string _month = string.Empty;
        private string _year = string.Empty;
        public string pensionID
        {
            get
            {
                return _pid;
            }
            set
            {
                this._pid = value;
            }
        }
        public string year
        {
            get
            {
                return _year;
            }
            set
            {
                this._year = value;
            }
        }
        public string month
        {
            get
            {
                return _month;
            }
            set
            {
                this._month = value;
            }
        }
        public MemberContributionEventArgs()
        {

        }

        public MemberContributionEventArgs(string _pensionID, string _month, string _year)
        {
            this._pid = _pensionID;
            this._month = _month;
            this._year = _year;

        }
    }
    public class ActualContributionEventArgs : EventArgs
    {
        private string _mdaid = string.Empty;
        private string _month = string.Empty;
        private string _year = string.Empty;
        public string mdaID
        {
            get
            {
                return _mdaid;
            }
            set
            {
                this._mdaid = value;
            }
        }
        public string year
        {
            get
            {
                return _year;
            }
            set
            {
                this._year = value;
            }
        }
        public string month
        {
            get
            {
                return _month;
            }
            set
            {
                this._month = value;
            }
        }
        public ActualContributionEventArgs()
        {

        }

        public ActualContributionEventArgs(string _mdaid, string _month, string _year)
        {
            this._mdaid = _mdaid;
            this._month = _month;
            this._year = _year;

        }
    }
    public class MemberContributionToEdit
    {
        private MemberContributionEventArgs _memberContribution;
        public MemberContributionEventArgs MemberContribution
        {

            set
            {
                if (OnMemberContributionEditClicked != null) OnMemberContributionEditClicked(this, new MemberContributionEventArgs(value.pensionID, value.month, value.year));
                _memberContribution = value;
            }

        }
        public event MemberContributionEventHandler OnMemberContributionEditClicked;
    }
    public class ActualContributionToEdit
    {
        private ActualContributionEventArgs _memberContribution;
        public ActualContributionEventArgs ActualContribution
        {

            set
            {
                if (OnActualContributionEditClicked != null) OnActualContributionEditClicked(this, new ActualContributionEventArgs(value.mdaID, value.month, value.year));
                _memberContribution = value;
            }

        }
        public event ActualContributionEventHandler OnActualContributionEditClicked;
    }

    #endregion

    public delegate void BeneficiaryEventHandler(object sender, BeneficiaryEventArgs e);
    public delegate void MemberEvidenceEventHandler(object sender, MemberEvidenceEventArgs e);
    public delegate void MemberEventHandler(object sender, MemberEventArgs e);
    public delegate void ServiceBreakEventHandler(object sender, ServiceBreakEventArgs e);
    public class BeneficiaryEventArgs : EventArgs
    {
        private string _pid = string.Empty;
        private string _bid = string.Empty;
        public string pensionID 
        { 
            get {
                return _pid;
            } 
            set { 
                this._pid=value ;
            } 
        }
        public string beneficiaryID 
        { 
            get { 
                return _bid;
            } 
            set {
                this._bid=value;
            } 
        }

        public BeneficiaryEventArgs()
        { 
        
        }

        public BeneficiaryEventArgs(string _pensionID,string _beneficiearyID)
        {
            this._pid = _pensionID;
            this._bid = _beneficiearyID;

        }
    }
    public class BeneficiaryToEdit
    {
        private BeneficiaryEventArgs _beneficiary;
        public BeneficiaryEventArgs Beneficiary
        {

            set {
                if (OnBeneficiaryEditClicked != null) OnBeneficiaryEditClicked(this, new BeneficiaryEventArgs(value.pensionID,value.beneficiaryID));
                _beneficiary = value;
            }
        
        }
        public event BeneficiaryEventHandler OnBeneficiaryEditClicked;
    }
    public class ServiceBreakEventArgs : EventArgs
    {
        private string _pid = string.Empty;
        private string _sbid = string.Empty;
        public string pensionID
        {
            get
            {
                return _pid;
            }
            set
            {
                this._pid = value;
            }
        }
        public string servicebreakID
        {
            get
            {
                return _sbid;
            }
            set
            {
                this._sbid = value;
            }
        }

        public ServiceBreakEventArgs()
        {

        }

        public ServiceBreakEventArgs(string _pensionID, string _servicebreakID)
        {
            this._pid = _pensionID;
            this._sbid = _servicebreakID;

        }
    }
    public class ServiceBreakToEdit
    {
        private ServiceBreakEventArgs _serviceBreak;
        public ServiceBreakEventArgs ServiceBreak
        {

            set
            {
                if (OnServiceBreakEditClicked != null) OnServiceBreakEditClicked(this, new ServiceBreakEventArgs(value.pensionID, value.servicebreakID));
                _serviceBreak = value;
            }

        }
        public event ServiceBreakEventHandler OnServiceBreakEditClicked;
    }
    public class MemberEvidenceEventArgs : EventArgs
    {
        private string _pensionID = string.Empty;
        private string _evidencebyfunctionID = string.Empty;
        private string _servicebreakID = string.Empty;
        public string servicebreakID
        {
            get
            {
                return _servicebreakID;
            }
            set
            {
                this._servicebreakID = value;
            }
        }
        public string pensionID
        {
            get
            {
                return _pensionID;
            }
            set
            {
                this._pensionID = value;
            }
        }
        public string evidencebyfunctionID
        {
            get
            {
                return _evidencebyfunctionID;
            }
            set
            {
                this._evidencebyfunctionID = value;
            }
        }

        public MemberEvidenceEventArgs()
        {

        }

        public MemberEvidenceEventArgs(string _pensionID, string _evidencebyFunctionID)
        {
            this._pensionID = _pensionID;
            this._evidencebyfunctionID = _evidencebyFunctionID;

        }
        public MemberEvidenceEventArgs(string _pensionID, string _evidencebyFunctionID, string _servicebreakID)
        {
            this._pensionID = _pensionID;
            this._evidencebyfunctionID = _evidencebyFunctionID;
            this._servicebreakID = _servicebreakID;

        }
    }
    public class MemberEvidenceToEdit
    {
        private MemberEvidenceEventArgs _memberevidence;
        public MemberEvidenceEventArgs MemberEvidence
        {

            set
            {
                if (OnMemberEvidenceEditClicked != null) OnMemberEvidenceEditClicked(this, new MemberEvidenceEventArgs(value.pensionID, value.evidencebyfunctionID));
                _memberevidence = value;
            }

        }
        public event MemberEvidenceEventHandler OnMemberEvidenceEditClicked;
    }
    public class MemberServiceBreakEvidenceToEdit
    {
        private MemberEvidenceEventArgs _memberevidence;
        public MemberEvidenceEventArgs MemberEvidence
        {

            set
            {
                if (OnMemberServiceBreakEvidenceToEditClicked != null) OnMemberServiceBreakEvidenceToEditClicked(this, new MemberEvidenceEventArgs(value.pensionID, value.evidencebyfunctionID,value.servicebreakID));
                _memberevidence = value;
            }

        }
        public event MemberEvidenceEventHandler OnMemberServiceBreakEvidenceToEditClicked;
    }
    public class MemberEventArgs : EventArgs
    {
        private string _pensionID = string.Empty;
        public string pensionID
        {
            get
            {
                return _pensionID;
            }
            set
            {
                this._pensionID = value;
            }
        }

     
        public MemberEventArgs()
        {

        }

        public MemberEventArgs(string _pensionID)
        {
            this._pensionID = _pensionID;
        }

    }
    public class MemberToEdit
    {
        private MemberEventArgs _member;
        public MemberEventArgs Member
        {

            set
            {
                if (OnMemberEditClicked != null) OnMemberEditClicked(this, new MemberEventArgs(value.pensionID));
                _member = value;
            }
            get { return _member; }

        }
        public event MemberEventHandler OnMemberEditClicked;
    }
}

