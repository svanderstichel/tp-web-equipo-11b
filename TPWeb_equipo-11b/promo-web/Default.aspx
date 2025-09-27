<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="promo_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="my-5">
  <div class="row justify-content-center">
    <div class="col-md-6 col-lg-4">
      <div class="card shadow-sm">
        <div class="card-body">
          <h5 class= "text-bg-dark" >TP Web ASP.NET</h5>
           <p class="card-text">
            Bienvenidos a la aplicación web dedicada a reclamar códigos de voucher, 
            elegir artículos y dar de alta a clientes.</p>
              <div   class="card" style="width: 18rem;">
               <img src="https://th.bing.com/th/id/OIP.YfXRLckK8BHP_r2JgdlacAHaHa?w=186&h=186&c=7&r=0&o=5&pid=1.7" class="card-img-top" alt="...">
              </div>
            <p>Sitio web desarrollado por el equipo 11b:</p>
            <ul>
            <li class="form-select-lg" >Carolina Mabel Gandin</li>
            <li class="form-select-lg">Celeste Ayelén Diaz</li>
            <li class="form-select-lg">Santiago Camilo Gerardo Vanderstichel</li>
          </ul>
          <a href="ReclamarVoucher.aspx" class="btn btn-primary">Reclamar Voucher</a>
        </div>
      </div>
    </div>
  </div>
</div>
    



</asp:Content>
