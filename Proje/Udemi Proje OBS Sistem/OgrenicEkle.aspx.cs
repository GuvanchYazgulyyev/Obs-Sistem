using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class OgrenicEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
            dt.Ogrenci_Ekle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFoto.Text);
            Response.Redirect("AnaSayfa.aspx");
        }
    }
}