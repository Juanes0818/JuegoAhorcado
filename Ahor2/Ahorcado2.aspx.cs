using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Ahor2
{
    public partial class Ahorcado2 : System.Web.UI.Page
    {
        
        public string[] palabras = { "hola", "adios", "programacion", "csharp" };
        public string palabraAdivinar;
        public int intentosRestantes = 0;
        Random random = new Random();
        string nivel, jugador, resultado;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                nivel = Request.Params["nivel"];
                jugador = Request.Params["jugador"];
                lblNombre.Text = jugador;
                lblDifi.Text = nivel + " intentos";

                palabraAdivinar = palabras[random.Next(0, palabras.Length)];
                palabra.Text = string.Join(" ", Enumerable.Repeat("_", palabraAdivinar.Length));
                Session["palabraAdivinar"] = palabraAdivinar;
                Session["intentosRestantes"] = intentosRestantes;
                Session["nivel"] = nivel;
            }
        }

        protected void btn_Click(object sender, ImageClickEventArgs e)
        {
            string palaAdi = Session["palabraAdivinar"].ToString();
            int intentos = Convert.ToInt32(Session["intentosRestantes"]);

            ImageButton boton = (ImageButton)sender;
            char letra = boton.CommandArgument.ToLower()[0];
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
                    lblMensaje.ForeColor = Color.Green;
                    resultado = "Victoria!!!";
                    Session["resultado"] = resultado;
                    lblMensaje.Text = resultado + " ¡Has ganado!";
                    boton.Enabled = false;
                    boton.Visible = false;
                    reiniciar.Visible = true;
                    //btnGuardar.Visible = true;
                    ImgBtnA.Enabled = ImgBtnB.Enabled = ImgBtnC.Enabled = ImgBtnD.Enabled = ImgBtnE.Enabled = ImgBtnF.Enabled = ImgBtnG.Enabled = ImgBtnH.Enabled =
                    ImgBtnI.Enabled = ImgBtnJ.Enabled = ImgBtnK.Enabled = ImgBtnL.Enabled = ImgBtnM.Enabled = ImgBtnN.Enabled = ImgBtnÑ.Enabled = ImgBtnO.Enabled =
                    ImgBtnP.Enabled = ImgBtnQ.Enabled = ImgBtnR.Enabled = ImgBtnS.Enabled = ImgBtnT.Enabled = ImgBtnU.Enabled = ImgBtnV.Enabled = ImgBtnW.Enabled =
                    ImgBtnX.Enabled = ImgBtnY.Enabled = ImgBtnZ.Enabled = false;
                }
            }
            else
            {
                switch (Session["nivel"].ToString())
                {
                    case "10":
                        intentos++;
                        Session["intentosRestantes"] = intentos;
                        lblIntentos.Text = intentos.ToString();
                        ImgAhorcado.ImageUrl = string.Format("~/ImgAhorcado/{0}.png", intentos);
                        if (intentos == Convert.ToInt32(Session["nivel"]))
                        {
                            lblMensaje.ForeColor = Color.Red;
                            resultado = "Derrota :c";
                            Session["resultado"] = resultado;
                            lblMensaje.Text = string.Format(resultado + " ¡Has perdido! La palabra era {0}.", palaAdi);
                            boton.Enabled = false;
                            boton.Visible = false;
                            reiniciar.Visible = true;
                            //btnGuardar.Visible = true;
                            ImgBtnA.Enabled = ImgBtnB.Enabled = ImgBtnC.Enabled = ImgBtnD.Enabled = ImgBtnE.Enabled = ImgBtnF.Enabled = ImgBtnG.Enabled = ImgBtnH.Enabled =
                            ImgBtnI.Enabled = ImgBtnJ.Enabled = ImgBtnK.Enabled = ImgBtnL.Enabled = ImgBtnM.Enabled = ImgBtnN.Enabled = ImgBtnÑ.Enabled = ImgBtnO.Enabled =
                            ImgBtnP.Enabled = ImgBtnQ.Enabled = ImgBtnR.Enabled = ImgBtnS.Enabled = ImgBtnT.Enabled = ImgBtnU.Enabled = ImgBtnV.Enabled = ImgBtnW.Enabled =
                            ImgBtnX.Enabled = ImgBtnY.Enabled = ImgBtnZ.Enabled = false;
                        }
                        break;

                    case "5":
                        intentos++;
                        Session["intentosRestantes"] = intentos;
                        lblIntentos.Text = intentos.ToString();
                        ImgAhorcado.ImageUrl = string.Format("~/ImgAhorcado2/{0}.png", intentos);
                        if (intentos == Convert.ToInt32(Session["nivel"]))
                        {
                            lblMensaje.ForeColor = Color.Red;
                            resultado = "Derrota :c";
                            Session["resultado"] = resultado;
                            lblMensaje.Text = string.Format(resultado + " ¡Has perdido! La palabra era {0}.", palaAdi);
                            boton.Enabled = false;
                            boton.Visible = false;
                            reiniciar.Visible = true;
                            //btnGuardar.Visible = true;
                            ImgBtnA.Enabled = ImgBtnB.Enabled = ImgBtnC.Enabled = ImgBtnD.Enabled = ImgBtnE.Enabled = ImgBtnF.Enabled = ImgBtnG.Enabled = ImgBtnH.Enabled =
                            ImgBtnI.Enabled = ImgBtnJ.Enabled = ImgBtnK.Enabled = ImgBtnL.Enabled = ImgBtnM.Enabled = ImgBtnN.Enabled = ImgBtnÑ.Enabled = ImgBtnO.Enabled =
                            ImgBtnP.Enabled = ImgBtnQ.Enabled = ImgBtnR.Enabled = ImgBtnS.Enabled = ImgBtnT.Enabled = ImgBtnU.Enabled = ImgBtnV.Enabled = ImgBtnW.Enabled =
                            ImgBtnX.Enabled = ImgBtnY.Enabled = ImgBtnZ.Enabled = false;
                        }
                        break;

                    case "3":
                        intentos++;
                        Session["intentosRestantes"] = intentos;
                        lblIntentos.Text = intentos.ToString();
                        ImgAhorcado.ImageUrl = string.Format("~/ImgAhorcado3/{0}.png", intentos);
                        if (intentos == Convert.ToInt32(Session["nivel"]))
                        {
                            lblMensaje.ForeColor = Color.Red;
                            resultado = "Derrota :c";
                            Session["resultado"] = resultado;
                            lblMensaje.Text = string.Format(resultado + " ¡Has perdido! La palabra era {0}.", palaAdi);
                            boton.Enabled = false;
                            boton.Visible = false;
                            reiniciar.Visible = true;
                            //btnGuardar.Visible = true;
                            ImgBtnA.Enabled = ImgBtnB.Enabled = ImgBtnC.Enabled = ImgBtnD.Enabled = ImgBtnE.Enabled = ImgBtnF.Enabled = ImgBtnG.Enabled = ImgBtnH.Enabled =
                            ImgBtnI.Enabled = ImgBtnJ.Enabled = ImgBtnK.Enabled = ImgBtnL.Enabled = ImgBtnM.Enabled = ImgBtnN.Enabled = ImgBtnÑ.Enabled = ImgBtnO.Enabled =
                            ImgBtnP.Enabled = ImgBtnQ.Enabled = ImgBtnR.Enabled = ImgBtnS.Enabled = ImgBtnT.Enabled = ImgBtnU.Enabled = ImgBtnV.Enabled = ImgBtnW.Enabled =
                            ImgBtnX.Enabled = ImgBtnY.Enabled = ImgBtnZ.Enabled = false;
                        }
                        break;

                    default:
                        break;
                }
                
            }
            boton.Enabled = false;
            boton.Visible = false;
        }

        protected void reiniciar_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

    }
}