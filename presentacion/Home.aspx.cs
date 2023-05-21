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
            User user = new User();

            if (!IsPostBack)
            {
                DailyNegocio negocio = new DailyNegocio();
                //User user = new User();
                Session.Add("listaDaily", negocio.listar(user));
                repetidor.DataSource = Session["listaDaily"];
                repetidor.DataBind();
            }    
        }
    }
}