<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="promo_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container my-5">
  <div class="row justify-content-center">
    <div class="col-md-6 col-lg-4">
      <div class="card shadow-sm">
        <div class="card-body">
          <h5 class="card-title">TP Web ASP.NET</h5>
          <p class="card-text">
            Bienvenidos a la aplicación web dedicada a reclamar códigos de voucher, 
            elegir artículos y dar de alta a clientes.</p>
            <p>Sitio web desarrollado por el equipo 11b:</p>
            <ul>
            <li>Carolina Mabel Gandin</li>
            <li>Celeste Ayelén Diaz</li>
            <li>Santiago Camilo Gerardo Vanderstichel</li>
          </ul>
          <a href="ReclamarVoucher.aspx" class="btn btn-primary">Reclamar Voucher</a>
        </div>
      </div>
    </div>
  </div>
</div>
</asp:Content>
