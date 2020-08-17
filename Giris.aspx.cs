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
        sorgu.CommandText = "select * from uye where kad='" + TextBox1.Text + "'";
        //Sorgu oluşturuldu
        OleDbDataReader dizi;
        dizi = sorgu.ExecuteReader();
        if (dizi.Read())
        {
            if (dizi["parola"].ToString() == TextBox2.Text)//Eğer uye tablosundaki parola sütünundaki üyelerin parolası ile textBox2'ye girilen değer ile eşleşiyor ise 
            {                                              //tablodaki üyeye ait olan tcad sütünundaki değeri session kartı olarak üye üzerinde tanımla
                Session["kart"] = dizi["tcad"].ToString();
                Response.Redirect("Anasayfa.aspx");
            }
            else
                Label1.Text = "Sayın "+TextBox1.Text+" Şifrenizi yanlış girdiniz!";
        }
        else
        {
            LinkButton1.Visible = true;
            Label1.Text = "Böyle bir kayıt yoktur.Kaydolmak için";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Üye Ol.aspx");
    }
}
