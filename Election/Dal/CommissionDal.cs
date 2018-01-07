using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Election.Data;
namespace Election.Dal
{
    public class CommissionDal
    {
        public void InsertCommission(CommissionData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Commission", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Number", e.Number);
            cmd.Parameters.AddWithValue("Description", e.Description);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void UpdateCandidate(CommissionData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Commission", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", e.Id);
            cmd.Parameters.AddWithValue("Number", e.Number);
            cmd.Parameters.AddWithValue("Description", e.Description);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void DeleteCommission(CommissionData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Commission", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", e.Id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void DeleteRow_Commission(int i)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("DeleteRow_Commission", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("CommissionNumber", i);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public List<CommissionData> SelectAll_Commission()
        {
            List<CommissionData> clist = new List<CommissionData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SelectAll_Commission", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {

                CommissionData e = new CommissionData();
                e.Id = Convert.ToInt32(rdr["ID"]);
                e.Number = Convert.ToInt32(rdr["Number"]);
                e.Description = (rdr["Description"]).ToString();
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
        public List<CommissionData> SelectRow_Candidate(int i)
        {
            List<CommissionData> clist = new List<CommissionData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SelectRow_Commission", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("CommissionNumber", i);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {

                CommissionData e = new CommissionData();
                e.Id = Convert.ToInt32(rdr["ID"]);
                e.Number = Convert.ToInt32(rdr["Number"]);
                e.Description = (rdr["Description"]).ToString();
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
    }
}