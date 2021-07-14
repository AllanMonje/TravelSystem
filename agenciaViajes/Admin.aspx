<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="agenciaViajes.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="css/pruebas.css">

<link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">

<!-- Theme Style -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TravelWorld</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="site-hero overlay" data-stellar-background-ratio="0.5"
         style="background-image: url(images/big_image_1.jpg);">
    <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
            <div class="row">
                <div class="column" style="background-color: transparent;">
                    <div class="container">
                        <h1 align="center">USUARIOS ADMIN</h1>
                        <img src="images/usuarios.png" alt="Snow" style="width:100%">

            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="" />
                    </div>
                </div>
                <div class="column" style="background-color:transparent;">
                    <div class="container">
                        <h1 align="center">PANEL ADMIN</h1>
                        <img src="images/book.png" alt="Snow" style="width:100%">
                          <asp:Button ID="Button2" runat="server" CssClass="btn" Text="" />
                  
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
            <footer id="footer" class="site-footer">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-4">
                <h3 class="mb-4">Acerca</h3>
                <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut, quod!</p>
                <ul class="list-unstyled ">
                    <li class="d-flex"><span class="mr-3"><span class="icon ion-ios-location"></span></span><span class="">Barrio el Imán, La Satelite, SPS</span></li>
                    <li class="d-flex"><span class="mr-3"><span class="icon ion-ios-telephone"></span></span><span class="">+1 242 4942 290</span></li>
                    <li class="d-flex"><span class="mr-3"><span class="icon ion-email"></span></span><span class="">info@yourdomain.com</span></li>
                </ul>
            </div>
            <div class="col-md-2">
                <h3 class="mb-4">Links</h3>
                <ul class="list-unstyled ">
                    <li><a href="acerca.aspx">Acerca</a></li>
                    <li><a href="MasterAdmin.Master">Inicio</a></li>
                    <li><a href="blog.aspx">blog</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h3 class="mb-4">Blog Actualizado</h3>
                <ul class="list-unstyled blog-entry-footer">
                    <li><a href="#">
                        <span class="post-meta">Julio 23, 2020</span>
                        <h3>Destinaciones en el Mundo</h3></a>
                    </li>
                    <li><a href="#">
                        <span class="post-meta">Julio 23, 2020</span>
                        <h3>4 Horas de Trabajo a la Semana, el Resto es Trabajo </h3></a>
                    </li>
                    <li><a href="#">
                        <span class="post-meta">Julio 23, 2020</span>
                        <h3>Aprovecha los Mejores Precios</h3></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3">
                <h3>Siguenos</h3>
                <p>
                    <a href="#" class="p-2"><span class="fa fa-facebook"></span></a>
                    <a href="#" class="p-2"><span class="fa fa-twitter"></span></a>
                    <a href="#" class="p-2"><span class="fa fa-instagram"></span></a>
                </p>
            </div>
        </div>
    </div>
</footer>
        </div>
    </form>
</body>
</html>
