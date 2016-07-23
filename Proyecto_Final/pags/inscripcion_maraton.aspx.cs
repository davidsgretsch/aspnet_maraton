using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final.pags
{
    public partial class inscripcion_maraton : System.Web.UI.Page
    {
        public MaratonesEntities ctx = new MaratonesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var Idsesion = Convert.ToInt32(Session["IdUsuario"]);
            
            if (!Page.IsPostBack)
            {
                DateTime fechaActual = DateTime.Now;

                var MaratonAbierta = (from ma in ctx.Maratons
                                      where ma.FechaHorarioComienzo > fechaActual
                                      select ma).ToList();

                ddlListaMaraton.DataTextField = "Nombre";

                ddlListaMaraton.DataValueField = "IdMaraton";

                ddlListaMaraton.DataSource = MaratonAbierta.OrderBy(Maraton => Maraton.Nombre).ToList();

                ddlListaMaraton.DataBind();

                ddlListaMaraton.Items.Insert(0, new ListItem("Seleccione una Opción...","0"));
            }
        }

        protected void Inscribirse_Click(object sender, EventArgs e)
        {
            var Idsesion = Convert.ToInt32(Session["IdUsuario"]);
            Random r = new Random(DateTime.Now.Millisecond);

            if (Page.IsValid)
            {
                ddlListaMaraton.DataValueField = "IdMaraton";
                int maraton = Convert.ToInt32(ddlListaMaraton.SelectedItem.Value); //toma el id seleccionado

                var existe = (from rm in ctx.ResultadoMaratonParticipantes
                where rm.IdUsuario == Idsesion && rm.IdMaraton == maraton
                select rm).Count();

                int existe2 = Convert.ToInt32(existe);

                if (existe2 == 0)
                {
                    var owner = (from ma in ctx.ResultadoMaratonParticipantes //cuenta cantidad de usr en una maraton
                                 where ma.IdMaraton == maraton && ma.NroInscripcion != 0
                                 select ma).Count();
                    int owner2 = Convert.ToInt32(owner);

                    var numeroMax = (from nm in ctx.Maratons
                                     where nm.IdMaraton == maraton
                                     select nm.MaxParticipantes).First();
                    int numeroMax2 = Convert.ToInt32(numeroMax);

                    var ownerE = (from ma in ctx.ResultadoMaratonParticipantes //cuenta cantidad de usr en una maraton
                                  where ma.IdMaraton == maraton && ma.NroInscripcion == 0
                                  select ma).Count();
                    int owner2E = Convert.ToInt32(ownerE);

                    var numeroMaxE = (from nm in ctx.Maratons
                                      where nm.IdMaraton == maraton
                                      select nm.ParticipantesEnEspera).First();
                    int numeroMax2E = Convert.ToInt32(numeroMaxE);

                    if (owner2 < numeroMax2)
                    {   //se inscribe a la maraton

                        var ResultadosRepositorio = new ResultadosRepositorio(ctx);

                        ResultadoMaratonParticipante nuevoIngreso = new ResultadoMaratonParticipante();

                        nuevoIngreso.IdUsuario = Idsesion;

                        nuevoIngreso.IdMaraton = maraton;

                        nuevoIngreso.NroInscripcion = r.Next(0, 9999);

                        ResultadosRepositorio.CrearResultado(nuevoIngreso);

                        lblAviso.Visible = true;
                        lblAviso.Text = "¡Inscripcion Correcta!";
                    }

                    else if (owner2E < numeroMax2E)
                    {
                        var ResultadosRepositorio = new ResultadosRepositorio(ctx);

                        ResultadoMaratonParticipante nuevoIngreso = new ResultadoMaratonParticipante();

                        nuevoIngreso.IdUsuario = Idsesion;

                        nuevoIngreso.IdMaraton = maraton;

                        nuevoIngreso.NroInscripcion = 0;

                        ResultadosRepositorio.CrearResultado(nuevoIngreso);

                        lblAviso.Visible = true;
                        lblAviso.Text = "No pudiste anotarte. Has sido incluido en la lista de espera.";

                    }
                    else
                    {
                        //queda en lista de espera
                        lblAviso.Visible = true;
                        lblAviso.Text = "¡No hay disponibilidad para esta maraton!";
                    }

                }
                else
                {
                    lblAviso.Visible = true;
                    lblAviso.Text = "¡Ya estas anotado a esta maraton!";
                }
            }
        }
    }
}