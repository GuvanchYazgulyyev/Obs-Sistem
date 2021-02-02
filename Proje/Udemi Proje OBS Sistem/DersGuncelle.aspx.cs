using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();

                TxtDersid.Text = id.ToString();
                TxtDersAdi.Text = dt.DersGetir(id)[0].DERSAD;
             
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
            dt.DersGuncelle(TxtDersAdi.Text, Convert.ToInt32(TxtDersid.Text));
            Response.Redirect("DersListesi.aspx");
        }
    }
}