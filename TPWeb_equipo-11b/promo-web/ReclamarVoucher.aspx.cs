using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace promo_web
{
    public partial class ReclamarVoucher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCanjear_Click(object sender, EventArgs e)
        {
            string CodigoCanje = txbCargaCodigo.Text;// guardo el dato del boton 
            lblValidar.Text = "Estamos validando el codigo: " + CodigoCanje;
           
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}