using Election.Dal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminControl
{
    public partial class CommissionDelete : System.Web.UI.UserControl
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
              int time = Convert.ToInt32(Session["Time"]);
              string election = Session["election"].ToString();
                if (time != 0)
            {
                lbl_message.Text = "غير مسموح بالحذف انتظر حتى يتم الانتهاء من الانتخابات";
                lbl_message.Visible = true;
                LinkButton1.Visible = false;
                txt_delete.Visible = false;
            }
            else
            {
                if (election == "start")
                {

                    lbl_message.Visible = false;
                    LinkButton1.Visible = false;
                    txt_delete.Visible = false;
                }
                if (election == "end")
                {

                    lbl_message.Text = "تم الانتهاء من الانتخابات ";
                    lbl_message.Visible = true;
                    LinkButton1.Visible = false;
                    txt_delete.Visible = false;
                }
            }
            }
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            CommissionDal dl = new CommissionDal();
            dl.DeleteRow_Commission(Convert.ToInt32(txt_delete.Text));
        }
    }
}