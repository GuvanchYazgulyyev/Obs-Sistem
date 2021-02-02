using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class OgrenciSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["OGRNUMARA"].ToString();

            if (Session["OGRNUMARA"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz...." + Session["OGRNUMARA"].ToString());
            }

            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            TextBox2.Text = "Ad Soyad: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRAD + "  " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSOYAD;
            TextBox3.Text = "Mail Adresi: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRMAIL;
            TextBox4.Text = "Telefon: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRTELEFON;
            TextBox5.Text = "Şifre: " + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSIFRE;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.aspx?OGRNUMARA=" + TextBox1.Text);
        }
    }
}