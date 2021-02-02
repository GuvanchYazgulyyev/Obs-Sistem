<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle2.aspx.cs" Inherits="Udemi_Proje_OBS_Sistem.OgrenciGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Numara:"></asp:Label>
                <asp:TextBox ID="TxtOgrNumara" runat="server" CssClass="form-control" Enabled="False"> </asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Ad Soyad:"></asp:Label>
                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Mail:"></asp:Label>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label ID="Label3" runat="server" Text="Telefon:"></asp:Label>
                <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
            </div>
            <br />
            <div>
                 <asp:Label ID="Label4" runat="server" Text="Şifre:"></asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Enabled="true"></asp:TextBox>
            </div>
            <br />


        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-warning" OnClick="Button1_Click" />
    </form>

</asp:Content>
