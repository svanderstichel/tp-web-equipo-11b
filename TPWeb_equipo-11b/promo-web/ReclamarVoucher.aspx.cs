using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace promo_web
{
    public partial class ReclamarVoucher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            txbCargaCodigo.Text = " Cargue su codigo aqui...";
                        
        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            string CodigoCanje = txbCargaCodigo.Text;// guardo el dato del boton 
            lblValidar.Text = "Estamos validando el codigo: " + CodigoCanje;
            if (IsPostBack)
                txbCargaCodigo.Text = string.Empty;//limpio el campo de carga

            Session.Add("Codigo", CodigoCanje); //guarda el dato para luego consumirlo desde otras paginas


            //Response.Redirect("ElegirArticulos.aspx", false); cuando valide que el codigo es correcto debe ir directo a la pag de seleccionar el articulo


        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}