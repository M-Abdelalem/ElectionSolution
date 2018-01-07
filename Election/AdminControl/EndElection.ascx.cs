using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminControl
{
    public partial class StartAndEndElection : System.Web.UI.UserControl
    {
        int hour1 , second1 , minute1 ;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie local = Request.Cookies["Servername"];
            if (local == null)
            {
                Response.Redirect("../AdminPages/AdminLogin.aspx");
            }
            else
            {
                string confirm = local.Values["confirom"];
                if (confirm != "ok")
                {
                    Response.Redirect("../AdminPages/AdminLogin.aspx");
                }
            }
            if (!IsPostBack)
            {
                hour1 = 0;
                second1 = 0;
                minute1 = 0;
            }
            if (Session["Time"] != null)
            {
                lbl_title.Text = "انتهاء الانتخابات بعد";
                txt_second.Visible = false;
                txt_minute.Visible = false;
                txt_hour.Visible = false;
                btn_start.Visible = false;
                LinkButton1.Visible = true;
                lbl_ho.Visible = true;
                lbl_min.Visible = true;
                lbl_sec.Visible = true;
            }
           
        }

        protected void statr(object sender, EventArgs e)
        {
            int second = Convert.ToInt32(txt_second.Text);
            int minute = Convert.ToInt32(txt_minute.Text);
            int hour = Convert.ToInt32(txt_hour.Text);
            int totaltime = (hour * 60 * 60) + (minute * 60) + (second);
            Session["Time"] = totaltime.ToString();
            btn_start.Visible = false;
            LinkButton1.Visible = true;
            Session["election"] = "start";
            lbl_title.Text = "انتهاء الانتخابات بعد";
            txt_second.Visible = false;
            txt_minute.Visible = false;
            txt_hour.Visible = false;
            
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (Session["time"] != null)
            {
                int i = Convert.ToInt32(Session["Time"]);
                if (i != 0)
                {
                    i = i - 1;
                    int j = i;
                    hour1 = j / 3600;
                    j = j - (hour1 * 3600);
                    minute1 = j / 60;
                    j = j - (minute1 * 60);
                    second1 = j;
                    Session["Time"] = i.ToString();
                    Session["second"] = second1.ToString();
                    Session["minute"] = minute1.ToString();
                    Session["hour"] = hour1.ToString();
                    btn_start.Visible = false;
                    lbl_ho.Visible = true;
                    lbl_min.Visible = true;
                    lbl_sec.Visible = true;
                    lbl_ho.Text = Session["hour"].ToString();
                    lbl_min.Text = Session["minute"].ToString();
                    lbl_sec.Text = Session["second"].ToString();
                }
                else
                {
                    Timer1.Enabled = false;
                    Session["election"] = "end";
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["Time"] != null)
            {
                lbl_title.Text = "انتهاء الانتخابات بعد";
                LinkButton1.Visible = true;
                lbl_ho.Visible = true;
                lbl_min.Visible = true;
                lbl_sec.Visible = true;
            }
        }
     
    }
}