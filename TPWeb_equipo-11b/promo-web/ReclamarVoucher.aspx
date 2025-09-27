<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReclamarVoucher.aspx.cs" Inherits="promo_web.ReclamarVoucher" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="text-dark-emphasis bg-warning-subtle" >Bienvenido a la seccion de canjes!!</h1>
    <div class="mb-3">
    <asp:Label ID="lblIngresaCodigo" runat="server" CssClass="form-label" Text="Label"> Ingresa el codigo</asp:Label>
    </div>
    
    <div class="mb-3">
    <asp:TextBox ID="txbCargaCodigo" CssClass="form-control" runat="server"></asp:TextBox>
    </div>
    
    <div class="mb-3">
<asp:Button ID="btnCanjear" runat="server" CssClass="btn btn-primary" onclick="btnCanjear_Click" Text="Canjear" />
</div>
    <div class="mb-3">
    <asp:Label ID="lblValidar" runat="server" Text="Label"> Aguardando el codigo para validar</asp:Label>
    </div>
    <div class="mb-3">
        <asp:Button ID="btnVolver" runat="server"  cssClass="btn btn-success" OnClick="btnVolver_Click" Text="Volver a Home" />

    </div>


</asp:Content>
