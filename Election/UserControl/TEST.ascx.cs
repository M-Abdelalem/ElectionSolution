using Election.AdminControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.UserControl
{
    public partial class TEST : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Election.AdminControl.Login c = new Election.AdminControl.Login();
            c.Visible = false;

        }
    }
}