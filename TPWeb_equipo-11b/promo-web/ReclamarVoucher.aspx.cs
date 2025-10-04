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
            
                        
            VouchersNegocio negocio = new VouchersNegocio();
            
            //bool esValido = negocio.ValidarVoucher(CodigoCanje);

            if (negocio.ValidarVoucher(CodigoCanje))
            {
                 
                Session["CodigoVoucher"] = CodigoCanje;//guarda el dato para luego consumirlo desde otras paginas

                
                Response.Redirect("ElegirArticulos.aspx", false); // redirige a la pag de los articulos

            }
            else
            {
                lblValidar.Text = "El còdigo ingresado no existe o ya fue canjeado ";
                

            }
            if (IsPostBack)
                txbCargaCodigo.Text = string.Empty;//limpio el campo de carga

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}