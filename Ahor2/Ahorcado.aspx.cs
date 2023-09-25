using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ahor2
{
    public partial class Ahorcado : System.Web.UI.Page
    {
        public string[] palabras = { "hola", "adios", "programacion", "csharp" };
        public string palabraAdivinar;
        public int intentosRestantes = 0;
        Random random = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                palabraAdivinar = palabras[random.Next(0, palabras.Length)];
                palabra.Text = string.Join(" ", Enumerable.Repeat("_", palabraAdivinar.Length));
                Session["palabraAdivinar"] = palabraAdivinar;
                Session["intentosRestantes"] = intentosRestantes;
            }
        }

        
        protected void btn_Click(object sender, EventArgs e)
        {   
            string palaAdi = Session["palabraAdivinar"].ToString();
            int intentos = Convert.ToInt32(Session["intentosRestantes"]);

            Button boton = (Button)sender;
            char letra = boton.Text.ToLower()[0];
            if (palaAdi.Contains(letra))
            {
                for (int i = 0; i < palaAdi.Length; i++)
                {
                    if (palaAdi[i] == letra)
                    {
                        string[] letras = palabra.Text.Split(' ');
                        letras[i] = letra.ToString();
                        palabra.Text = string.Join(" ", letras);
                    }
                }
                if (!palabra.Text.Contains("_"))
                {
                    resultado.Text = "¡Has ganado!";
                    boton.Enabled = false;
                    reiniciar.Visible = true;
                }
            }
            else
            {
                intentos++;
                Session["intentosRestantes"] = intentos;
                imagen.ImageUrl = string.Format("~/ImgAhorcado/{0}.png", intentos);
                if (intentos == 10)
                {
                    resultado.Text = string.Format("¡Has perdido! La palabra era {0}.", palaAdi);
                    boton.Enabled = false;
                    reiniciar.Visible = true;
                }
            }
            boton.Enabled = false;
        }

        protected void reiniciar_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}