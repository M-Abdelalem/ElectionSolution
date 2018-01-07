using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminControl
{
    public partial class ElectedAdd : System.Web.UI.UserControl
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
                    if (election == "end")
                    {
                        ListView1.Visible = false;
                        lbl_message.Text = "تم الانتهاء من الانتخابات ";
                        lbl_message.Visible = true;
                    }
                }
            }
        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            DropDownList ddl2 = (DropDownList)ListView1.InsertItem.FindControl("ddl2");
            e.Values["Commission_fk"] = ddl2.SelectedValue;
            FileUpload fu3 = (FileUpload)ListView1.InsertItem.FindControl("fu2");
            TextBox txt2 = (TextBox)ListView1.InsertItem.FindControl("CardnumberTextBox");
            if (fu3.HasFile)
            {
                string imagename = txt2.Text.ToString();
                string extention = Path.GetExtension(fu3.PostedFile.FileName);
                fu3.PostedFile.SaveAs(Server.MapPath("~/Images/img_elected/" + imagename + extention));
                string filepath = "~/Images/img_elected/" + imagename + extention;
                e.Values["Image"] = filepath.ToString();
            }
        }

        protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {

        }
    }
}