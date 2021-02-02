using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
            TextBox1.Text =" Toplam Öğrenci Sayısı:  "+  dt.istatistik1().ToString();
            TextBox2.Text = " Toplam Öğretmen Sayısı:  " + dt.istatistik2().ToString();
            TextBox3.Text = " Toplam Ders Sayısı:  " + dt.istatistik3().ToString();
            TextBox4.Text = " Web Tasarımı Dersinden Başarılı Öğrenci:  " + dt.istatistik4().ToString();
            TextBox5.Text = "Programlama Dersinden Başarılı Öğrenci:  " + dt.istatistik5().ToString();
            TextBox6.Text = "Matematik Dersinden Başarılı Öğrenci:  " + dt.istatistik6().ToString();
            TextBox7.Text = "Fizik Dersinden Başarılı Öğrenci:  " + dt.istatistik7().ToString();
            TextBox8.Text = "Matematik 1.Sınav de En Başarılı Öğrenci:  " + dt.istatistik8().ToString();
            TextBox9.Text = "Fizik 1.Sınav de En Başarılı Öğrenci:  " + dt.istatistik9().ToString();
            TextBox10.Text = "Programlama 1.Sınav de En Başarılı Öğrenci:  " + dt.istatistik10().ToString();
            TextBox11.Text = "Matematik Dersinden Geçen Öğrenci Sayısı:  " + dt.istatistik11().ToString();
            TextBox12.Text = "Matematik Dersinden Kalan Öğrenci Sayısı:  " + dt.istatistik12().ToString();
        }
    }
}