using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.UserControl
{
    public partial class Ctrl_Result : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["showresult"] == null)
            {
                ListView1.Visible = false;
            }
            else
            {
                string show = Session["showresult"].ToString();
                if (show != "yes")
                {
                    ListView1.Visible = false;
                }
                else
                {
                    ListView1.Visible = true;
                    lbl1.Visible = false;
                }
            }
        }
    }
}