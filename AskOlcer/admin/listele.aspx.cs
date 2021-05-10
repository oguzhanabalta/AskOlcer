using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AskOlcer.Entitiy;
namespace AskOlcer.admin
{
    public partial class listele : System.Web.UI.Page
    {
        AskOlcerDBEntities db = new AskOlcerDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciadi"] == null)
            {

                Response.Redirect("~/girislogin.aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz:" + Session["kullaniciadi"].ToString());
            }

            Repeater1.DataSource = db.TBLVERILER.ToList();
            Repeater1.DataBind();
        }
    }
}