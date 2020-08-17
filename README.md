# Kutuphane_Sistemi
Yıl 2015, eğlencenin dibini gördüğüm zamanlar...

Giriş.aspx

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
using System.Data.OleDb; //MS Access Veri tabanı bağlantısı için bu kütüphane gereklidir.

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
        {//Eğer uye tablosundaki parola sütünundaki üyelerin parolası ile textBox2'ye girilen değer ile eşleşiyorsa
            if (dizi["parola"].ToString() == TextBox2.Text) 
            {         //tablodaki üyeye ait olan tcad sütünundaki değeri session kartı olarak üye üzerinde tanımla
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
<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="False" 
Font-Italic="True" Font-Names="Calibri" Font-Strikeout="False" 
onclick="LinkButton1_Click">Tıklayınız...</asp:LinkButton>

<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
Text="Giriş Yap" BackColor="#FF9999" BorderColor="#FF5050" 
BorderStyle="Outset" Font-Bold="True" />
 
Sayfanın Load özelliğinde linkbutton görünmezdir. LinkButton1.Visible = false;
Giriş butonu: TextBox’lar boş iken tıklandığında Yukarıdaki gibi hata mesajı verir. Linkbutton visible özelliği true olur ve linkbutton görünür . LinkButton1.Visible = true;
Tıklayınız butonu: LinkButton’dur. Tıklandığında Response.Redirect("Üye Ol.aspx");
Giriş yapıldığında kullanıcıya kart verilir ve istediği sayfalara giriş izni sağlanır Kartı olmayana Hata.aspx sayfası görünür. Anasayfa.aspx’e yönlendirilir.
Anasayfa.aspx
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
            Label1.Text = "Hoş Geldiniz Sayın "+Session["kart"].ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }
}
<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
Font-Underline="False" onclick="LinkButton1_Click">Çıkış</asp:LinkButton>
 
Sayfanın load özelliğinde label’de"Hoş Geldiniz Sayın"+Session["kart"].ToString(); tanımlıdır. Çıkış LinkButtonu Aynı Yöntem ile görünür olur.
Hata.aspx
 
Kaydol LinkButton dur. Font özellikleri değişmiştir. Tıklandığında Kayıtol.aspx’e yönlendirilir.
Kitap Ara.aspx
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
 
Ara butonuna tıklandığında Gridview textbox’a girilen kid’e göre kitap tablosundakileri listeler.
KitapEkle.aspx
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

 
Textboxtaki değerleri ekle butonuna tıklandığında en son sayfaya ekler
Gridview sayfalara bölünmüştür.(9 satır ,9 satır şeklinde)
Tabloda iki aynı Kitap No girilemez.
 Label1’de sorgulama yapmaktadır.
Gridview deki en üst sütun üzerindekilere tıklandığında dıklanılana göre sıralama yapar. 
Gridview’de DataSource vardır Düzenle Sil butonlarıyla seçilenin üzerinde işlem yapılır.
İzinsiz giriş yapılamaz. 
if (Session["kart"] == null)
            Response.Redirect("hata.aspx");











KitapVer.aspx
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

 
Kitap tablosundaki kitapid ile textbox6 daki barkod no eşleşirse kitap verilir eşleşbez ise Böyle bir barkod nolu kitabımız bulunmamaktadır! Kitaplığımıza gitmek için Tıklayınız… Şeklinde hata mesajı belirir. Tıklayınız’a tıklandığında KitapAra.aspx’ yönlendirilir.
Odunc tablosuna kitapbarkod’a göre ekleme yapar yani aynı kitapbarkod no dan varsa ekleme yapmaz ve hata mesajı Label’de belirir.
 
Eğer barkodno ile Kitapid eşleşmiş ise Şekildeki gibi bir mesaj çıkar ve kaç günü kaldığınıda 
            int ver=Convert.ToInt32(TextBox4.Text);
            int al=Convert.ToInt32(TextBox5.Text);
            int fark=ver-al;
            Label1.Text = "Sayın "+TextBox1.Text+" "+TextBox2.Text+" Kitabınızı teslim etme süresi:" + fark.ToString()+" Gündür lütfen kitabınızı zamanında teslim ediniz.";
Şeklinde bulunur.

Kitapİyade.aspx.cs
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
 
Sayfa Load Olduğunda kullanıcı Ödünç Ver sayfasından aldığı kitaplar Gridview ile listelenir
Textbox a girilen kitap barkno ile silinmek istenen kitap iyade et butonuna tıklanarak silinir yani iyade edilir.






Üye Ol.aspx.cs
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
 
textbox3’e girilen değer ile Uye tablosundaki aynı değer aynı ise hata mesajı çıkar. 
Değilse başarıyla kayıt yapılmıştır Giriş yapmak için Tıklayınız … Şeklinde mesaj çıkar ve Tıklayınız a tıklandığında Giriş.Aspx’e yönlendirilir.











