<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Udemi_Proje_OBS_Sistem.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">ÖĞRENCİ NUMARA</th>
            <th scope="col">ADI</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">MAIL</th>
            <th scope="col">ŞIFRE</th>
            <th scope="col">İŞLEMLER</th>
        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("OGRID") %></td>
                        <td><%#Eval("OGRNUMARA") %></td>
                        <td><%#Eval("OGRAD") %></td>
                        <td><%#Eval("OGRSOYAD") %></td>
                        <td><%#Eval("OGRTELEFON") %></td>
                        <td><%#Eval("OGRMAIL") %></td>
                        <td><%#Eval("OGRSIFRE") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenicSil.aspx?OGRID="+Eval("OGRID") %>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID") %>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>

    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
</asp:Content>
<%--<th scope="row">1</th>--%>