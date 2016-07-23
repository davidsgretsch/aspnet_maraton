using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final.pags
{
    public partial class resultados_maraton : System.Web.UI.Page
    {
        public MaratonesEntities ctx = new MaratonesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblAviso.Visible = false; 

            if (!Page.IsPostBack)
            {   
                ddListaMaraton.DataTextField = "Nombre";

                ddListaMaraton.DataValueField = "IdMaraton";

                ddListaMaraton.DataSource = ctx.Maratons.OrderBy(Maraton => Maraton.Nombre).ToList();

                ddListaMaraton.DataBind();

                ddListaMaraton.Items.Insert(0, new ListItem("Seleccione una Maratón...","0"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {                
                var itemSelect = ddListaMaraton.SelectedItem.Value;

                var item = Int32.Parse(itemSelect);

                var datosMR = (from mr in ctx.ResultadoMaratonParticipantes
                               where mr.IdMaraton == item
                               select mr).ToList();

                GridViewRM.DataSource = datosMR;

                GridViewRM.DataBind();

            }
        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {

            var iduser = Int32.Parse(TxtIdUsuario.Text);

            var item = Int32.Parse(ddListaMaraton.SelectedItem.Value);

            ResultadoMaratonParticipante resultadoM = (from rm in ctx.ResultadoMaratonParticipantes
                                                     where rm.IdUsuario == iduser && rm.IdMaraton == item
                                                     select rm).First();

            resultadoM.PosicionFinal = Int32.Parse(TxtPosFinal.Text);

            resultadoM.TiempoLlegada = Int32.Parse(TxtTLlegada.Text);

            var finalizo = TxtFinalizo.Text;

            if (finalizo == "Si" || finalizo == "SI" || finalizo == "si" || finalizo == "True" || finalizo == "TRUE")
            {
                resultadoM.Finalizo = true;
            }

            else if (finalizo == "No" || finalizo == "No" || finalizo == "no" || finalizo == "False" || finalizo == "FALSE")
            {
                resultadoM.Finalizo = false;
            }

            else
            {
                //Response.Write("<script language=javascript>alert('No se puede cargar los resultados');</script>");

                lblAviso.Visible = true;
                lblAviso.Text = "¡No se puede cargar los resultados!";
            }

            //Response.Write("<script language=javascript>alert('Resultados Cargados');</script>");

            lblAviso.Visible = true;
            lblAviso.Text = "¡Resultados Cargados!";

            ctx.SaveChanges();

            LimpiarDatos();
        }

        public void LimpiarDatos()
        {
            TxtIdUsuario.Text = String.Empty;

            TxtPosFinal.Text = String.Empty;

            TxtTLlegada.Text = String.Empty;

            TxtFinalizo.Text = String.Empty;
        }
    }
}