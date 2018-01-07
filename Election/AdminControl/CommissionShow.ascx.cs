using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminControl
{
    public partial class CommissionShow : System.Web.UI.UserControl
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
                int time = Convert.ToInt32(Session["Time"]);
               if (time != 0)
               {
                   lbl_message.Text = "غير مسموح التعديل او الحذف انتظر حتى يتم الانتهاء من الانتخابات";
                   lbl_message.Visible = true;
               }
               else
               {
                   if (election == "start")
                   {
                       ListView1.Visible = true;
                       lbl_message.Visible = false;
                   }
                  if (election == "end")
                   {
                       lbl_message.Text = "تم الانتهاء من الانتخابات ";
                       lbl_message.Visible = true;
                   }
               } 
            }
            
        }

        protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {

        }

        protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (Session["election"] != null || Session["Time"] != null)
            {
                string election = Session["election"].ToString();
                int time = Convert.ToInt32(Session["Time"]);
                if (election == "start" & time != 0)
                {
                    if (e.Item.ItemType == ListViewItemType.DataItem)
                    {
                        LinkButton lb1 = (LinkButton)e.Item.FindControl("EditButton");
                        LinkButton lb2 = (LinkButton)e.Item.FindControl("DeleteButton");
                        lb1.Visible = false;
                        lb2.Visible = false;
                    }
                }
                else
                {
                    if (e.Item.ItemType == ListViewItemType.DataItem)
                    {
                        LinkButton lb1 = (LinkButton)e.Item.FindControl("EditButton");
                        LinkButton lb2 = (LinkButton)e.Item.FindControl("DeleteButton");
                        lb1.Visible = false;
                        lb2.Visible = false;
                    }
                    lbl_message.Text = "الانتخابات انتهت الذهاب الى النتيجة ";
                }
            }
        }
    }
}