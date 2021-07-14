<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterAdmin.Master" CodeBehind="InicioAdmin.aspx.vb" Inherits="agenciaViajes.DefaultAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(images/big_image_1.jpg);">
    <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
            <div class="col-md-8 text-center">

                <div class="mb-5 element-animate">
                    <h1>Encuentra tu lugar perfecto.</h1>
                    <p>Descubre &amp; conecta con los mejores lugares alrededor del mundo.</p>
                </div>

                <form class="form-inline element-animate" id="search-form">
                    <label for="s" class="sr-only">Ubicación</label>
                    <input type="text" class="form-control form-control-block search-input" id="autocomplete" placeholder="Search Location with Google Search API" onFocus="geolocate()">
                    <button type="submit" class="btn btn-primary">Buscar</button>
                </form>

            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="feature-destination">
    <div class="container">
        <div class="row">
            <div class="col-md-4 element-animate ">
                <a href="#" class="img-bg" style="background-image: url('images/img_2.jpg')">
                    <div class="text">
                        <span class="icon ion-ios-location"></span>
                        <h2>Stockton Beach, Austrlia</h2>
                        <p>Visitar este lugar</p>
                    </div>
                </a>
            </div>
            <div class="col-md-4 element-animate ">
                <a href="#" class="img-bg" style="background-image: url('images/img_1.jpg')">
                    <div class="text">
                        <span class="icon ion-ios-location"></span>
                        <h2>Trogir, Croacia</h2>
                        <p>Visitar este lugar</p>
                    </div>
                </a>
            </div>
            <div class="col-md-4 element-animate ">
                <a href="#" class="img-bg last" style="background-image: url('images/img_3.jpg')">
                    <div class="text">
                        <span class="icon ion-ios-location"></span>
                        <h2>Desierto, Morocco</h2>
                        <p>Visitar este lugar</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="site-section">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center">
                <h2>Nuestros Destinos Top</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum magnam illum maiores adipisci pariatur, eveniet.</p>
            </div>
        </div>
        <div class="row top-destination">
            <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                <a href="#" class="place">
                    <img src="images/img_1.jpg" alt="Image placeholder">
                    <h2>Trogir, Croacia</h2>
                    <p>Visitar este lugar</p>
                </a>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                <a href="#" class="place">
                    <img src="images/img_2.jpg" alt="Image placeholder">
                    <h2>Stockton Beach, Australia</h2>
                    <p>Visitar este lugar</p>
                </a>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                <a href="#" class="place">
                    <img src="images/img_3.jpg" alt="Image placeholder">
                    <h2>Desierto, Morocco</h2>
                    <p>Visitar este lugar</p>
                </a>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                <a href="#" class="place">
                    <img src="images/img_4.jpg" alt="Image placeholder">
                    <h2>Taj Mahal, India</h2>
                    <p>Visitar este lugar</p>
                </a>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                <a href="#" class="place">
                    <img src="images/img_5.jpg" alt="Image placeholder">
                    <h2>Torre Eiffel, Francia</h2>
                    <p>Visitar este lugar</p>
                </a>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-6 col-12">
                <a href="#" class="place">
                    <img src="images/img_6.jpg" alt="Image placeholder">
                    <h2>Opera House, Australia</h2>
                    <p>Visitar este lugar</p>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="section-cover" data-stellar-background-ratio="0.5" style="background-image: url(images/big_image_2.jpg);">
    <div class="container">
        <div class="row justify-content-center align-items-center intro">
            <div class="col-md-7 text-center element-animate">
                <h2>Obten 10% menos en tu siguiente viaje</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem tempore expedita facere facilis, dolores!</p>
                <p><a href="#" class="btn btn-black">Reservar</a></p>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="site-section">
    <div class="container">
        <div class="row">
            <div class="col-md-4 pr-5">

                <h2 class="mb-3">Lugares que te puedan interesar <br> Destinos</h2>
                <p class="mb-5">Lejano a todo lo que estás acostumbrado a ver, Vokalia and Consonantia. </p>

                <div class="mb-3">
                    <a href="#" class="btn btn-primary custom-prev mr-2 mb-2"><span class="ion-android-arrow-back"></span></a>
                    <a href="#" class="btn btn-primary custom-next mr-2 mb-2"><span class="ion-android-arrow-forward"></span></a>
                </div>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12 slider-wrap">
                        <div class="owl-carousel owl-theme no-nav js-carousel-1">

                            <a href="#" class="img-bg" style="background-image: url('images/img_2.jpg')">
                                <div class="text">
                                    <span class="icon ion-ios-location"></span>
                                    <h2>Stockton Beach, Austrlia</h2>
                                    <p>Visitar este lugar</p>
                                </div>
                            </a>

                            <a href="#" class="img-bg" style="background-image: url('images/img_1.jpg')">
                                <div class="text">
                                    <span class="icon ion-ios-location"></span>
                                    <h2>Trogir, Croacia</h2>
                                    <p>Visitar este lugar</p>
                                </div>
                            </a>

                            <a href="#" class="img-bg last" style="background-image: url('images/img_3.jpg')">
                                <div class="text">
                                    <span class="icon ion-ios-location"></span>
                                    <h2>Desierto, Morocco</h2>
                                    <p>Visitar este lugar</p>
                                </div>
                            </a>

                            <a href="#" class="img-bg" style="background-image: url('images/img_2.jpg')">
                                <div class="text">
                                    <span class="icon ion-ios-location"></span>
                                    <h2>Stockton Beach, Austrlia</h2>
                                    <p>Visitar este lugar</p>
                                </div>
                            </a>

                            <a href="#" class="img-bg" style="background-image: url('images/img_1.jpg')">
                                <div class="text">
                                    <span class="icon ion-ios-location"></span>
                                    <h2>Trogir, Croacia</h2>
                                    <p>Visitar este lugar</p>
                                </div>
                            </a>

                            <a href="#" class="img-bg last" style="background-image: url('images/img_3.jpg')">
                                <div class="text">
                                    <span class="icon ion-ios-location"></span>
                                    <h2>Desierto, Morocco</h2>
                                    <p>Visitar este lugar</p>
                                </div>
                            </a>

                            <a href="#" class="img-bg" style="background-image: url('images/img_2.jpg')">
                                <div class="text">
                                    <span class="icon ion-ios-location"></span>
                                    <h2>Stockton Beach, Austrlia</h2>
                                    <p>Visitar este lugar</p>
                                </div>
                            </a>

                            <a href="#" class="img-bg" style="background-image: url('images/img_1.jpg')">
                                <div class="text">
                                    <span class="icon ion-ios-location"></span>
                                    <h2>Trogir, Croacia</h2>
                                    <p>Visitar este lugar</p>
                                </div>
                            </a>

                            <a href="#" class="img-bg last" style="background-image: url('images/img_3.jpg')">
                                <div class="text">
                                    <span class="icon ion-ios-location"></span>
                                    <h2>Desierto, Morocco</h2>
                                    <p>Visitar este lugar</p>
                                </div>
                            </a>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END section -->
</asp:Content>
