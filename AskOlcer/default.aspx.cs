using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AskOlcer.Entitiy;


namespace AskOlcer
{
    public partial class _default : System.Web.UI.Page
    {
        AskOlcerDBEntities db = new AskOlcerDBEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                Panel1.Visible = true;
            
            
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var gelensayi = Convert.ToInt32(lovevalue.Text);
            if (gelensayi < 10)
            {
                Label1.Text =lname.Text+ "  senden nefret ediyor sen hala onu askon saniyorsun :(:((:(:(";
            }
            else if(gelensayi>=10 && gelensayi<20)
            {
                Label1.Text = lname.Text+"'n sana günahını bile vermez kuzum ne aşkı";
            }
            else if (gelensayi >= 20 && gelensayi < 30)
            {
                Label1.Text =lname.Text+ ", İmkanı olsa cebine uyuşturucu koyar polise ihbar eder.";
            }
            else if (gelensayi >= 30 && gelensayi < 40)
            {
                Label1.Text = "Yol yakınken "+lname.Text +"'den vazgeç bu seni çok üzer canim";
            }
            else if (gelensayi >= 40 && gelensayi < 50)
            {
                Label1.Text =lname.Text +", baskalariya konuşuyor yol yakınken sen bunu sal gitsin";
            }
            else if (gelensayi >= 50 && gelensayi < 60)
            {
                Label1.Text =lname.Text+ ", seninle gönül eğlendiriyor yani serefsizlik yapiyor";
            }
            else if (gelensayi >= 60 && gelensayi < 70)
            {
                Label1.Text =lname.Text+ " ile sevgiliyseniz ittir kaktır devam eden bir ilişkiniz var bence ayrılın";
            }
            else if (gelensayi >= 70 && gelensayi < 80)
            {
                Label1.Text =lname.Text+ ", seni seviyor olabilir ama muhtemelen bunu sana yansıtmak konusunda pek başarili değil.";
            }
            else if (gelensayi >= 80 && gelensayi < 90)
            {
                Label1.Text =lname.Text+ ", senin için her şeyi yapar ama aldatadabilir dikkatli ol valla";
            }
            else if(gelensayi >= 90 && gelensayi < 95)
            {
                Label1.Text ="Sevgili arkadaşım "+lname.Text+ " muhtemelen" +lname.Text+" seni çok seviyor ama sen yine de bu tarz testlere inanma, seni yüzde  "+lovevalue.Text+" sevmesi pek bir şey ifade etmez :d";
            }
            else
            {
                Label1.Text = "YARIN EVLEN BUNUN GİBİSİNİ BAŞKA BİR YERDE BULAMAZSINNNNN!(AMA ALDATABİLİR BİZE GÜVENME)";
            }

            TBLVERILER T = new TBLVERILER();
            T.Kullanici = name.Text;
            T.Askosu = lname.Text;
            T.Yorum = Label1.Text;
            T.Yuzde = lovevalue.Text;
            db.TBLVERILER.Add(T);
            db.SaveChanges();

            
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");

        }
    }
}