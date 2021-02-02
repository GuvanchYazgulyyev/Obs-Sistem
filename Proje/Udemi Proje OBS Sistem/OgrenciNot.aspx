<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciNot.aspx.cs" Inherits="Udemi_Proje_OBS_Sistem.OgrenciNot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">

        <tr>
            <%-- <th scope="col">NOTID</th>--%>
            <th scope="col">ÖĞRENCI ID</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">DERS AD</th>
            <th scope="col">SINAV 1</th>
            <th scope="col">SINAV 2</th>
            <th scope="col">SINAV 3</th>
            <th scope="col">ORTALAMA</th>
            <th scope="col">DURUM</th>

        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("OGRENCIID") %></td>
                        <td><%#Eval("OGRENCIADSOYAD") %></td>
                        <td><%#Eval("DERSAD") %></td>
                        <td><%#Eval("SINAV1") %></td>
                        <td><%#Eval("SINAV2") %></td>
                        <td><%#Eval("SINAV3") %></td>
                        <td><%#Eval("ORTALAMA") %></td>
                        <td><%#Eval("DURUM") %></td>


                    </tr>

                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>
