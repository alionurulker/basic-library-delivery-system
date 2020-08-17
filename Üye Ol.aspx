<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Üye Ol.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style11
        {
        }
        .style1
        {
            width: 900px;
        }
        .style3
        {
            height: 23px;
        }
        .style4
        {
            height: 22px;
            width: 850px;
        }
        .style5
        {
            height: 11px;
            width: 50px;
        }
        .style7
        {
            width: 200px;
            background: #A9D4F7;
        }
        .style12
        {
            height: 27px;
            width: 5px;
        }
        .style13
        {
            height: 27px;
        }
    </style>
</head>
<body background="resimler/arka_plan2.png">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" align="center">
            <tr>
                <td class="style3" colspan="2">
                    <img alt="" src="resimler/BANNER.png" style="width: 900px; height: 200px" /></td>
            </tr>
            <tr>
                <td align="center" bgcolor="#3AA5E2" class="style5">
                    <asp:Menu ID="Menu3" runat="server" BackColor="#FFFF99" 
                        DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Nyala" 
                        Font-Size="XX-Large" ForeColor="#000066" Height="55px" StaticSubMenuIndent="20px" 
                        Width="147px" BorderColor="Gray" BorderStyle="Double" BorderWidth="5px" 
                        Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False">
                        <StaticSelectedStyle BackColor="#FFCC66" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <Items>
                            <asp:MenuItem Text="AnaSayfa" Value="ANASAYFA" NavigateUrl="~/Anasayfa.aspx">
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                    <asp:Menu ID="Menu2" runat="server" BackColor="#FFFF99" 
                        DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Nyala" 
                        Font-Size="XX-Large" ForeColor="#000066" Height="55px" StaticSubMenuIndent="20px" 
                        Width="146px" BorderColor="Gray" BorderStyle="Double" BorderWidth="5px" 
                        Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False">
                        <StaticSelectedStyle BackColor="#FFCC66" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <Items>
                            <asp:MenuItem Text="Giriş Yap" Value="Giriş Yap" NavigateUrl="~/Giris.aspx">
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFF99" 
                        DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Nyala" 
                        Font-Size="XX-Large" ForeColor="#000066" Height="55px" StaticSubMenuIndent="20px" 
                        Width="125px" BorderColor="Gray" BorderStyle="Double" BorderWidth="5px" 
                        Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                        Font-Underline="False">
                        <StaticSelectedStyle BackColor="#FFCC66" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <Items>
                            <asp:MenuItem Text="KİTAP" Value="KİTAP">
                                <asp:MenuItem Text="Kitap Ekle" Value="Kitap Ekle" 
                                    NavigateUrl="~/KitapEkle.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Kitap Ara" Value="Kitap Ara" NavigateUrl="~/KitapAra.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="ÖDÜNÇ" Value="ÖDÜNÇ">
                                <asp:MenuItem Text="Kitap Ver" Value="Kitap Ver" NavigateUrl="~/KitapVer.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Kitap İyade" Value="Kitap İyade" 
                                    NavigateUrl="~/Kitapİyade.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td align="center" bgcolor="#FFFFCC" class="style4">
                    <a href="giris.aspx"></a>
                    <table class="style7">
                        <tr>
                            <td colspan="10" align="center"><font color="Maroon" face="Comic Sans Ms"><b>
                                Üye Kaydı</b></font></td>
                        </tr>
                        <tr>
                            <td colspan="10">
                                <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="Calibri" 
                                    ForeColor="Red"></asp:Label>
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                                    Font-Bold="False" Font-Italic="True" Font-Names="Calibri" 
                                    Font-Strikeout="False">Tıklayınız...</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td class="style13"><font color="Maroon" face="Comic Sans Ms">
                                Adınız</font></td>
                            <td class="style12">
                                :</td>
                            <td class="style13" colspan="2">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td class="style13" colspan="2"><font color="Maroon" face="Comic Sans Ms">
                                Soyadınız</font></td>
                            <td class="style13" colspan="2">
                                :</td>
                            <td class="style13" colspan="2">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                            <td >
                                &nbsp;</td>
                            <td >
                                <font color="Maroon" face="Comic Sans Ms">No</font></td>
                            <td >
                                :</td>
                            <td >
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td >
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                            <td >
                                &nbsp;</td>
                            <td ><font color="Maroon" face="Comic Sans Ms">
                                Kullanıcı Adınız</font>
                                </td>
                            <td class="style11">
                                :</td>
                            <td class="style11">
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <font color="Maroon" face="Comic Sans Ms">Şifreniz</font></td>
                            <td class="style11">
                                :</td>
                            <td class="style11">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="10">
                                <asp:Button ID="Button1" runat="server" BackColor="#FF9999" 
                                    BorderColor="#FF5050" BorderStyle="Outset" Font-Bold="True" 
                                    onclick="Button1_Click" Text="KAYDOL" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="#FFCC99" class="style2" colspan="2" align="center"><font color="#666666" face="calibri" size="4"> Recepbey Anadolu Teknik ve Endürstri Meslek Lisesi 2014-2015 ©</font>
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
