<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciSayfa.aspx.cs" Inherits="Udemi_Proje_OBS_Sistem.OgrenciSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">Numara: </asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="False">Ad Soyad:</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="False">Mail:</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="False">Fotograf:</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False">Telefon:</asp:TextBox>
            </div>
            <br />
           
           

        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-warning" OnClick="Button1_Click" />
    </form>

</asp:Content>
