<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarCliente.aspx.cs" Inherits="promo_web.RegistrarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion{
            color: red;
            font-size: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <form class="row g-6">

        <div class="col-3">
            <label for="txtDni" class="form-label">DNI</label>
            <asp:TextBox ID="txtDni" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtDni_TextChanged" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El DNI es requerido" ControlToValidate="txtDni" runat="server" />
        </div>

        <div class="row g-6">

            <div class="col-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El nombre es requerido" ControlToValidate="txtNombre" runat="server" />
            </div>

            <div class="col-3">
                <label for="txtApellido" class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El apellido" ControlToValidate="txtApellido" runat="server" />
            </div>
        

            <div class="col-3">
                <label for="txtMail">Mail</label>
                <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="spMail">@</span>
                </div>
                 <asp:TextBox ID="txtMail" CssClass="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El mail es requerido" ControlToValidate="txtMail" runat="server" />
                <!--input type="text" class="form-control is-invalid" id="txtMail" placeholder="mail@mail.com" aria-describedby="txtMail" required-->
                
            </div>
        </div>

    </div>
 <div class="row g-6">

     <div class="col-3">
         <label for="txtDireccion" class="form-label">Direccion</label>
         <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="La direccion es requerida" ControlToValidate="txtDireccion" runat="server" />
     </div>

     <div class="col-3">
         <label for="txtCiudad" class="form-label">Ciudad</label>
         <asp:TextBox ID="txtCiudad" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="La ciudad es requerida" ControlToValidate="txtCiudad" runat="server" />
     </div>

     <div class="col-3">
         <label for="txtCP"class="form-label">CP</label>
         <asp:TextBox ID="txtCP" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El CP es requerido" ControlToValidate="txtCP" runat="server" />
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
            <asp:Button Text="Participar!" ID="btnParticipar" OnClick="btnParticipar_Click" CssClass="btn btn-primary" runat="server"></asp:Button>
        </div>
    </form>
</asp:Content>
