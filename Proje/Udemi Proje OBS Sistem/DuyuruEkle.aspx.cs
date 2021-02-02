using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class DuyuruEkle : System.Web.UI.Page
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

            if (Page.IsPostBack == false)
            {
                DataSetTableAdapters.TBL_OGRETMENTableAdapter dt = new DataSetTableAdapters.TBL_OGRETMENTableAdapter();
                DropDownList1.DataSource = dt.OgretmenListesi();
                DropDownList1.DataTextField = "OGRTADSOYAD";
                DropDownList1.DataValueField = "OGRTID";
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
            dt.DuyuruEkle(TxtDuyuruBaslik.Text, TextArea1.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}