<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="Udemi_Proje_OBS_Sistem.Galeri" %>

<%@ Register Assembly="DevExpress.Web.v20.2, Version=20.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
        <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" DataSourceID="SqlDataSource1" ImageUrlField="OGRFOTOGRAF" Theme="Metropolis" Width="750px" EnableTheming="True">
            <SettingsFolder ImageCacheFolder="~/Thumb/" />
            <Items>
                <dx:ImageGalleryItem ImageUrl="Link Giriniz!!!">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem ImageUrl="Link Giriniz!!!">
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
                <dx:ImageGalleryItem>
                </dx:ImageGalleryItem>
            </Items>
            <SettingsTableLayout RowsPerPage="2" />
        </dx:ASPxImageGallery>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UdemySiteDBConnectionString %>" SelectCommand="SELECT [OGRFOTOGRAF] FROM [TBL_OGRENCI]"></asp:SqlDataSource>
    </form>
</asp:Content>
