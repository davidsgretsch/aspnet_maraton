using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Script.Serialization;
using System.Data;

namespace Proyecto_Final
{
    /// <summary>
    /// Summary description for MaratonServicioWeb
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    //To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class MaratonServicioWeb : System.Web.Services.WebService
    {

        public class MaratonDTO
        {
            public string nombreMaraton { get; set; }
            public int? posicionFinal { get; set; }
            public int? tiempoLlegada { get; set; }
            public int premio1 { get; set; }
            public int premio2 { get; set; }
            public int premio3 { get; set; }
        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public List<MaratonDTO> ObtenerMaratonResultado()
        {
            var Idsesion = Convert.ToInt32(Session["IdUsuario"]);


            MaratonesEntities ctx = new MaratonesEntities();

            var lista = from ma in ctx.Maratons
                        join re in ctx.ResultadoMaratonParticipantes
                        on ma.IdMaraton equals re.IdMaraton
                        where re.IdUsuario == Idsesion
                        select new MaratonDTO
                        {
                            nombreMaraton = ma.Nombre,
                            posicionFinal = re.PosicionFinal,
                            tiempoLlegada = re.TiempoLlegada,
                            premio1 = ma.PrimerPremio,
                            premio2 = ma.SegundoPremio,
                            premio3 = ma.TercerPremio,
                        };

            List<MaratonDTO> list = new List<MaratonDTO>();

            foreach (var item in lista)
            {
                var m = new MaratonDTO();
                m.nombreMaraton = item.nombreMaraton;
                m.posicionFinal = item.posicionFinal;
                m.tiempoLlegada = item.tiempoLlegada;
                if (m.posicionFinal == 1)
                {
                    m.premio1 = item.premio1;
                    m.premio2 = 0;
                    m.premio3 = 0;
                }
                else if (m.posicionFinal == 2)
                {
                    m.premio2 = item.premio2;
                    m.premio1 = 0;
                    m.premio3 = 0;
                }
                else if (m.posicionFinal == 3)
                {
                    m.premio3 = item.premio3;
                    m.premio2 = 0;
                    m.premio1 = 0;
                }
                else
                {
                    m.premio1 = 0;
                    m.premio2 = 0;
                    m.premio3 = 0;
                }
                list.Add(m);
            }

            return list.ToList();
        }
    }
}
