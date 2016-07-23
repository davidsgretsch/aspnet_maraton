using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final.pags
{
    public partial class ultimas_maraton : System.Web.UI.Page
    {
        public MaratonesEntities ctx = new MaratonesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //calculo para mostrar ultima maraton finalizada mostrando los primeros 10 participantes
                //muestra la de mayor cantidad de participantes si hay varias en la misma fecha 
                var u_maraton = (from m in ctx.Maratons
                                 join rm in ctx.ResultadoMaratonParticipantes on m.IdMaraton equals rm.IdMaraton
                                 where rm.Finalizo == true
                                 && m.FechaHorarioComienzo < DateTime.Now
                                 select m.FechaHorarioComienzo).Max();

                DateTime dt_fecha = Convert.ToDateTime(u_maraton);

                var max_p = (from m in ctx.Maratons
                             join rm in ctx.ResultadoMaratonParticipantes on m.IdMaraton equals rm.IdMaraton
                             where rm.Finalizo == true && m.FechaHorarioComienzo == u_maraton
                             select m.MaxParticipantes).Max();

                int mxp = Convert.ToInt32(max_p);

                var nom_maraton = (from m in ctx.Maratons
                                    join rm in ctx.ResultadoMaratonParticipantes on m.IdMaraton equals rm.IdMaraton
                                    where rm.Finalizo == true
                                     && m.FechaHorarioComienzo == u_maraton
                                        select m.Nombre).First();

                
              
                LblNomMaraton.Text = Convert.ToString(nom_maraton);
                
                //Gridview
                var ultima = (from m in ctx.Maratons
                              join rm in ctx.ResultadoMaratonParticipantes on m.IdMaraton equals rm.IdMaraton
                              where rm.Finalizo == true
                              && m.MaxParticipantes == mxp
                              && m.FechaHorarioComienzo == u_maraton
                              && rm.PosicionFinal <= 10
                              select rm).OrderBy(m => m.PosicionFinal).ToList();

                GridViewUM.DataSource = ultima;

                GridViewUM.DataBind();
            }
        }
    }
}