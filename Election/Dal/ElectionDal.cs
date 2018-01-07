using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Election.Data;
namespace Election.Dal
{
    public class ElectionDal
    {
        public void InsertElection(ElectionData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Election", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Elected_FK", e.Elected_fk);
            cmd.Parameters.AddWithValue("@Candidate_FK", e.Candidate_fk);
            cmd.Parameters.AddWithValue("@Commission_FK", e.Commission_fk);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void UpdateElection(ElectionData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Election", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", e.Id);
            cmd.Parameters.AddWithValue("@Elected_FK", e.Elected_fk);
            cmd.Parameters.AddWithValue("@Candidate_FK", e.Candidate_fk);
            cmd.Parameters.AddWithValue("@Commission_FK", e.Commission_fk);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
       
        public void DeleteElection(ElectionData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Election", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", e.Id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public List<ElectionData> SelectAll_Election()
        {
            List<ElectionData> clist = new List<ElectionData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SelectAll_Election", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {

                ElectionData e = new ElectionData();
                e.Id = Convert.ToInt32(rdr["ID"]);
                e.ElectedNumber1 = Convert.ToInt32(rdr["ElectedNumber"]);
                e.ElectedName1 = rdr["ElectedName"].ToString();
                e.CandidateNumber1 = Convert.ToInt32(rdr["CandidateNumber"]);
                e.CandidateName1 = rdr["CandidateName"].ToString();
                e.CommissionNumber1 = Convert.ToInt32(rdr["CommissionNumber"]);
                e.CommissionName1 = rdr["CommissionName"].ToString();
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
        public List<ElectionData> SelectRow_Candidate(int id)
        {
            List<ElectionData> clist = new List<ElectionData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SelectRow_Election", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", id);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {

                ElectionData e = new ElectionData();
                e.Id = Convert.ToInt32(rdr["ID"]);
                e.ElectedNumber1 = Convert.ToInt32(rdr["ElectedNumber"]);
                e.ElectedName1 = rdr["ElectedName"].ToString();
                e.CandidateNumber1 = Convert.ToInt32(rdr["CandidateNumber"]);
                e.CandidateName1 = rdr["CandidateName"].ToString();
                e.CommissionNumber1 = Convert.ToInt32(rdr["CommissionNumber"]);
                e.CommissionName1 = rdr["CommissionName"].ToString();
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
    }
}