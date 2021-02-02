<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="Udemi_Proje_OBS_Sistem.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TxtDersAdi" runat="server">Ders Adı: </asp:Label>
                <asp:TextBox ID="TxtDersAdi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
        </div>

        <asp:Button ID="Button1" runat="server" Text="Oluştur" CssClass="btn btn-success" OnClick="Button1_Click"/>

    </form>
</asp:Content>
