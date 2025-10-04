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
    public partial class ElegirArticulos : System.Web.UI.Page
    {
        public List<Articulo> listaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            try
            {
                listaArticulos = negocio.ListarArticulos();
            }
            catch(Exception)
            {
                Session.Add("Error","Se produjo un error de conexión a la base de datos");
                Response.Redirect("Error.aspx");
            }
        }
    }
}