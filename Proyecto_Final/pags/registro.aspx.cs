using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final
{
    public partial class registro : System.Web.UI.Page
    {
        public MaratonesEntities ctx = new MaratonesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblAviso.Visible = false; 

            if (!IsPostBack)
            { 
            
            }
        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var usuarioRepositorio = new UsuarioRepositorio(ctx);

                Usuario nuevoUsuario = new Usuario();

                nuevoUsuario.Nombre = TxtNombreReg.Text;

                nuevoUsuario.Apellido = TxtApellidoReg.Text;

                nuevoUsuario.FechaNac = DateTime.Parse(TxtFechNac.Text);

                nuevoUsuario.LugarResidencia = TxtLugarResidencia.Text;

                nuevoUsuario.Email = TxtEmail.Text;

                nuevoUsuario.Contrasenia = TxtPassword1.Text;

                usuarioRepositorio.CrearUsuario(nuevoUsuario);

                //Response.Write("<script language=javascript>alert('¡Usuario Creado!');</script>");

                lblAviso.Visible = true;

                lblAviso.Text = "¡Te registraste correctamente!";

                LimpiarDatos();
            }
        }

        public void LimpiarDatos()
        {
            TxtNombreReg.Text = String.Empty;

            TxtApellidoReg.Text = String.Empty;

            TxtFechNac.Text = String.Empty;

            TxtLugarResidencia.Text = String.Empty;

            TxtEmail.Text = String.Empty;
        }
    }
}