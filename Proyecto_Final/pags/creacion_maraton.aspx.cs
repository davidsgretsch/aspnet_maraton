using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final.pags
{
    public partial class creacion_maraton : System.Web.UI.Page
    {
        public MaratonesEntities Contexto = new MaratonesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblAviso.Visible = false;

            if (!IsPostBack)
            {   
                ddlPremio1.Items.Insert(0, new ListItem("Seleccione una opcion...", "0"));
                ddlPremio1.Items.Insert(1, new ListItem("5000", "5000"));
                ddlPremio1.Items.Insert(2, new ListItem("4500", "4500"));
                ddlPremio1.Items.Insert(3, new ListItem("4000", "4000"));
                ddlPremio1.Items.Insert(4, new ListItem("3500", "3500"));
                ddlPremio1.Items.Insert(5, new ListItem("3000", "3000"));

                ddlPremio2.Items.Insert(0, new ListItem("Seleccione una opcion...", "0"));
                ddlPremio2.Items.Insert(1, new ListItem("2500", "2500"));
                ddlPremio2.Items.Insert(2, new ListItem("2000", "2000"));
                ddlPremio2.Items.Insert(3, new ListItem("1700", "1700"));
                ddlPremio2.Items.Insert(4, new ListItem("1500", "1500"));

                ddlPremio3.Items.Insert(0, new ListItem("Seleccione una opcion...", "0"));
                ddlPremio3.Items.Insert(1, new ListItem("1000", "1000"));
                ddlPremio3.Items.Insert(2, new ListItem("900", "900"));
                ddlPremio3.Items.Insert(3, new ListItem("700", "700"));
                ddlPremio3.Items.Insert(4, new ListItem("500", "500"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var maratonRepositorio = new MaratonRepositorio(Contexto);

                var nuevaMaraton = new Maraton();

                nuevaMaraton.Nombre = TxtNombre.Text;

                nuevaMaraton.MaxParticipantes = Int32.Parse(TxtParticipantes.Text);

                nuevaMaraton.LugarSalida = TxtSalida.Text;

                nuevaMaraton.ParticipantesEnEspera = Int32.Parse(TxtUserEspera.Text);

                nuevaMaraton.PrimerPremio = Int32.Parse(ddlPremio1.SelectedItem.Value);

                nuevaMaraton.SegundoPremio = Int32.Parse(ddlPremio2.SelectedItem.Value);

                nuevaMaraton.TercerPremio = Int32.Parse(ddlPremio3.SelectedItem.Value);

                nuevaMaraton.FechaHorarioComienzo = DateTime.Parse(TxtComienzo.Text);

                maratonRepositorio.Crear(nuevaMaraton);

                //Response.Write("<script language=javascript>alert('¡Maratón Nueva Creda!');</script>");

                lblAviso.Visible = true;
                lblAviso.Text = "¡Nueva Maratón Creada!";

                LimpiarDatos();
                    
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Page.IsValid)
            {
                DateTime fechaActual = DateTime.Now;
                DateTime fechaMaraton = DateTime.Parse(TxtComienzo.Text);
                int comparacion = DateTime.Compare(fechaActual, fechaMaraton);
                if (comparacion > 0) // la fecha ingresada es menor a la actual
                {
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
            }
        }

        public void LimpiarDatos()
        {
            TxtNombre.Text = String.Empty;

            TxtParticipantes.Text = String.Empty;

            TxtSalida.Text = String.Empty;

            TxtUserEspera.Text = String.Empty;

            TxtComienzo.Text = String.Empty;
        
        }
    
    }

}