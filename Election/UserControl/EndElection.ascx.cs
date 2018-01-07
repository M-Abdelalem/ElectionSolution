using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.UserControl
{
    public partial class EndElection : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["election"] != null)
            {
                string el = Session["election"].ToString();
                if (el == "start")
                {
                    Label1.Text = "انتظر حتى نتهى الانتخابات";
                    LinkButton1.Visible = false;
                    LinkButton221.Visible = false;
                }
                if (el == "end")
                {
                    Label1.Text = "وقت الانتخابات انتهى ";
                    LinkButton1.Visible = true;
                    LinkButton221.Visible = true;
                }
            }
            else
            {
                Label1.Text = "انتظر حتى تبدأ الانتخابات";
                LinkButton1.Visible = false;
                LinkButton221.Visible = false;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../UserPages/Result.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("../UserPages/CandidateSort.aspx");
        }
    }
}