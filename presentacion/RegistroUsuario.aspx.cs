using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presentacion
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario user = new Usuario();
                UserNegocio negocio = new UserNegocio();

                string email = txtEmail.Text;

                if (!negocio.cuentaRegistrada(email))
                {
                    user.Email = txtEmail.Text;
                    user.Pass = txtPass.Text;
                    user.Id = negocio.insertarNuevo(user);
                    Session.Add("user", user);
                    Response.Redirect("Home.aspx", false);
                }
                else
                {
                    lblMensaje.Text = "Ya existe una cuenta registrada con este E-Mail";
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