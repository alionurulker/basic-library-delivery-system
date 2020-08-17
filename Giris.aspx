<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Giris.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 900px;
        }
        .style2
        {
        }
        .style3
        {
            height: 23px;
        }
        .style4
        {
            width: 850px;
        }
        .style5
        {
            width: 50px;
        }
        .style6
        {
            width: 317px;
        }
        .style7
        {
            width: 14px;
        }
        .style8
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
                    <br />
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
                            <asp:MenuItem Text="ÜYE OL" Value="ÜYE OL" NavigateUrl="~/Üye Ol.aspx">
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
                    <table class="style6" bgcolor="#A9D4F7">
                        <tr>
                            <td colspan="14" align="center" class="style8"><font color="Maroon" face="Comic Sans Ms"><b>Üye Girişi
                                </b></font></td>
                        </tr>
                        <tr>
                            <td colspan="14">
                                <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="Calibri" 
                                    Font-Underline="False" ForeColor="Red"></asp:Label>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="False" 
                                    Font-Italic="True" Font-Names="Calibri" Font-Strikeout="False" 
                                    onclick="LinkButton1_Click">Tıklayınız...</asp:LinkButton>
                                </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="8"><font color="Maroon" face="Comic Sans Ms">
                                Kullanıcı Adınız</font></td>
                            <td class="style7" colspan="2">
                                :</td>
                            <td colspan="4">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="8"><font color="Maroon" face="Comic Sans Ms">
                                Şifreniz</font></td>
                            <td class="style7" colspan="2">
                                :</td>
                            <td colspan="4">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td colspan="2" align="right">
                                &nbsp;</td>
                            <td colspan="2" align="right">
                                &nbsp;</td>
                            <td align="right">
                                &nbsp;</td>
                            <td align="right">
                    <a href="giris.aspx">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Giriş Yap" BackColor="#FF9999" BorderColor="#FF5050" 
                                    BorderStyle="Outset" Font-Bold="True" />
                    </a>
                            </td>
                            <td align="right">
                                &nbsp;</td>
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
