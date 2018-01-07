using Election.Dal;
using Election.Data;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.UserControl
{
    public partial class Crtl_ElectedUser : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String filename =@"H:/mohamed/ALL_project_Vitual_Stdio/the program/emgucv-windows-universal-cuda 2.4.10.1940/bin/TrainedLabels.txt";
            using (StreamReader rdr = new StreamReader(filename))
            {
                String content = rdr.ReadToEnd();
                TextBox1.Text = content;
            }
           
            
            
            if (Session["election"] != null)
            {
                string elle = Session["election"].ToString();
                if (elle == "end")
                {
                    Response.Redirect("../UserPages/EndElection.aspx");
                }
            }
            else
            {
                Response.Redirect("../UserPages/Waiting.aspx");
            }
            if (Session["election"] == null)
            {
                //Response.Redirect("../UserPages/Waiting.aspx");
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                lbl_hour.Visible = false;
                lbl_minute.Visible = false;
                lbl_second.Visible = false;
            }
            else
            {
                //int time = Convert.ToInt32(Session["Time"]);
                //if (time>0)
                {
                    int second = Convert.ToInt32(Session["second"]);
                    int minute = Convert.ToInt32(Session["minute"]);
                    int hour = Convert.ToInt32(Session["hour"]);
                    lbl_second.Text = second.ToString();
                    lbl_minute.Text = minute.ToString();
                    lbl_hour.Text = hour.ToString();
                }
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = false;
            Button1.Visible = false;
            lbl_message.Text = "";
            ElectedDal ed1 = new ElectedDal();
            string m = (TextBox1.Text);
            int Commission_fk =Convert.ToInt32( ed1.commission_fk(m));
            int id =Convert.ToInt32( ed1.ReturnID(m));
            int no = ed1.Check_Elected(id);
            if (no == 0)
            {
                Session["ID"] =id;
                Session["Commission_FK"] = Commission_fk;
            }
            else
            {
                Session["ID"] = id;
                Response.Redirect("VoteInfo.aspx");
            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton l = (LinkButton)sender;
            Label lbl1 = (Label)l.Parent.FindControl("IdLabel");
            int id_candidate = Convert.ToInt32(lbl1.Text);
            Label lbl2 = (Label)l.Parent.FindControl("Commission_fkLabel");
            int id_commissiion = Convert.ToInt32(lbl2.Text);
            ElectionData election = new ElectionData();
            ElectionDal eledal = new ElectionDal();
            CandidateDal candal = new CandidateDal();
            ElectedDal ed = new ElectedDal();
            string n = (TextBox1.Text).ToString();
            int id = ed.ReturnID(n);
            election.Elected_fk = id;
            election.Commission_fk = id_commissiion;
            election.Candidate_fk = id_candidate;
            int no = ed.Check_Elected(id);
            if (no == 0)
            {
                eledal.InsertElection(election);
                Response.Redirect("OK.aspx");
            }
            else
            {
                Response.Redirect("VoteInfo.aspx");
            }
        }

        protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}