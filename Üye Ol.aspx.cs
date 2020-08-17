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
        LinkButton1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection();
        baglanti.ConnectionString = ("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/veri.accdb"));
        baglanti.Open();
        //Bağlanti oluşturuldu
        OleDbCommand sorgu = new OleDbCommand();
        sorgu.Connection = baglanti;
        sorgu.CommandText = "select * from uye where kad='" + TextBox4.Text + "'";
        //Sorgu Oluşturuldu
        OleDbDataReader dizi = sorgu.ExecuteReader();
        if (dizi.Read())
        {
            Label1.Text = "Lütfen başka bir Kullanıcı Adı giriniz.";
        }
        else
        {
            dizi.Close();
            sorgu.CommandText = "insert into uye(kad,parola,kno,tcad,tcsoyad) values ('" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "') ";
            sorgu.ExecuteNonQuery();
            LinkButton1.Visible = true;
            Label1.Text = "Başarıyla Kayıt Yapılmıştır Giriş Yapmak için";
        }
        baglanti.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Giris.aspx");
    }
}
