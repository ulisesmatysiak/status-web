using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAcceder_Click(object sender, EventArgs e)
        {
            Usuario user = new Usuario();
            UserNegocio negocio = new UserNegocio();

            try
            {
                Session.Add("Error", "Debes completar ambos campos");
                Response.Redirect("Error.aspx");
                user.Email = txtEmail.Text;
                user.Pass = txtPass.Text;
                if (negocio.Login(user))
                {
                    Session.Add("user", user);
                    Response.Redirect("Home.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                Response.Redirect("Error.aspx");
            }
        }
    }
}