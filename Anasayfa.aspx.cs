using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {//Eğer Sessiondaki kart değeri boş ise giriş yapılmamış demekti bu yüzden hata.aspx'e yönlendirilmiştir.
        if (Session["kart"] == null)
            Response.Redirect("hata.aspx");
        else
            Label1.Text = "Hoş Geldiniz Sayın " + Session["kart"].ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }
}
