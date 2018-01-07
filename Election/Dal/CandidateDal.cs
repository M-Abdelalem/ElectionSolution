using Election.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace Election.Dal
{
    public class CandidateDal
    {
        public void InsertCandidate(CandidateData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Candidate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Name", e.Name);
            cmd.Parameters.AddWithValue("Image", e.Image);
            cmd.Parameters.AddWithValue("Number", e.Number);
            cmd.Parameters.AddWithValue("Information", e.Information);
            cmd.Parameters.AddWithValue("Commission_FK", e.Commission_fk);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        
        public void UpdateCandidate(CandidateData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Candidate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", e.Id);
            cmd.Parameters.AddWithValue("Name", e.Name);
            cmd.Parameters.AddWithValue("Image", e.Image);
            cmd.Parameters.AddWithValue("Number", e.Number);
            cmd.Parameters.AddWithValue("Information", e.Information);
            cmd.Parameters.AddWithValue("Commission_FK", e.Commission_fk);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void UpdateCandidate1(CandidateData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("updatecandidate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", e.Id);
            cmd.Parameters.AddWithValue("@Candidate_FK", e.Id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void DeleteCandidate(CandidateData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Candidate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", e.Id);
            con.Open();
            cmd.ExecuteNonQuery();
            
            con.Close();
        }
        public void DeleteCandidate1(int i)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("deletecandidate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID",i);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void DeleteRow_Candidate(int i)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("DeleteRow_Candidate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Number", i);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public int return_id(int i)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("return_idcandidate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Number", i);
            con.Open();
            int j =Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            return j;
        }
        public List<CandidateData> SelectAll_Candidate()
        {
            List<CandidateData> clist = new List<CandidateData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SelectAll_Candidate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {

                CandidateData e = new CandidateData();
                e.Id = Convert.ToInt32(rdr["ID"]);
                e.Name = rdr["Name"].ToString();
                e.Image = rdr["Image"].ToString();
                e.Number = Convert.ToInt32(rdr["Number"]);
                e.Information =(rdr["Information"]).ToString();
                e.Commission_fk = Convert.ToInt32(rdr["Commission_FK"]);
                e.Commissionname = (rdr["CommissionName"]).ToString();
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
        public List<CandidateData> SelectRow_Candidate(int i)
        {
            List<CandidateData> clist = new List<CandidateData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SelectRow_Candidate", con);
            cmd.Parameters.AddWithValue("Number", i);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                CandidateData e = new CandidateData();
                e.Id = Convert.ToInt32(rdr["ID"]);
                e.Name = rdr["Name"].ToString();
                e.Image = rdr["Image"].ToString();
                e.Number = Convert.ToInt32(rdr["Number"]);
                e.Information = (rdr["Information"]).ToString();
                e.Commission_fk = Convert.ToInt32(rdr["Commission_FK"]);
                e.Commissionname = (rdr["CommissionName"]).ToString();
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
        public List<CandidateData> SelectRow1_Candidate(int i)
        {
            List<CandidateData> clist = new List<CandidateData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SelectRow1_Candidate", con);
            cmd.Parameters.AddWithValue("Number", i);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                CandidateData e = new CandidateData();
                e.Id = Convert.ToInt32(rdr["ID"]);
                e.Name = rdr["Name"].ToString();
                e.Image = rdr["Image"].ToString();
                e.Number = Convert.ToInt32(rdr["Number"]);
                e.Information = (rdr["Information"]).ToString();
                e.Commission_fk = Convert.ToInt32(rdr["Commission_FK"]);
                e.Commissionname = (rdr["CommissionName"]).ToString();
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
    }
}