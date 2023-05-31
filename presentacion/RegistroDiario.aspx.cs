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
    public partial class RegistroDiario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Visible = false;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Daily nuevo = new Daily();
                Usuario usuario = new Usuario();
                DailyNegocio negocio = new DailyNegocio();

                nuevo.Fecha = DateTime.Parse(calendario.SelectedDate.ToString());
                nuevo.Score = int.Parse(txtScore.Text);
                nuevo.Words = txtWords.Text;
                nuevo.Helped = bool.Parse(chkHelp.Checked.ToString());
                nuevo.User = (Usuario)Session["user"];

                negocio.agregar(nuevo);

                Response.Redirect("Home.aspx", false);
            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                Response.Redirect("Error.aspx");
            }
        }
    }
}