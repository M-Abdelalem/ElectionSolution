using Election.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace Election.Dal
{
    public class ElectedDal
    {
        public void InsertElected(ElectedData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert_Elected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Name", e.Name);
            cmd.Parameters.AddWithValue("Image", e.Image);
            cmd.Parameters.AddWithValue("Number", e.Number);
            cmd.Parameters.AddWithValue("CardNumber", e.Cardnumber);
            cmd.Parameters.AddWithValue("Commission_FK", e.Commission_fk);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void UpdateElected(ElectedData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Update_Elected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", e.Id);
            cmd.Parameters.AddWithValue("Name", e.Name);
            cmd.Parameters.AddWithValue("Image", e.Image);
            cmd.Parameters.AddWithValue("Number", e.Number);
            cmd.Parameters.AddWithValue("CardNumber", e.Cardnumber);
            cmd.Parameters.AddWithValue("Commission_FK", e.Commission_fk);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void DeleteElected(ElectedData e)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Delete_Elected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", e.Id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void DeleteRowElected(string cardnumber)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("DeleteRow_Elected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("CardNumber",cardnumber);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public int commission_fk(string i)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Commission_FK", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("CardNumber",i);
            con.Open();
            int com_fk=Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            return com_fk;
        }
        public int Check_Elected(int i)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Check_Elected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", i);
            con.Open();
            int q = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            return q;
        }
        public List<ElectedData> SelectAll_Elected()
        {
            List<ElectedData> clist=new List<ElectedData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SelectAll_Elected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {

                ElectedData e = new ElectedData();
                e.Id = Convert.ToInt32(rdr["ID"]);
                e.Name = rdr["Name"].ToString();
                e.Image = rdr["Image"].ToString();
                e.Number = Convert.ToInt32(rdr["Number"]);
                e.Cardnumber =(rdr["CardNumber"]).ToString();
                e.Commission_fk = Convert.ToInt32(rdr["Commission_FK"]);
                e.Commissionname = rdr["CommissionName"].ToString();
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
        public List<ElectedData> SelectRow_Elected(string i)
        {
            List<ElectedData> clist = new List<ElectedData>();
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SelectRow_Elected", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CardNumber", i);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {

                ElectedData e = new ElectedData();
                e.Id = Convert.ToInt32(rdr["ID"]);
                e.Name = rdr["Name"].ToString();
                e.Image = rdr["Image"].ToString();
                e.Number = Convert.ToInt32(rdr["Number"]);
                e.Cardnumber =(rdr["CardNumber"]).ToString();
                e.Commission_fk = Convert.ToInt32(rdr["Commission_FK"]);
                e.Commissionname = rdr["CommissionName"].ToString();
                clist.Add(e);
            }
            con.Close();
            return clist;
        }
        public int ReturnID(string i)
        {
            SqlConnection con = new SqlConnection("Data Source=MOHAMED-PC;Initial Catalog=Elections;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Return_ID", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CardNumber", i);
            con.Open();
            int id = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            return id;
        }
    }
}