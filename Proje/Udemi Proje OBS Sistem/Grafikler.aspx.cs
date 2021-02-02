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
    public partial class Grafikler : System.Web.UI.Page
    {
        SqlConnection bgl = new SqlConnection(@"Data Source=DESKTOP-SIEHT30\SQLEXPRESS;Initial Catalog=UdemySiteDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            // Sorgu 1
            bgl.Open();
            SqlCommand komut = new SqlCommand("Execute Graf1", bgl);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                WebChartControl2.Series["Dersler"].Points.AddPoint(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
            }
            bgl.Close();


            // Sorgu 2

            bgl.Open();
            SqlCommand komut2 = new SqlCommand("Execute Graf2", bgl);
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                WebChartControl1.Series["Cinsiyet"].Points.AddPoint(Convert.ToString(dr2[0]), int.Parse(dr2[1].ToString()));
            }
            bgl.Close();


            // Sorgu 3

            bgl.Open();
            SqlCommand komut3 = new SqlCommand("Execute Graf3", bgl);
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                WebChartControl4.Series["DersAd"].Points.AddPoint(Convert.ToString(dr3[0]), int.Parse(dr3[1].ToString()));
            }
            bgl.Close();



            // Sorgu 4

            bgl.Open();
            SqlCommand komut4 = new SqlCommand("Execute Graf4", bgl);
            SqlDataReader dr4 = komut4.ExecuteReader();
            while (dr4.Read())
            {
                WebChartControl3.Series["Notlar"].Points.AddPoint(Convert.ToString(dr4[0]), int.Parse(dr4[1].ToString()));
            }
            bgl.Close();


        }
    }
}