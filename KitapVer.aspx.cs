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
        LinkButton1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection();
        baglanti.ConnectionString = ("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/veri.accdb"));
        baglanti.Open();
        //Bağlantı Açıldı
        OleDbCommand sorgu = new OleDbCommand();
        sorgu.Connection = baglanti;
        sorgu.CommandText = "select * from kitap where kid=" + Convert.ToInt32(TextBox6.Text);
        //Sorgu Açıldı
        OleDbDataReader dizi = sorgu.ExecuteReader();
        if (dizi.Read())
        {
            OleDbConnection baglanti1 = new OleDbConnection();
            baglanti1.ConnectionString = ("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/App_Data/veri.accdb"));
            baglanti1.Open();
            //Bağlantı1 Açıldı
            OleDbCommand sorgu1 = new OleDbCommand();
            sorgu1.Connection = baglanti1;
            sorgu1.CommandText = "select * from Odunc where kitapbarkodno='" + TextBox6.Text + "'";
            //Sorgu1 Açıldı
            OleDbDataReader dizi1 = sorgu1.ExecuteReader();
            if (dizi1.Read())
            {
                dizi1.Close();
                Label1.Text = "Aynı kitaptan sizde zaten bulunmakta!";
            }
            else
            {
                dizi.Close();
                sorgu.CommandText = "insert into Odunc(adi,soyadi,kno,almatarihi,vermetarihi,kitapbarkodno) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox6.Text + "') ";
                sorgu.ExecuteNonQuery();
                int ver = Convert.ToInt32(DropDownList1.Text);
                int al = Convert.ToInt32(DropDownList2.Text);
                int fark = ver - al;
                Label1.Text = "Sayın " + TextBox1.Text + " " + TextBox2.Text + " Kitabınızı teslim etme süresi: " + fark.ToString() + " Haftadır lütfen kitabınızı zamanında teslim ediniz.";
            }
            baglanti1.Close();
            
        }
        else
        {
            LinkButton1.Visible = true;
            Label1.Text = "Böyle bir barkod nolu kitabımız bulunmamaktadır! Kitaplığımıza gitmek için";
        }
        baglanti.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("KitapAra.aspx");
    }
}
