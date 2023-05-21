﻿using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace negocio
{
    public class DailyNegocio
    {
        public Daily buscarPorID(string id)
        {
            Daily buscar = new Daily();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("select D.Id, D.Fecha, D.Score, D.Words, D.Helped from DAILY D where D.Id = " + id);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Daily aux = new Daily();
                    aux.Id = (int)datos.Lector["Id"];
                    aux.Fecha = (DateTime)datos.Lector["Fecha"];
                    aux.Score = (int)datos.Lector["Score"];
                    aux.Words = (string)datos.Lector["Words"];
                    aux.Helped = (bool)datos.Lector["Helped"];
                    buscar = aux;
                }
                return buscar;
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

        public List<Daily> listar(User user)
        {
            List<Daily> lista = new List<Daily>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("select D.Id, D.Fecha, D.Score, D.Words, D.Helped, U.Id from DAILY D, USERS U where  D.IdUser =  " + user );
                //datos.setearProcedimiento("storedListar");
                //datos.setearParametro("@id", user.Id);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Daily aux = new Daily();
                    
                    aux.Id = (int)datos.Lector["Id"];
                    aux.Fecha = (DateTime)datos.Lector["Fecha"];
                    aux.Score = (int)datos.Lector["Score"];
                    aux.Words = (string)datos.Lector["Words"];
                    aux.Helped = (bool)datos.Lector["Helped"];
                    aux.User = new User();
                    aux.User.Id = (int)datos.Lector["IdUser"];
                          
                    lista.Add(aux);
                }
                return lista;
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

        public void agregar(Daily nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                //datos.setearConsulta("insert into DAILY(Fecha, Score, Words, Helped) values (@Fecha, @Score, @Words, @Helped)");
                datos.setearProcedimiento("storedAgregar");
                datos.setearParametro("@Fecha", nuevo.Fecha);
                datos.setearParametro("@Score", nuevo.Score);
                datos.setearParametro("@Words", nuevo.Words);
                datos.setearParametro("@Helped", nuevo.Helped);
                datos.ejecutarAccion();
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

        public void eliminar(int Id)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                // datos.setearConsulta("delete from DAILY where Id = @Id");
                datos.setearProcedimiento("storedEliminar");
                datos.setearParametro("@Id", Id);
                datos.ejecutarAccion();

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
