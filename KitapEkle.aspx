<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="KitapEkle.aspx.cs" Inherits="_Default" %>

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
            width: 850px;
        }
        .style5
        {
            height: 11px;
            width: 50px;
        }
        .style7
        {
            width: 261px;
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
                            <td colspan="3"><font color="Maroon" face="Comic Sans Ms"><b>
                                Kitap Ekle               </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Names="Calibri" 
                                    ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"><font color="Maroon" face="Calibri"><b>Kitap Türü</b>
                                </font></td>
                            <td align="left">
                                :</td>
                            <td>
                                <asp:DropDownList ID="DrpTur" runat="server" DataSourceID="SqlDataSource2" 
                                    DataTextField="turu" DataValueField="turu">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" 
                                    SelectCommand="SELECT DISTINCT [turu] FROM [tur]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"><font color="Maroon" face="Calibri"><b>
                                Kitap Yazarı</b></font></td>
                            <td align="left">
                                :</td>
                            <td>
                                <asp:DropDownList ID="DrpYazar" runat="server" DataSourceID="SqlDataSource3" 
                                    DataTextField="yazarAd" DataValueField="yazarAd">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" 
                                    SelectCommand="SELECT DISTINCT [yazarAd] FROM [yazar]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"><font color="Maroon" face="Calibri"><b>
                                Yayın Evi</b></font></td>
                            <td align="left">
                                :</td>
                            <td>
                                <asp:DropDownList ID="DrpYayinEvi" runat="server" DataSourceID="SqlDataSource4" 
                                    DataTextField="yayinEv" DataValueField="yayinEv">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" 
                                    SelectCommand="SELECT DISTINCT [yayinEv] FROM [yayinEvi]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"><font color="Maroon" face="Calibri"><b>
                                Kitap Adı</b></font></td>
                            <td align="left">
                                :</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"><font color="Maroon" face="Calibri"><b>
                                Basım Tarihi</b></font></td>
                            <td align="left">
                                :</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"><font color="Maroon" face="Calibri"><b>
                                Kitap No</b></font></td>
                            <td align="left">
                                :</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left"><font color="Maroon" face="Calibri"><b>Raf No</b></font></td>
                            <td align="left">
                                :</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource5" DataTextField="rafno" DataValueField="rafno">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" 
                                    SelectCommand="SELECT DISTINCT [rafno] FROM [rafno]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="3">
                                <asp:Button ID="Button1" runat="server" Text="Ekle" onclick="Button1_Click" 
                                    BorderColor="#999999" BorderStyle="Outset" Font-Bold="True" 
                                    ForeColor="Maroon" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
                                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                    CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                            ShowSelectButton="True" />
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                                            InsertVisible="False" ReadOnly="True" />
                                        <asp:BoundField DataField="ktürü" HeaderText="ktürü" 
                                            SortExpression="ktürü" />
                                        <asp:BoundField DataField="kyazari" HeaderText="kyazari" 
                                            SortExpression="kyazari" />
                                        <asp:BoundField DataField="yayinevi" HeaderText="yayinevi" 
                                            SortExpression="yayinevi" />
                                        <asp:BoundField DataField="kadi" HeaderText="kadi" 
                                            SortExpression="kadi" />
                                        <asp:BoundField DataField="basimtarihi" HeaderText="basimtarihi" 
                                            SortExpression="basimtarihi" />
                                        <asp:BoundField DataField="kid" HeaderText="kid" SortExpression="kid" />
                                        <asp:BoundField DataField="rafno" HeaderText="rafno" SortExpression="rafno" />
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConflictDetection="CompareAllValues" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" 
                                    DeleteCommand="DELETE FROM [kitap] WHERE [id] = ? AND (([ktürü] = ?) OR ([ktürü] IS NULL AND ? IS NULL)) AND (([kyazari] = ?) OR ([kyazari] IS NULL AND ? IS NULL)) AND (([yayinevi] = ?) OR ([yayinevi] IS NULL AND ? IS NULL)) AND (([kadi] = ?) OR ([kadi] IS NULL AND ? IS NULL)) AND (([basimtarihi] = ?) OR ([basimtarihi] IS NULL AND ? IS NULL)) AND (([kid] = ?) OR ([kid] IS NULL AND ? IS NULL))" 
                                    InsertCommand="INSERT INTO [kitap] ([id], [ktürü], [kyazari], [yayinevi], [kadi], [basimtarihi], [kid]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString9.ProviderName %>" 
                                    SelectCommand="SELECT * FROM [kitap]" 
                                    UpdateCommand="UPDATE [kitap] SET [ktürü] = ?, [kyazari] = ?, [yayinevi] = ?, [kadi] = ?, [basimtarihi] = ?, [kid] = ? WHERE [id] = ? AND (([ktürü] = ?) OR ([ktürü] IS NULL AND ? IS NULL)) AND (([kyazari] = ?) OR ([kyazari] IS NULL AND ? IS NULL)) AND (([yayinevi] = ?) OR ([yayinevi] IS NULL AND ? IS NULL)) AND (([kadi] = ?) OR ([kadi] IS NULL AND ? IS NULL)) AND (([basimtarihi] = ?) OR ([basimtarihi] IS NULL AND ? IS NULL)) AND (([kid] = ?) OR ([kid] IS NULL AND ? IS NULL))">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_id" Type="Int32" />
                                        <asp:Parameter Name="original_ktürü" Type="String" />
                                        <asp:Parameter Name="original_kyazari" Type="String" />
                                        <asp:Parameter Name="original_yayinevi" Type="String" />
                                        <asp:Parameter Name="original_kadi" Type="String" />
                                        <asp:Parameter Name="original_basimtarihi" Type="String" />
                                        <asp:Parameter Name="original_kid" Type="Int32" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="ktürü" Type="String" />
                                        <asp:Parameter Name="kyazari" Type="String" />
                                        <asp:Parameter Name="yayinevi" Type="String" />
                                        <asp:Parameter Name="kadi" Type="String" />
                                        <asp:Parameter Name="basimtarihi" Type="String" />
                                        <asp:Parameter Name="kid" Type="Int32" />
                                        <asp:Parameter Name="original_id" Type="Int32" />
                                        <asp:Parameter Name="original_ktürü" Type="String" />
                                        <asp:Parameter Name="original_kyazari" Type="String" />
                                        <asp:Parameter Name="original_yayinevi" Type="String" />
                                        <asp:Parameter Name="original_kadi" Type="String" />
                                        <asp:Parameter Name="original_basimtarihi" Type="String" />
                                        <asp:Parameter Name="original_kid" Type="Int32" />
                                    </UpdateParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="id" Type="Int32" />
                                        <asp:Parameter Name="ktürü" Type="String" />
                                        <asp:Parameter Name="kyazari" Type="String" />
                                        <asp:Parameter Name="yayinevi" Type="String" />
                                        <asp:Parameter Name="kadi" Type="String" />
                                        <asp:Parameter Name="basimtarihi" Type="String" />
                                        <asp:Parameter Name="kid" Type="Int32" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
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
