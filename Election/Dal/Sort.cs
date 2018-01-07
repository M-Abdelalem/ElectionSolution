using Election.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Election.Dal
{
    public class Sort
    {
        public List<ResultData> SelectSort()
        {
            List<ResultData> clist = new List<ResultData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Sort", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                ResultData e = new ResultData();
                e.Candidate_fk = Convert.ToInt32(rdr["Candidate_FK"]);
                e.Candidatename = rdr["Name"].ToString();
                e.Commission_fk = Convert.ToInt32(rdr["Commission_FK"]);
                e.Commissionname = (rdr["Description"]).ToString();
                e.Votenumber = Convert.ToInt32(rdr["VoteNumber"]);             
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
        public List<ResultData> SelectResult()
        {
            List<ResultData> clist = new List<ResultData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Result", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                ResultData e = new ResultData();
                e.Candidate_fk = Convert.ToInt32(rdr["Candidate_FK"]);
                e.Candidatename = rdr["Name"].ToString();
                e.Commission_fk = Convert.ToInt32(rdr["Commission_FK"]);
                e.Commissionname = (rdr["Description"]).ToString();
                e.Votenumber = Convert.ToInt32(rdr["VoteNumber"]);
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
    }
}