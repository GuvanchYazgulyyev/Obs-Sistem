using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class MesajOlustur : System.Web.UI.Page
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

            TxtGonderen.Text = "00001";
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
            dt.MesajGonder(TxtGonderen.Text, TxtAlici.Text, TxtBaslik.Text, Txticerk.Value);
            Response.Redirect("GidenMesajlar.aspx");
        }
    }
}