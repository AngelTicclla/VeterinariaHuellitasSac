<%-- 
    Document   : PetShop
    Created on : 26/08/2021, 01:38:47 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<%
    HttpSession ses = request.getSession();
    int codigo = 0;
    
    if (ses.getAttribute("id") != null) {
        codigo = Integer.parseInt(ses.getAttribute("id").toString());
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/d729fc7782.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="Css/Petshopcss.css" type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous" />
        <link href="Css/Petshopcss.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,500;1,900&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>


        <header class=" ">
            <nav class="navbar navbar-expand-lg navbar-light navbar_color navbar-fixed-top">
                <div class="container-fluid">
                    <a class="navbar-brand" href="Index.jsp">
                        <img class="logo-empresa" src="img/Logo_principal.png" alt="">
                    </a>
                    <button class="navbar-toggler bg-info rounded-3" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active btn btn-outline-danger " aria-current="page" href="#">
                                    <i class="fas fa-user  "></i>

                                </a>
                            </li>

                            <li class="nav-item me-2">
                                <a class="btn text-white" href="#" tabindex="-1" aria-disabled="true" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    <i class="fas fa-map-marker-alt"> Ubicanos</i>



                                </a>
                            </li>
                            <li class="nav-item nav_delivey me-2">
                                <a type="" class=" btn text-white" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                    <i class="fas fa-phone-alt"> Delivery</i>

                                </a>
                            </li>
                            <li class="nav-item me-2">
                                <a class="btn text-white" href="Carrito.jsp" tabindex="-1" aria-disabled="true">
                                    <i class="fas fa-shopping-cart "> Carrito</i>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">${nombre} ${apellido}</a>
                                <ul class="dropdown-menu">
                                    <img src="img/user64.png" width="90px"height="90px"style="margin-left: 80px">

                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#"> <b>${email}</b></a></li>
                                    <li><a class="dropdown-item" href="Cliente.jsp"> <b>Configuración</b></a></li>
                                    <li><a class="dropdown-item" href="Index.jsp"> <b>Salir</b></a></li>
                                </ul>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2 px-5" type="search" placeholder="Busca Tu Producto" aria-label="Search" />
                            <button class="btn  btn-danger" type="submit" name="btn_buscar">Buscar</button>
                        </form>

                    </div>

                </div>
            </nav>
            <nav class=" p-2 navbar-expand-lg navbar-dark bg-success ">

                <ul class="nav justify-content-center">
                    <li class="nav-item">

                        <div class="dropdown menu-desple">
                            <a class="nav-link active dropdown-toggle"  href="#" d="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">Perros</a>

                            <ul class="dropdown-menu  image-fondo"   aria-labelledby="dropdownMenu2">
                                <div class="container-fluid  d-lg-flex d-sm-block contenedor2 m-auto" >
                                    <div class="row col-lg-6 col-sm-12"> 
                                        <li><a href="#" class="dropdown-item text-primary " type=""> <b>ALIMENTO</b></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Alimento Seco</b></a></li>
                                        <li><a href="#" class="dropdown-item " type="">  <b>Alimento Humedo</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""> <b>Alimento Rabioso</b>    </a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Snacks</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>

                                        <br><br><br><br><br>

                                        <div class="container me-4"> 

                                            <img src="../Img/ricocan.jpg" alt=""class=" logo-empresa2 me-2">
                                            <img src="../Img/proplan-logo.jpg" alt=""class=" logo-empresa2">
                                        </div>
                                    </div>

                                    <div class="row col-lg-6 col-sm-12 contenedor m-auto ms-2"> 
                                        <li><a href="#" class="dropdown-item text-primary " type=""> <b>CUIDADO E HIGIENE</b></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Antipulgas</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Pañales</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Shampo</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Cuidado Oral</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Cepillo</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Correas</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <br><br><br><br><br>
                                        <div class="container me-4"> 
                                            <img src="../Img/royal.jpg" alt=""class=" logo-empresa2 me-2">
                                            <img src="../Img/mimaskot.png" alt=""class=" logo-empresa2">

                                        </div>
                                    </div>
                                </div>
                            </ul>


                        </div>

                    </li>
                    <!--END PERROS-->
                    <li class="nav-item">
                        <div class="dropdown">
                            <a class="nav-link active dropdown-toggle"  href="#" d="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">Gatos</a>

                            <ul class="dropdown-menu  image-fondo"   aria-labelledby="dropdownMenu2">
                                <div class="container-fluid  d-lg-flex d-sm-block contenedor2 m-auto" >
                                    <div class="row col-lg-6 col-sm-12"> 
                                        <li><a href="#" class="dropdown-item text-primary " type=""> <b>ALIMENTO</b></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Alimento Seco</b></a></li>
                                        <li><a href="#" class="dropdown-item " type="">  <b>Alimento Humedo</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""> <b>Alimento Rabioso</b>    </a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Snacks</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>

                                        <br><br><br><br><br>

                                        <div class="container me-4"> 

                                            <img src="../Img/ricocan.jpg" alt=""class=" logo-empresa2 me-2">
                                            <img src="../Img/proplan-logo.jpg" alt=""class=" logo-empresa2">
                                        </div>
                                    </div>

                                    <div class="row col-lg-6 col-sm-12 contenedor m-auto ms-2"> 
                                        <li><a href="#" class="dropdown-item text-primary " type=""> <b>CUIDADO E HIGIENE</b></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Antipulgas</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Pañales</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Shampo</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Cuidado Oral</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Cepillo</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Correas</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <br><br><br><br><br>
                                        <div class="container me-4"> 
                                            <img src="../Img/royal.jpg" alt=""class=" logo-empresa2 me-2">
                                            <img src="../Img/mimaskot.png" alt=""class=" logo-empresa2">

                                        </div>
                                    </div>
                                </div>
                            </ul>


                        </div>



                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a class="nav-link active dropdown-toggle"  href="#" d="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">Accesorios</a>
                            <ul class="dropdown-menu  image-fondo"   aria-labelledby="dropdownMenu2">
                                <div class="container-fluid  d-lg-flex d-sm-block contenedor2 m-auto" >
                                    <div class="row col-lg-6 col-sm-12"> 
                                        <li><a href="#" class="dropdown-item text-primary " type=""> <b>ALIMENTO</b></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Alimento Seco</b></a></li>
                                        <li><a href="#" class="dropdown-item " type="">  <b>Alimento Humedo</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""> <b>Alimento Rabioso</b>    </a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Snacks</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>

                                        <br><br><br><br><br>

                                        <div class="container me-4"> 

                                            <img src="../Img/ricocan.jpg" alt=""class=" logo-empresa2 me-2">
                                            <img src="../Img/proplan-logo.jpg" alt=""class=" logo-empresa2">
                                        </div>
                                    </div>

                                    <div class="row col-lg-6 col-sm-12 contenedor m-auto ms-2"> 
                                        <li><a href="#" class="dropdown-item text-primary " type=""> <b>CUIDADO E HIGIENE</b></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Antipulgas</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Pañales</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Shampo</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Cuidado Oral</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Cepillo</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""><b>Correas</b></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <li><a href="#" class="dropdown-item " type=""></a></li>
                                        <br><br><br><br><br>
                                        <div class="container me-4"> 
                                            <img src="../Img/royal.jpg" alt=""class=" logo-empresa2 me-2">
                                            <img src="../Img/mimaskot.png" alt=""class=" logo-empresa2">

                                        </div>
                                    </div>
                                </div>
                            </ul>


                        </div>



                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Marcas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-warning" href="#">Ofertas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-warning" href="#">Liquidacion</a>
                    </li>
                </ul>
            </nav>
            <!<!-- REDES INICIO -->
            <div class="sticky-container">
                <ul class="sticky">
                    <li style="box-shadow: 10px 20px 20px blue; border-radius: 15px;background-color: blue">
                        <img class="" src="img/facebook.png" width="32" height="32" >
                        <p class=" text-white"><a href="https://www.facebook.com/veterinariahuellitasbarranca"  target="_blank" class="text-white"> <b> Huellitas<br class="">Facebook</b></a></p>
                    </li>
                    <li style="box-shadow: 0px 10px 20px cyan;border-radius: 15px;background-color: aqua">
                        <img src="img/twitter.png" width="32" height="32">
                        <p class="text-white"><a href="https://twitter.com/huellitas_vet1" target="_blank" class=""><b> Huellitas<br>Twiter</b></a></p>
                    </li>

                    <li style="box-shadow: 0px 10px 20px red;border-radius: 15px;background-color: #E5110A">
                        <img src="img/youtubenegro.png" width="32" height="32">
                        <p class="text-white"><a href="https://www.youtube.com/channel/UC0JKjMXyVrfop-2mwC8lZ8w" target="_blank" class="text-white"> <b> Suscribete<br>YouYube </b></a></p>
                    </li>
                    <li style="box-shadow: 0px 10px 20px #00ff00;border-radius: 15px;background-color: greenyellow">
                        <img src="img/whatssapredes.png" width="32" height="32">
                        <p class="text-white"><a href="https://api.whatsapp.com/send?phone=+935982848&text=!Hola!,%20%20Quisiera%20contactarme%20con%20la%20Cl%C3%ADnica%20veterinaria%20Huellitas%20%20" target="_blank" class=""> <b> Huellitas<br>Contactanos! </b></a></p>
                    </li>

                </ul>
            </div>
            <!<!-- REDES FIN -->                 


            <!------------------------->
        </header>
        <!--MODAL DELIVERY-->
        <!-- Button trigger modal -->
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"
             >
            <div class="modal-dialog ">
                <div class="modal-content">
                    <div class="modal-header ms-5">
                        <h5 class="modal-title h5" id="exampleModalLabel"><b>ESTAMOS A SU SERVICIO! </b> </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3902.035201441111!2d-77.03131028509002!3d-12.041097591471013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c9e6cd89b9fd%3A0xf6db9d86fe699ef3!2sVeterinaria%20Huellitas%20del%20Rimac!5e0!3m2!1ses!2spe!4v1629847344520!5m2!1ses!2spe"
                                width="500" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                        <a class="" href="https://www.google.com/maps/place/Veterinaria+Huellitas+del+Rimac/@-12.0410976,-77.0313103,17z/data=!3m1!4b1!4m5!3m4!1s0x9105c9e6cd89b9fd:0xf6db9d86fe699ef3!8m2!3d-12.0411057!4d-77.0291223"><button type="button" class="btn btn-primary">Vee en Google Maps</button></a>

                    </div>
                </div>
            </div>
        </div>


        <!<!-- END DELIVERY -->
        <!<!-- carrusel slider START -->
        <div class="container text-center mt-2">
            <span class="h5"> PROMOCIONES Y OFERTAS DEL MES !!!</span> <br> <span> <b>Exclusivo por pago tienda online</b></span>  
        </div>

        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner mt-4">
                <div class="carousel-item active" data-bs-interval="10000">
                    <img src="img/oferta1.png" class="d-block w-100 img-fluid" alt="..." />
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="img/oferta2.png" class="d-block w-100 img-fluid" alt="..." />
                </div>
                <div class="carousel-item">
                    <img src="img/oferta3.png" class="d-block w-100 img-fluid" alt="..." />
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!<!-- CARRUSEL END -->
        <!<!-- BOTONES MASCOTAS -->
        <div class="container mt-4">
            <button class="btn btn-primary me-2 btn_editar "> PERROS</button>
            <button class="btn btn-outline-primary me-2 btn_editar"> GATOS</button>
            <button class="btn btn-outline-primary me-2 btn_editar"> Otras Mascotas</button>
            <br>
            _____________________________________________________________________________________________
            <h2 class="main_title mt-2" > Alimentos de Mascotas </h2>

        </div>
        <!-- END BOTONES MASCOTAS -->
        <!-- START TIENDA PERROS -->
        <div class=" container  mt-4  ">
            <div class="row">

                <div class="card col-lg-3 col-md-2  border-1 - rounded-2 car_efecto  " style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/ricocan1.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Razas Pequeñas X 08 Kg" type="hidden">Ricocan Cordero Adultos Razas Pequeñas X 08 Kg</p>
                            <p class="text-center"></p><label>S/150.52</label><input name="txt_precio" value="150.52" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/160.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>

                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>


                        </div>

                    </form>
                </div>   


                <div class="card col-lg-3 col-md-2  border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/ricocan3.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Raza Medianas X 14 Kg" type="hidden">Ricocan Cordero Adultos Raza Medianas X 14 Kg</p>
                            <p class="text-center"></p><label>S/250.00</label><input name="txt_precio" value="250.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/280.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>

                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>


                        </div>

                    </form>
                </div>


                <div class="card col-lg-3 col-md-2   border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/ricocan4.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Razas Grandes X 10 Kg" type="hidden">Ricocan Cordero Adultos Razas Grandes X 10 Kg</p>
                            <p class="text-center"></p><label>S/180.00</label><input name="txt_precio" value="180.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/270.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>


                <div class="card col-3 col-lg-3 col-md-2 border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/ricocan5.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Ricocan Carne Razas Pequeñas X 07 Kg" type="hidden">Ricocan Carne Razas Pequeñas X 07 Kg</p>
                            <p class="text-center"></p><label>S/130.00</label><input name="txt_precio" value="130.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/140.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>


            </div>
        </div>




        <!--2-->
        <div class=" container  mt-4  ">
            <div class="row"> 
                <div class="card col-3 border-1 - rounded-2 car_efecto  " style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/ricocan6.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Ricocan Sabor Atún Razas Muy Pequeñas X 07 Kg" type="hidden">Ricocan Sabor Atún Razas Muy Pequeñas X 07 Kg</p>
                            <p class="text-center"></p><label>S/140.00</label><input name="txt_precio" value="140.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/150.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div> 
                <div class="card col-3 border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/ricocan7.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Ricocan Perfume Razas Pequeñas X 500 G." type="hidden">Ricocan Perfume Razas Pequeñas X 500 G.</p>
                            <p class="text-center"></p><label>S/23.00</label><input name="txt_precio" value="23.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/28.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>
                <div class="card col-3  border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/ricocan8.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Ricocan Perfume Adulto Raza Grande X 1 L" type="hidden">Ricocan Perfume Adulto Raza Grande X 1 L</p>
                            <p class="text-center"></p><label>S/30.00</label><input name="txt_precio" value="30.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/35.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>
                <div class="card col-3  border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/ricocan1.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Razas Pequeñas X 5 Kg" type="hidden">Ricocan Cordero Adultos Razas Pequeñas X 5 Kg</p>
                            <p class="text-center"></p><label>S/130.00</label><input name="txt_precio" value="130.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/140.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--3-->
        <div class=" container  mt-4  ">
            <div class="row min"> 
                <div class="card col-3 border-1 - rounded-2 car_efecto  " style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img id="id_foto" src="img/proplan4.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Purina Carne de Res Razas Pequeñas X 09 Kg" type="hidden">Purina Carne de Res Razas Pequeñas X 09 Kg</p>
                            <p class="text-center"></p><label>S/139.00</label><input name="txt_precio" value="139.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/145.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div> 
                <div class="card col-3  border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/proplan1.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Purina Pro Plan Razas Pequeñas X 07 Kg" type="hidden">Purina Pro Plan Razas Pequeñas X 07 Kg</p>
                            <p class="text-center"></p><label>S/90.00</label><input name="txt_precio" value="90.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/110.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>
                <div class="card col-3  border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/proplan3.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Purina Cordero Adultos Razas Medianas X 10 Kg" type="hidden">Purina Cordero Adultos Razas Medianas X 10 Kg</p>
                            <p class="text-center"></p><label>S/149.00</label><input name="txt_precio" value="149.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/155.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>
                <div class="card col-3 border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/proplan5.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Pro Plan Cordero Adultos Razas Grandes X 15 Kg" type="hidden">Pro Plan Cordero Adultos Razas Grandes X 15 Kg</p>
                            <p class="text-center"></p><label>S/219.00</label><input name="txt_precio" value="219.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/230.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div> 
        <!--4-->
        <div class=" container  mt-4  ">
            <div class="row min"> 
                <div class="card col-3  border-1 - rounded-2 car_efecto  " style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/proplan6.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Pro Plan Purina Cordero Adultos Razas Pequeñas X 10 Kg" type="hidden">Pro Plan Purina Cordero Adultos Razas Pequeñas X 10 Kg</p>
                            <p class="text-center"></p><label>S/149.00</label><input name="txt_precio" value="149.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/160.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div> 
                <div class="card col-3  border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/proplan7.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Purina Carne de Res Razas Muy Pequeñas X 05 Kg" type="hidden">Purina Carne de Res Razas Muy Pequeñas X 05 Kg</p>
                            <p class="text-center"></p><label>S/45.00</label><input name="txt_precio" value="45.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/55.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>
                <div class="card col-3  border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/proplan8.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Purina Cordero Adultos Razas Medianas X 08 Kg" type="hidden">Purina Cordero Adultos Razas Medianas X 08 Kg</p>
                            <p class="text-center"></p><label>S/75.00</label><input name="txt_precio" value="75.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/84.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>
                <div class="card col-3 border-1 - rounded-2 car_efecto" style="width: 18rem; ">
                    <form method="post" action="/Veterinaria_Huellitas/ProductoController" class="">
                        <img src="img/ricocan1.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text"><input name="txt_info" value="Purina Cordero Razas Pequeñas X 10 Kg" type="hidden">Purina Cordero Razas Pequeñas X 10 Kg</p>
                            <p class="text-center"></p><label>S/90.00</label><input name="txt_precio" value="90.00" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/112.00</span>
                            <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                            <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                            <button class="btn btn-warning ms-5 btn-lg mt-2 fs-6 fst-normal" name="btn_comprar"> Comprar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div> 
        <br><br><br><br> 
        <!-- END TIENDA PERROS -->
        <!--FOOTER-->
        <div class="container-fluid  py-5 bg-dark border border-1 border-white "style="background-color: #8E44AD">
            <div class="row">
                <div class="col-lg-4 col-md-12 m-auto">
                    <h4 class="fs-2  text-white m-auto">LOCALES Y CONTACTO</h4>

                    <ul class="list-unstyled horarios_p">
                        <li>
                            <p class="mb-0 text-white">Av. República de Panamá 6584, Barranco</p>
                            <p class="mb-0">998 195 193</p>
                            <p>01 446 6179 | 01 637 5132</p>
                        </li>
                        <li>
                            <p class="mb-0">Av. República de Panamá 6584, Barranco</p>
                            <p class="mb-0">998 195 193</p>
                            <p>01 446 6179 | 01 637 5132</p>
                        </li>
                        <li>
                            <p class="mb-0">Av. República de Panamá 6584, Barranco</p>
                            <p class="mb-0">998 195 193</p>
                            <p>01 446 6179 | 01 637 5132</p>
                        </li>
                        <li>
                            <p class="mb-0">Av. República de Panamá 6584, Barranco</p>
                            <p class="mb-0">998 195 193</p>
                            <p>01 446 6179 | 01 637 5132</p>
                        </li>
                        <li>
                            <p class="mb-0">Av. República de Panamá 6584, Barranco</p>
                            <p class="mb-0">998 195 193</p>
                            <p>01 446 6179 | 01 637 5132</p>
                        </li>

                    </ul>

                </div>



                <div class="col-md-4">
                    <h4 class="text-uppercase oswald fs-2 text-capitalize text-white">HORARIOS</h4>
                    <ul class="list-unstyled mb-0 horarios_p">
                        <li>
                            <p class="mb-0 font-weight-bold">Barranco</p>
                            <p class="mb-0">Atención: Lunes a Domingo - 7 a.m. - 8 p.m.</p>
                            <p>EMERGENCIAS 24hrs</p>
                        </li>
                        <li>
                            <p class="mb-0 font-weight-bold">Lince</p>
                            <p class="mb-0">Atención: Lunes a Sabado - 8 a.m. - 8 p.m.</p>
                            <p>Domingos - 9 a.m. - 6 p.m.</p>
                        </li>
                        <li>
                            <p class="mb-0 font-weight-bold">San Borja</p>
                            <p>Atención: Lunes a Domingo - 8 a.m. - 8 p.m.</p>
                        </li>
                        <li>
                            <p class="mb-0 font-weight-bold">Los Olivos</p>
                            <p class="mb-0">Atención: Lunes a Sabado - 8 a.m. - 8 p.m.</p>
                            <p>Domingos - 9 a.m. - 6 p.m.</p>
                        </li>
                        <li>
                            <p class="mb-0 font-weight-bold">San Juan de Miraflores</p>
                            <p class="mb-0">Atención: Lunes a Sabado - 8 a.m. - 8 p.m.</p>
                            <p class="mb-0">Domingos - 9 a.m. - 6 p.m.</p>
                        </li>
                    </ul>
                </div>

                <!--//////////////////-->

                <div class="col-md-3 ms-5 mt-2">
                    <img src="img/Logo_principal.png">
                </div>

            </div>

        </div>

        <footer class="bg-dark text-white p-3">
            <div class="container">
                <div class="row">
                    <ul class="nav justify-content-center">
                        <li class="nav-item -">
                            <a class="nav-link active" aria-current="page" href="#">
                                <i class="fab fa-facebook" style="box-shadow: 0px 12px 20px #245269" > </i> 
                            </a>
                        </li>
                        <li class="nav-item -">
                            <a class="nav-link" href="#">Terminos y condiciones</a>
                        </li>
                        <li class="nav-item -">
                            <a class="nav-link" href="#">Contacto</a>
                        </li>
                        <li class="nav-item -">
                            <a class="nav-link" href="#">Politicas de Privacidad</a>
                        </li>
                        <li class="nav-item -">
                            <a class="nav-link" href="#">Blog</a>
                        </li>
                        <li class="nav-item -">
                            <a class="nav-link" href="#">Marcas</a>
                        </li>
                        <li class="nav-item -">
                            <a class="nav-link" href="#">Creadores</a>
                        </li>

                    </ul>

                </div>
            </div>
            <div class="row d-flex justify-content-center align-items-center">

                <img src="img/libro-de-reclamaciones.png" style="width: 90px; padding-bottom: 10px ;"  alt="">
                <a class="text-center text-capitalize">libro de reclamaciones</a>
            </div>
        </nav> 
        <!---->


    </footer>
    <!<!-- END FOOTER -->


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>

</html>
