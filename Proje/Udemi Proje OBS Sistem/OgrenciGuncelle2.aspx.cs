using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class OgrenciGuncelle2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtOgrNumara.Text = Request.QueryString["OGRNUMARA"];
            if (Page.IsPostBack == false) 
            { 

            }
           
            //    TextBox2.Text = "Ad Soyad: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRAD + "  " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSOYAD;
            //    TextBox3.Text = "Mail Adresi: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRMAIL;
            //    TextBox4.Text = "Telefon: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRTELEFON;
            //    TextBox5.Text = "Şifre: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSIFRE;
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciBilgileriGuncelle(TxtTelefon.Text, TxtMail.Text, TxtSifre.Text, TxtOgrNumara.Text);

            Response.Redirect("OgrenciSayfa.aspx?OGRNUMARA=" + TxtOgrNumara.Text);
        }
    }
}