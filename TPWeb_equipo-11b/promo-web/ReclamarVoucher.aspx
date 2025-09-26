<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReclamarVoucher.aspx.cs" Inherits="promo_web.ReclamarVoucher" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Bienveido a la seccion de canjes!!</h1>
    <div>
    <asp:Label ID="lblIngresaCodigo" runat="server" Text="Label"> Ingresa el codigo</asp:Label>
    </div>
    
    <div>
    <asp:TextBox ID="txbCargaCodigo" runat="server"></asp:TextBox>
    </div>
    <div>
<asp:Button ID="btnCanjear" runat="server" onclick="btnCanjear_Click" Text="Canjear" />
</div>
    <div>
    <asp:Label ID="lblValidar" runat="server" Text="Label"> Aguardando el codigo para validar</asp:Label>
    </div>
    <div>
        <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver a Home" />

    </div>


</asp:Content>
