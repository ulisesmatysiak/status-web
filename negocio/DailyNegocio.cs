using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class DailyNegocio
    {
        public List<Daily> listar()
        {
            List<Daily> lista = new List<Daily>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("select Id, Fecha, Score, Words, Helped from DAILY");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Daily aux = new Daily();
                    aux.Id = (int)datos.Lector["Id"];
                    aux.Fecha = (DateTime)datos.Lector["Fecha"];
                    aux.Score = (int)datos.Lector["Score"];
                    aux.Words = (string)datos.Lector["Words"];
                    aux.Helped = (bool)datos.Lector["Helped"];
                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }


        }

        public void agregar(Daily nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("insert into DAILY(Fecha, Score, Words, Helped) values (@Fecha, @Score, @Words, @Helped)");
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
            try
            {
                AccesoDatos datos = new AccesoDatos();
                datos.setearConsulta("delete from DAILY where Id = @Id");
                datos.setearParametro("@Id", Id);
                datos.ejecutarAccion();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
