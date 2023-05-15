using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace presentacion
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Visible = false;
            txtFecha.Enabled = false;
            txtScore.Enabled = false;
            txtWords.Enabled = false;
            chkHelp.Enabled = false;

            try
            {
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                if (id != "")
                {
                    DailyNegocio negocio = new DailyNegocio();
                    Daily seleccionado = negocio.buscarPorID(id);

                    txtId.Text = seleccionado.Id.ToString();
                    txtFecha.Text = seleccionado.Fecha.ToString();
                    txtWords.Text = seleccionado.Words;
                    txtScore.Text = seleccionado.Score.ToString();
                    chkHelp.Text = seleccionado.Helped.ToString();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public bool ConfirmarEliminacion { get; set; }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ConfirmarEliminacion = true;
        }

        protected void btnConfirmarEliminacion_Click(object sender, EventArgs e)
        {
            try
            {
                if (chkConfirmarEliminacion.Checked)
                {
                    DailyNegocio negocio = new DailyNegocio();
                    negocio.eliminar(int.Parse(txtId.Text));
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
