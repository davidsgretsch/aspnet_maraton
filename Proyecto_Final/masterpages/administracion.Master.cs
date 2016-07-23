using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final.masterpages
{
    public partial class administracion : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblSesion.Text = String.Format("Bienvenido {0}", Convert.ToString(Session["Email"]));
        }

        /*protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();

            Session.Abandon();

            Session.Remove("Email");

            Session["Email"] = null;

            Response.Redirect("~/index.aspx");
        }*/
    }
}