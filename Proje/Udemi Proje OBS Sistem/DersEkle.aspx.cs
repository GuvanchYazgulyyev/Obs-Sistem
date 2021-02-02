using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class DersEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["OGRTNUMARA"] == null)
            {
                Response.Redirect("LoginPanel.aspx");
            }
            else
            {
                Response.Write("Hoşgeldiniz...." + Session["OGRTNUMARA"].ToString());
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
            dt.DersEkle(TxtDersAdi.Text);
            Response.Redirect("DersListesi.aspx");
        }
    }
}