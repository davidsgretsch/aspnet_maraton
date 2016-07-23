using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final
{
    public partial class inicioSesion : System.Web.UI.Page
    {
        public MaratonesEntities ctx = new MaratonesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Aceptar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Usuario user = new Usuario();

                string email_session = TxtUsuario.Text;

                string password_session = TxtPass.Text;

                var query = (from us in ctx.Usuarios
                             where us.Email == email_session
                             && us.Contrasenia == password_session
                             select us).FirstOrDefault();

                if (query != null && query.Admin == true)
                {
                    Session["Email"] = query.Email;

                    Session["IdUsuario"] = query.IdUsuario;

                    Response.Redirect("creacion_maraton.aspx");

                }

                else if (query != null && query.Admin == false)
                {
                    Session["Email"] = query.Email;

                    Session["IdUsuario"] = query.IdUsuario;

                    Response.Redirect("historial_maraton.aspx");
                }
                else
                {
                    LblError.Text = "Email/Contraseña Incorrectos";
                }
            
            }

        }

    }
}