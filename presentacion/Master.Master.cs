﻿using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presentacion
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Page is Default || Page is Login || Page is RegistroUsuario))
            {
                if (!Seguridad.sesionActiva(Session["user"]))
                    Response.Redirect("Login.aspx", false);
                else
                {
                    Usuario usuario = (Usuario)Session["user"];
                    lblUser.Text = usuario.Email;
                }
            }
        }
        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}