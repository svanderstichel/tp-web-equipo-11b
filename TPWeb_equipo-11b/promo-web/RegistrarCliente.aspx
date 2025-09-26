<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarCliente.aspx.cs" Inherits="promo_web.RegistrarCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form class="row g-6">
        <div class="col-3">
          <label for="validationServerDNI">DNI</label>
         <input type="text" class="form-control is-invalid" id="validationServerDNI" placeholder="DNI" required">
   
            <div class="invalid-feedback">
        Falta DNI!
      </div>

            </div>
  <div class="row g-6">
     <div class="col-3">
          <label for="validationServerNombre">Nombre</label>
         <input type="text" class="form-control is-invalid" id="validationServerNombre" placeholder="Nombre" aria-label="Nombre">
               <div class="invalid-feedback">
        Falta Nombre
      </div>
     </div>
     <div class="col-3">
          <label for="validationServerApellido">Apelliido</label>
         <input type="text" class="form-control is-invalid" id="validationServerApellido" placeholder="Apellido" aria-label="Apellido">
               <div class="invalid-feedback">
        Falta Apellido
      </div>
     </div>
     <div class="col-3">
      <label for="validationServerMail">Mail</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text" id="inputGroupPrepend3">@</span>
        </div>
        <input type="text" class="form-control is-invalid" id="validationServerMail" placeholder="mail@mail.com" aria-describedby="inputGroupPrepend3" required>
        <div class="invalid-feedback"> Falta Mail </div>
       </div> 
     </div>
   </div>
    
 <div class="row g-6">
         <div class="col-3">
          <label for="validationServerDireccion">Direccion</label>
         <input type="text" class="form-control is-invalid" id="validationServerDireccion" placeholder="Direccion" aria-label="Direccion">
               <div class="invalid-feedback">
        Falta Direccion
      </div>
            </div>
   <div class="col-3">
    <label for="validationServerCiudad">Ciudad</label>
   <input type="text" class="form-control is-invalid" id="validationServerCiudad" placeholder="Ciudad" aria-label="Ciudad">
         <div class="invalid-feedback">
  Falta Ciudad
</div>
      </div>
          <div class="col-3">
          <label for="validationServerCP">CP</label>
         <input type="text" class="form-control is-invalid" id="validationServerCP" placeholder="CP" aria-label="CP">
               <div class="invalid-feedback">
        Falta CP
      </div>
            </div>
       </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Acepto los Terminos y Condiciones
      </label>
    </div>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Participar!</button>
  </div>
</form>
</asp:Content>
