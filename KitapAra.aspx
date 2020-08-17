<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="KitapAra.aspx.cs" Inherits="_Default" %>

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
            height: 22px;
            width: 815px;
        }
        .style5
        {
            height: 11px;
            width: 85px;
        }
        .style7
        {
            width: 350px;
        }
        .style8
        {
            width: 175px;
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
                    <a href="giris.aspx"></a>
                    <table class="style7" bgcolor="#3AA5E2">
                        <tr>
                            <td colspan="6" align="center">
                                <font color="Maroon" face="Comic Sans Ms"><b>
                                Kitap ARA</b></font></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <font color="Maroon" face="Comic Sans Ms"><b>
                                Kitap No</b></font></td>
                            <td>
                                :</td>
                            <td class="style8">
                                <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#990000" 
                                    Text="ARA" onclick="Button1_Click" style="height: 26px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                    CellSpacing="2">
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
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
