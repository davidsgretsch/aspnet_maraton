using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final.masterpages
{
    public partial class usuario : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mi_sesion = Convert.ToString(Session["Email"]);

            LblSesion.Text = String.Format("Bienvenido {0}", mi_sesion);

        }
    }
}