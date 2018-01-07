using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Election.Data
{
    public class ResultData
    {
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
        string candidatename;

        public string Candidatename
        {
            get { return candidatename; }
            set { candidatename = value; }
        }

        string commissionname;

        public string Commissionname
        {
            get { return commissionname; }
            set { commissionname = value; }
        }

       
        int votenumber;

        public int Votenumber
        {
            get { return votenumber; }
            set { votenumber = value; }
        }
    }
}