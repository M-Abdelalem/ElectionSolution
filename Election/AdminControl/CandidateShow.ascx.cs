using Election.Dal;
using Election.Data;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Election.AdminControl
{
    public partial class CandidateShow : System.Web.UI.UserControl
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
            DropDownList ddl1 = (DropDownList)ListView1.EditItem.FindControl("ddl1");
            e.NewValues["Commission_fk"] = ddl1.SelectedValue;
            FileUpload fu4 = (FileUpload)ListView1.EditItem.FindControl("fu1");
            TextBox txt1 = (TextBox)ListView1.EditItem.FindControl("NumberTextBox");
            if (fu4.HasFile)
            {
                string extention = Path.GetExtension(fu4.PostedFile.FileName);
                string imagename = txt1.Text.ToString() + fu4.FileName.ToString();
                fu4.PostedFile.SaveAs(Server.MapPath("~/Images/img_candidate/" + imagename + extention));
                string filepath = "~/Images/img_candidate/" + imagename + extention;
                e.NewValues["Image"] = filepath.ToString();
            }
        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {

        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            CandidateData d = new CandidateData();
            int id = Convert.ToInt32(d.Id);
            CandidateDal c = new CandidateDal();
            c.DeleteCandidate1(id);
        }

        protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (Session["election"] != null || Session["Time"] != null)
            {
                string election = Session["election"].ToString();
                int time = Convert.ToInt32(Session["Time"]);
                if (election == "start" && time != 0)
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