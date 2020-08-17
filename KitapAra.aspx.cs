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
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kart"] == null) //Sayfaların güvenliği için Sayfa yüklendiğinde kart kontrolü yapılmaktadır.
            Response.Redirect("hata.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection();
        baglanti.ConnectionString = ("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/veri.accdb"));
        baglanti.Open();
        //Bağlantı Açıldı
        OleDbCommand sorgu = new OleDbCommand();
        sorgu.Connection = baglanti;
        sorgu.CommandText = "select * from kitap where kid=" + Convert.ToInt32(TextBox1.Text);
        //Sorugu oluşturuldu
        GridView1.DataSource = sorgu.ExecuteReader();
        GridView1.DataBind();
    }
}
