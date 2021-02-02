<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="Udemi_Proje_OBS_Sistem.DersGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TxtDersid" runat="server"> Ders ID: </asp:Label>
                <asp:TextBox ID="TxtDersid" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDersAdi" runat="server"> Ders Adı: </asp:Label>
                <asp:TextBox ID="TxtDersAdi" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-warning" OnClick="Button1_Click" />

    </form>

</asp:Content>
