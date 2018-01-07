using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Election.Data
{
    public class ElectionData
    {
        int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        int elected_fk;

        public int Elected_fk
        {
            get { return elected_fk; }
            set { elected_fk = value; }
        }
        int candidate_fk;

        public int Candidate_fk
        {
            get { return candidate_fk; }
            set { candidate_fk = value; }
        }
        int commission_fk;

        public int Commission_fk
        {
            get { return commission_fk; }
            set { commission_fk = value; }
        }
        int ElectedNumber;

        public int ElectedNumber1
        {
            get { return ElectedNumber; }
            set { ElectedNumber = value; }
        }
        int CandidateNumber;

        public int CandidateNumber1
        {
            get { return CandidateNumber; }
            set { CandidateNumber = value; }
        }
        int CommissionNumber;

        public int CommissionNumber1
        {
            get { return CommissionNumber; }
            set { CommissionNumber = value; }
        }
        String ElectedName;

        public String ElectedName1
        {
            get { return ElectedName; }
            set { ElectedName = value; }
        }
        String CandidateName;

        public String CandidateName1
        {
            get { return CandidateName; }
            set { CandidateName = value; }
        }
        String CommissionName;

        public String CommissionName1
        {
            get { return CommissionName; }
            set { CommissionName = value; }
        }
    }
}