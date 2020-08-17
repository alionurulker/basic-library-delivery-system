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
        if (Session["kart"] == null)
            Response.Redirect("hata.aspx");
        //Sayfa Yüklendiğinde Odunc Tablosundaki bütün listeyi ekrana göstericek
        OleDbConnection baglanti = new OleDbConnection();
        baglanti.ConnectionString = ("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/veri.accdb"));
        baglanti.Open();
        //Bağlantı Tamam
        OleDbCommand sorgu = new OleDbCommand();
        sorgu.Connection = baglanti;
        sorgu.CommandText = "select * from Odunc";
        //Sorgu Tamam
        GridView1.DataSource = sorgu.ExecuteReader();
        GridView1.DataBind();
        baglanti.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection();
        baglanti.ConnectionString = ("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/veri.accdb"));
        baglanti.Open();
        //Bağlanti Oluşturuldu
        OleDbCommand sorgu = new OleDbCommand();
        sorgu.Connection = baglanti;
        sorgu.CommandText = "select * from Odunc where kitapbarkodno='" + TextBox1.Text + "'";
        //Sorgu Oluşturuldu
        OleDbDataReader dizi = sorgu.ExecuteReader();
        if (dizi.Read())
        {
            dizi.Close();
            sorgu.CommandText = "delete from Odunc where kitapbarkodno='" + TextBox1.Text + "'";
            sorgu.ExecuteNonQuery();
            sorgu.CommandText = "select * from Odunc";
            GridView1.DataSource = sorgu.ExecuteReader();
            GridView1.DataBind();
        }
        else
        {
            Label1.Text = "İyede etmek istenilen kitabın barkodu düzgün girilmedi!";
        }
        baglanti.Close();
    }
}
