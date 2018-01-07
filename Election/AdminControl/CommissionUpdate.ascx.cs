using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminControl
{
    public partial class CommissionUpdate : System.Web.UI.UserControl
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
                lb_search.Visible = false;
                txt_search.Visible = false;
                string election = Session["election"].ToString();
                int time = Convert.ToInt32(Session["Time"]);
            if (time != 0)
            {
                ListView1.Visible = false;
                lbl_message.Text = "غير مسموح بالإضافة انتظر حتى يتم الانتهاء من الانتخابات";
                lbl_message.Visible = true;
                lb_search.Visible = false;
                txt_search.Visible = false;
            }
            else
            {
                if (election == "start")
                {
                    ListView1.Visible = true;
                    lbl_message.Visible = false;
                    lb_search.Visible = false;
                    txt_search.Visible = false;
                }
                if (election == "end")
                {
                    ListView1.Visible = false;
                    lbl_message.Text = "تم الانتهاء من الانتخابات ";
                    lbl_message.Visible = true;
                }
            }
            }
           
        }

        protected void lb_search_Click(object sender, EventArgs e)
        {
            Session["CommissionNumber"] = Convert.ToInt32(txt_search.Text);
        }
    }
}