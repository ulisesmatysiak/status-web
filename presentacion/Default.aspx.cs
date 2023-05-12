using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presentacion
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DailyNegocio negocio = new DailyNegocio();
                Session.Add("listaDaily", negocio.listar());
                repetidor.DataSource = Session["listaDaily"];
                repetidor.DataBind();
            }     
        }
    }
}