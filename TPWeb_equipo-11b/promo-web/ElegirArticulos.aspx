<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ElegirArticulos.aspx.cs" Inherits="promo_web.ElegirArticulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .carousel-control-prev,
        .carousel-control-next{
        background-color:  #212529;
        opacity: 0.5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="my-5">
        <div class="row justify-content-center">
            <div class="col-auto">
                <h1>Elegí tu premio!</h1>
            </div>
        </div>
    </div>

    <div class="row row-cols-1 row-cols-md-2 g-4 pb-5 my-5">
        <% 
            foreach (dominio.Articulo articulo in listaArticulos)
            {
        %>
        <div class="col">
            <div class="card">
                <div id="carousel<%:articulo.IdArticulo %>" class="carousel slide card-carousel" style="height:300px;">
                    <div class="carousel-inner" style="height:300px;">
                        <% 
                            bool primerImagen = true;
                            foreach (dominio.Imagen imagen in articulo.ListaImagenes)
                            {
                                if (primerImagen)
                                {
                        %>
                        <div class="carousel-item active" style="height:300px;">
                            <img src="<%: imagen.Url %>" class="d-block w-100" style="height:300px; object-fit:contain;" alt="<%: articulo.Nombre %>">
                        </div>
                        <% primerImagen = false;
                            }
                            if (!primerImagen)
                            { %>
                        <div class="carousel-item" style="height:300px;">
                            <img src="<%: imagen.Url %>" class="d-block w-100" style="height:300px; object-fit:contain;" alt="<%: articulo.Nombre %>">
                        </div>
                        <% } %>
                        <% } %>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carousel<%:articulo.IdArticulo %>" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carousel<%:articulo.IdArticulo %>" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
                <div class="card-body">
                    <h5 class="card-title"><%: articulo.Nombre %></h5>
                    <p class="card-text"><%: articulo.Descripcion %></p>
                    <a href="#" class="btn btn-primary">Participá!</a>
                </div>
            </div>
        </div>

        <% } %>
    </div>

</asp:Content>
