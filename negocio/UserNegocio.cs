﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class UserNegocio
    {
        public bool Login(Usuario user)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("select id,email,pass,admin from USERS where email = @email and pass = @pass");
                datos.setearParametro("@email", user.Email);
                datos.setearParametro("@pass", user.Pass);
                datos.ejecutarLectura();
                if (datos.Lector.Read())
                {
                    user.Id = (int)datos.Lector["id"];
                    user.Admin = (bool)datos.Lector["admin"];

                    if (!(datos.Lector["email"] is DBNull))
                        user.Email = (string)datos.Lector["email"];

                    if (!(datos.Lector["pass"] is DBNull))
                        user.Pass = (string)datos.Lector["pass"];

                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
