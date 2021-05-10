using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AskOlcer.Entitiy;

namespace AskOlcer
{
    public partial class girislogin : System.Web.UI.Page
    {
        AskOlcerDBEntities db = new AskOlcerDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBLADMIN
                        where x.kullaniciadi == TextBox1.Text && x.sifre == TextBox2.Text
                        select x;
            if (sorgu.Any())
            {
                Session.Add("kullaniciadi", TextBox1.Text);
                Response.Redirect("/admin/listele.aspx");
            }
            else
            {

                Label1.Text = "Kullanıcı adı veya şifreniz yanlış lütfen tekrar deneyiniz.";
                Panel1.Visible = true;

            }
        }
    }
}