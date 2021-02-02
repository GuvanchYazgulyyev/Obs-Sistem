using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection bgl = new SqlConnection(@"Data Source=DESKTOP-SIEHT30\SQLEXPRESS;Initial Catalog=UdemySiteDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            bgl.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRENCI where OGRNUMARA=@p1 and OGRSIFRE=@p2", bgl);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OGRNUMARA", TxtNumara.Text);
                Response.Redirect("OgrenciSayfa.aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";
            }
            bgl.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            bgl.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRETMEN where OGRTNUMARA=@p1 and OGRTSIFRE=@p2", bgl);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OGRTNUMARA", TxtNumara.Text);
                Response.Redirect("AnaSayfa.aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";
            }
            bgl.Close();


        }
    }
}