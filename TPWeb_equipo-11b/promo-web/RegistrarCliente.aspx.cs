using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace promo_web
{
    public partial class RegistrarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            try
            {
                Clientes cliente = new Clientes();
                ClientesNegocio negocio = new ClientesNegocio();

                cliente.Documento = txtDni.Text;
                cliente.Nombre = txtNombre.Text;
                cliente.Apellido = txtApellido.Text;
                cliente.Email = txtMail.Text;
                cliente.Direccion = txtDireccion.Text;
                cliente.Ciudad = txtCiudad.Text;
                cliente.CP = int.Parse(txtCP.Text);

                Clientes existe = new Clientes();
                existe = negocio.BuscarClientePorDni(cliente.Documento);

                if (existe != null)
                {
                    negocio.Actualizar(cliente);
                }
                else
                {
                    negocio.Agregar(cliente);
                }


               // VouchersNegocio vouchersNegocio = new VouchersNegocio();
               // Vouchers voucher = new Vouchers();
               // voucher.IdVouchers = int.Parse(Session["CodigoVoucher"].ToString());
               // voucher.IdCliente = cliente.Id;
               // voucher.fechaCarg = DateTime.Now;
               // voucher.IdArticulo = int.Parse(Request.QueryString["id"]);

               // vouchersNegocio.CompletarVoucher(voucher);

                Response.Redirect("Exito.aspx", false);
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }

        }

        protected void txtDni_TextChanged(object sender, EventArgs e)
        {
            ClientesNegocio negocio = new ClientesNegocio();
            Clientes existe = new Clientes();

            //uso el metodo para comprobar la existencia del dni en bd
            existe = negocio.BuscarClientePorDni(txtDni.Text);

            //si existe me trae todos los datos, y los guardo en el txtbox de cada atributo sino me da null
            if (existe != null)
            {
                txtNombre.Text = existe.Nombre;
                txtApellido.Text = existe.Apellido;
                txtMail.Text = existe.Email;
                txtDireccion.Text = existe.Direccion;
                txtCiudad.Text = existe.Ciudad;
                txtCP.Text = existe.CP.ToString();
            }

        }
    }
}