using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminControl
{
    public partial class Elected_Update : System.Web.UI.UserControl
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
            }
            else
            {
                if (election == "start")
                {
                    ListView1.Visible = true;
                    lbl_message.Visible = false;
                }
               if(election=="end")
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
            Session["CardNumber"] =(txt_search.Text);
        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {

        }

        protected void Lisiew1_ItemUpdated(object sender, ListViewUpdatedEventArgs e)
        {

        }

        protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            DropDownList ddl1 = (DropDownList)ListView1.EditItem.FindControl("ddl1");
            e.NewValues["Commission_fk"] = ddl1.SelectedValue;
            FileUpload fu4 = (FileUpload)ListView1.EditItem.FindControl("fu1");
            TextBox txt1 = (TextBox)ListView1.EditItem.FindControl("CardnumberTextBox");
            if (fu4.HasFile)
            {
                string extention = Path.GetExtension(fu4.PostedFile.FileName);
                string imagename = txt1.Text.ToString();
                fu4.PostedFile.SaveAs(Server.MapPath("~/Images/img_elected/" + imagename + extention));
                string filepath = "~/Images/img_elected/" + imagename + extention;
                e.NewValues["Image"] = filepath.ToString();
            }
        }

        
    }
}