using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminPages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lb_login_Click(object sender, EventArgs e)
        {
            HttpCookie local = new HttpCookie("Servername");
            if ((txt_name.Text == "admin" || txt_name.Text == "Admin") && (txt_password.Text == "12345"))
            {
                txt_name.Text = "";
                txt_password.Text = "";
                local.Values.Add("confirom", "ok");
                Response.Cookies.Add(local);
                Response.Redirect("../AdminPages/ElectedShow.aspx");
                local.Expires = DateTime.Now.AddDays(5);
            }
            else
            {
                local.Values.Add("confirom", "not ok");
            }
        }
    }
}