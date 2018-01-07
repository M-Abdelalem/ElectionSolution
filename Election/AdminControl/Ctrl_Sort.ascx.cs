using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminControl
{
    public partial class Ctrl_Sort : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie local = Request.Cookies["Servername"];
            if (local == null)
            {
                Response.Redirect("../AdminPages/AdminLogin.aspx");
            }
            
            else
            {
                string confirm = local.Values["confirom"].ToString();
                if (confirm != "ok")
                {
                    Response.Redirect("../AdminPages/AdminLogin.aspx");
                }
               
            }
            if (Session["election"] != null || Session["Time"] != null)
            {
                string election = Session["election"].ToString();
                if (election == "start")
                {
                    lb_sort.Visible = false;
                }
              if (election == "end")
                {
                    lb_sort.Visible = true;
                    Panel1.Visible = true;
                }
            }
        }

        protected void lb_sort_Click(object sender, EventArgs e)
        {
            
       
        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            if (Session["election"] != null)
            {
                string s = Session["election"].ToString();
                int time = Convert.ToInt32(Session["Time"]);
                if (s == "end" && time == 0)
                {
                    lb_sort.Visible = true;
                    Session["showsort"] = "yes".ToString();
                }
            }
        }
    }
}