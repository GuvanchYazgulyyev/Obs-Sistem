﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Udemi_Proje_OBS_Sistem
{
    public partial class NotListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.OgrenciNotTableAdapter dt = new DataSetTableAdapters.OgrenciNotTableAdapter();
            Repeater1.DataSource = dt.NotlariGetir();
            Repeater1.DataBind();
        }
    }
}