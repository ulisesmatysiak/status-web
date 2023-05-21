using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Authentication.ExtendedProtection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presentacion
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DailyNegocio negocio = new DailyNegocio();
                Session.Add("listaDaily", negocio.listar((Usuario)Session["user"]));
                repetidor.DataSource = Session["listaDaily"];
                repetidor.DataBind();
            }
        }
    }
}