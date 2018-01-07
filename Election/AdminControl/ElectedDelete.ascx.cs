using Election.Dal;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminControl
{
    public partial class Ctrl_ElectedManager : System.Web.UI.UserControl
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

        //protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        //{
        //    DropDownList ddl2 = (DropDownList)ListView1.InsertItem.FindControl("ddl2");
        //    e.Values["Commission_fk"] = ddl2.SelectedValue;
        //    FileUpload fu3 = (FileUpload)ListView1.InsertItem.FindControl("fu2");
        //    TextBox txt2 = (TextBox)ListView1.InsertItem.FindControl("CardnumberTextBox");
        //    if (fu3.HasFile)
        //    {
        //        string imagename = txt2.Text.ToString();
        //        string extention = Path.GetExtension(fu3.PostedFile.FileName);
        //        fu3.PostedFile.SaveAs(Server.MapPath("~/Images/img_elected/" +imagename+extention));
        //        string filepath = "~/Images/img_elected/" + imagename+extention;
        //        e.Values["Image"] = filepath.ToString();
        //    }

        //}

        //protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        //{
        //    DropDownList ddl1 = (DropDownList)ListView1.EditItem.FindControl("ddl1");
        //    e.NewValues["Commission_fk"] = ddl1.SelectedValue;
        //    FileUpload fu4 = (FileUpload)ListView1.EditItem.FindControl("fu1");
        //    TextBox txt1 = (TextBox)ListView1.EditItem.FindControl("CardnumberTextBox");
        //    if (fu4.HasFile)
        //    {
        //        string extention = Path.GetExtension(fu4.PostedFile.FileName);
        //        string imagename = txt1.Text.ToString();
        //        fu4.PostedFile.SaveAs(Server.MapPath("~/Images/img_elected/"+ imagename+extention));
        //        string filepath = "~/Images/img_elected/" + imagename + extention;
        //        e.NewValues["Image"] = filepath.ToString();
        //    }
        //}

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            ElectedDal d = new ElectedDal();
            d.DeleteRowElected((txt_delete.Text).ToString());
        }
    }
}
