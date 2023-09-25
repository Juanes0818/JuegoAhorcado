using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ahor2
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnJuego_Click(object sender, EventArgs e)
        {
            lblMensaje.ForeColor = Color.Red;
            if (string.IsNullOrEmpty(txtNombre.Text))
            {
                lblMensaje.Text = "Ingrese un nombre de jugador...";
            }
            else if (DdlDificultad.SelectedIndex == 0)
            {
                lblMensaje.Text = "Seleccione una dificultad...";
            }
            else
            {
                Response.Redirect("Ahorcado2.aspx?nivel=" + DdlDificultad.SelectedValue.ToString() + "&jugador=" + txtNombre.Text);
            }
        }
    }
}