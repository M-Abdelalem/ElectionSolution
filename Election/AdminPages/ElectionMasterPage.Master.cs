using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminPages
{
    public partial class ElectionMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            HttpCookie local = Request.Cookies["Servername"];
            Response.Cookies["Servername"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("../AdminPages/AdminLogin.aspx");
        }
    }
}