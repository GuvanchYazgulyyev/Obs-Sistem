using System;
using System.Collections.Generic;
using System.Linq;
using System.Resources;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int nid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());

                DataSetTableAdapters.OgrenciNotTableAdapter dt = new DataSetTableAdapters.OgrenciNotTableAdapter();
                TxtOgrid.Text = dt.Notgetir2(nid)[0].OGRENCIID.ToString();
                TxtOgrAdSoyad.Text = dt.Notgetir2(nid)[0].OGRENCIADSOYAD;
                TxtDersAd.Text = dt.Notgetir2(nid)[0].DERSAD;
                TxtSinav1.Text = dt.Notgetir2(nid)[0].SINAV1.ToString();
                TxtSinav2.Text = dt.Notgetir2(nid)[0].SINAV2.ToString();
                TxtSinav3.Text = dt.Notgetir2(nid)[0].SINAV3.ToString();
                TxtOrtalama.Text = dt.Notgetir2(nid)[0].ORTALAMA.ToString();
                TxtDurum.Text = dt.Notgetir2(nid)[0].DURUM.ToString();

            }



        }

        protected void BtnHesapla_Click(object sender, EventArgs e)
        {
            double sinav1, sinav2, sinav3;
            double ortalama;
            sinav1 = Convert.ToInt32(TxtSinav1.Text);
            sinav2 = Convert.ToInt32(TxtSinav2.Text);
            sinav3 = Convert.ToInt32(TxtSinav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3;
            // Eger bu kodu kullanırsak vize100% 40 final 100 % 60 hesaplar
            //ortalama = (sinav1 * 0.4) + sinav2 * 0.6;
           
            TxtOrtalama.Text = ortalama.ToString("0.00");

            if(ortalama>=60)
            {
                TxtDurum.Text = "True";
            }
            else
            {
                TxtDurum.Text = "False";
            }

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            DataSetTableAdapters.OgrenciNotTableAdapter dt = new DataSetTableAdapters.OgrenciNotTableAdapter();

            // Alttaki komutta byte ve decimalı String Türüne çevirir
            dt.NotGuncelle(byte.Parse(TxtSinav1.Text), byte.Parse(TxtSinav2.Text), byte.Parse(TxtSinav3.Text), decimal.Parse(TxtOrtalama.Text), bool.Parse(TxtDurum.Text), nid);
            Response.Redirect("NotListesi.aspx");
        }
    }
}