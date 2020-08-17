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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection();
        baglanti.ConnectionString = ("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/veri.accdb"));
        baglanti.Open();
        //Bağlantı Oluşturuldu.
        OleDbCommand sorgu = new OleDbCommand();
        sorgu.Connection = baglanti;
        sorgu.CommandText = "select * from kitap where kid=" + Convert.ToInt32(TextBox6.Text);
        //Sorgu bağlantısı Oluşturuldu.
        OleDbDataReader dizi = sorgu.ExecuteReader();
        if (dizi.Read())//Eğer tabloda bir textbox6'daki kitapNo'ya sahip bir id yakalarsa hata mesajı versin eğer yoksa kayıt yapsın.
        {
            Label1.Text = "Bu KitapNo da bir kitap eklenemez, lütfen KitapNo'yu değiştiriniz.";
        }
        else
        {
            dizi.Close();
            sorgu.CommandText = "insert into kitap(ktürü,kyazari,yayinevi,kadi,basimtarihi,kid,rafno) values ('" +DrpTur.Text+ "','" + DrpYazar.Text + "','" + DrpYayinEvi.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','"+DropDownList1.Text+"') ";
            sorgu.ExecuteNonQuery();
            Label1.Text = "Kitap Eklenmiştir!";
        }
        baglanti.Close();
    }
}
