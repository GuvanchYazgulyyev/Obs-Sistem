<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="Udemi_Proje_OBS_Sistem.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title>OBS Öğrenci Paneli</title>
    
    <style type="text/css">
        .auto-style1 {
            height: 662px;
        }
    </style>

</head>
<body>






    <form id="Form1" runat="server" class="auto-style1" style="background-color: #C0C0C0;">
        <div style="width: 700px; margin: auto">

           

            <br />
            <br />
            <h2>Tokat Gaziosmanpaşa Üniversitesi Öğrenci Bilgi Sistemi</h2>
            <br />
            <br />

            <div class="text-center">
                <asp:Image ID="Image1" runat="server" Height="85px" ImageUrl="~/900px-Gaziosmanpaşa_Üniversitesi_logo.png" Width="100px" />
                <br />
                <br />
                <br />
            </div>
            <strong><em>
                <asp:Label for="TxtNumara" runat="server">Öğrenci No: </asp:Label>
            </em>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control"></asp:TextBox>

            </strong>

            <br />

            <div>
                <strong><em>
                    <asp:Label for="TxtSifre" runat="server">Şifre: </asp:Label>
                </em>
                    <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </strong>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-success" Width="700px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-warning" Width="190px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-info" Width="300px" />
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn- btn-danger" Width="190px" />
        </div>
    </form>
 
</body>

</html>
