using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final.pags
{
    public partial class datos_usuario : System.Web.UI.Page
    {
        public MaratonesEntities ctx = new MaratonesEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            var sesion = Convert.ToInt32(Session["IdUsuario"]);

            lblAviso.Visible = false;

            if (!IsPostBack)
            {
                //var itemSelect = GridViewDatos.SelectedItem.Value;

               // var item = Int32.Parse(itemSelect);

                var datosUsr = (from du in ctx.Usuarios
                               where du.IdUsuario == sesion
                               select du).ToList();

                GridViewDatos.DataSource = datosUsr;

                GridViewDatos.DataBind();

                /*
                ddlId.DataTextField = "IdUsuario";

                ddlId.DataValueField = "IdUsuario";

                ddlId.DataSource = ctx.Usuarios.Where(Usuario => Usuario.IdUsuario == sesion).ToList();

                ddlId.DataBind();      */
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                var userRepositorio = new UsuarioRepositorio(ctx);

                var sesion = Convert.ToInt32(Session["IdUsuario"]);

                //campos

                Usuario user = (from us in ctx.Usuarios
                             where us.IdUsuario == sesion
                             select us).First();

                user.Contrasenia = TxtContrasenia.Text;
                                          
                user.Nombre = TxtNombre.Text;

                user.Apellido = TxtApellido.Text;

                user.FechaNac = DateTime.Parse(TxtFechaNac.Text);

                user.LugarResidencia = TxtLugarResidencia.Text;

                userRepositorio.Modificar(user);

                //grid
                var datosUsr = (from du in ctx.Usuarios
                                where du.IdUsuario == sesion
                                select du).ToList();

                GridViewDatos.DataSource = datosUsr;

                GridViewDatos.DataBind();

               // Response.Write("<script language=javascript>alert('¡Se han modificado los datos de usuario!');</script>");

                lblAviso.Visible = true;

                lblAviso.Text = "¡Se han modificado los datos de usuario!";

                LimpiarDatos();
            }
        }

        public void LimpiarDatos()
        {
            TxtNombre.Text = String.Empty;

            TxtApellido.Text = String.Empty;

            TxtFechaNac.Text = String.Empty;

            TxtLugarResidencia.Text = String.Empty;
        }

    }
}