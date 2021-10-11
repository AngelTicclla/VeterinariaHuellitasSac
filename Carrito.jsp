<%-- 
    Document   : Carrito
    Created on : 19/09/2021, 02:30:12 AM
    Author     : Usuario
--%>
<%@page import="Capa_DAO.ProductoDAO"%>
<%@page import="Capa_MODELO.Model_PRODUCTOS"%>
<%@page import="java.sql.*"%>
<%@page import="Capa_DATOS.BD_Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/d729fc7782.js" crossorigin="anonymous"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous" />

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300&display=swap" rel="stylesheet">
        <link href="Css/CarritoCSS.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap" rel="stylesheet">

        <title>JSP Page</title>
    </head>
    <style>
        .vertical-alignment-helper {
            display: table;
            height: 100%;
            width: 100%;
            pointer-events: none;
        }

        .vertical-align-center {
            /* To center vertically */
            display: table-cell;
            vertical-align: middle;
            pointer-events: none;
        }

        .modal-content {
            /* Bootstrap sets the size of the modal in the modal-dialog class, we need to inherit it */
            width: 1000px;
            /* For Bootstrap 4 - to avoid the modal window stretching full width */
            height: inherit;
            /* To center horizontally */
            margin: 0 auto;
            pointer-events: all;
        }

        .tableid{
            width: 30px;
        }

        .tablecant{
            width: 150px;
        }

        .tableprec{
            width: 80px;
        }

        .tabledes{
            width: 450px;
        }

        /* EOS */
    </style>
    <body>
        <header class="header">
            <nav class="navbar navbar-expand-lg navbar-light navbar_color">
                <div class="container-fluid">
                    <a class="navbar-brand" href="PetShop.jsp">
                        <img class="logo-empresa" src="img/Logo_principal.png" alt="" />
                    </a>
                    <button class="navbar-toggler bg-info rounded-3" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item me-2">
                                <a class="btn text-white" href="Index.jsp" tabindex="-1" aria-disabled="true">
                                    <i class="fas fa-home"> Home</i>
                                </a>
                            </li>
                            <li class="nav-item me-2">
                                <a class="btn text-white" href="Servicios.jsp" tabindex="-1" aria-disabled="true" 
                                   >
                                    <i class="fas fa-map"> Servicios</i>



                                </a>
                            </li>
                            <li class="nav-item nav_delivey me-2">
                                <a type="" class=" btn text-white" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                    <i class="fas fa-phone-alt"> Delivery</i>

                                </a>
                            </li>
                            <li class="nav-item me-2">
                                <a class="btn text-white" href="PetShop.jsp" tabindex="-1" aria-disabled="true">
                                    <i class="fas fa-shopping-bag"> Pet Shop</i>
                                </a>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link active btn btn-outline-danger " aria-current="page" href="#">
                                    <i class="fas fa-user  "></i>

                                </a>
                            </li>
                            <div class=" dropdown">
                                <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" >
                                    ${nombre} ${apellido}
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1" style="box-shadow: 0px 10px 5px #777">
                                    <img src="img/user64.png" width="80px"height="80px"style="margin-left: 80px">

                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#"> <b>${email}</b></a></li>
                                    <li><a class="dropdown-item" href="Cliente.jsp"> <b>Configuración</b></a></li>
                                    <li><a class="dropdown-item" href="Index.jsp"> <b>Salir</b></a></li>

                                </ul>
                            </div>








                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2 px-5" type="search" placeholder="Busca Tu Producto" aria-label="Search" />
                            <button class="btn  btn-danger" type="submit">Buscar</button>
                        </form>
                    </div>
                </div>

            </nav>
        </header>
        <div class="container-fluid">
            <img src="img/venta.png" alt="" width="100%">
        </div>


        <div class="container">
            <%
                BD_Conexion cConeccion = new BD_Conexion();
                Connection oCN = null;
                oCN = cConeccion.abrirConexion();
                PreparedStatement ps = null;
                ResultSet rs = null;
                HttpSession ses = request.getSession();
                int codigo = 0;
                codigo = Integer.parseInt(ses.getAttribute("id").toString());
                ps = oCN.prepareStatement("SELECT * FROM tb_PRODUCTO WHERE idCliente = '" + codigo + "'");
                rs = ps.executeQuery();
            %>
            <div>
                <table class="table table-bordered mt-3">
                    <tr>
                        <th class="text-center">Codigo</th>
                        <th class="text-center">Descripcion</th>
                        <th class="text-center">Precio </th>
                        <th class="text-center">Cantidad</th>
                        <th class="text-center">Total</th>
                        <th></th>
                    </tr>
                    <%   while (rs.next()) {
                    %>
                    <tr>
                        <th class="text-center"><%= rs.getInt("idProducto")%></th>
                        <th class="text-center"><%= rs.getString("descripcion_producto")%></th>
                        <th class="text-center"><%= rs.getString("precio_producto")%></th>
                        <th class="text-center"><%= rs.getString("cantidad_producto")%></th>
                        <th class="text-center"><%= rs.getString("precio_total")%></th>
                        <th>
                            <button id="btnmodal" class="btn btn-warning edit" data-toggle="modal" data-target="#myModal" data-cod="<%= rs.getInt("idProducto")%>" data-des="<%= rs.getString("descripcion_producto")%>" data-pre="<%= rs.getString("precio_producto")%>" data-cant="<%= rs.getString("cantidad_producto")%>" data-tot="<%= rs.getString("precio_total")%>">Editar</button>
                            <a href="ProductoController?action=delete&idProducto=<%= rs.getInt("idProducto")%>" class="btn btn-danger">Eliminar</a>
                        </th>
                    </tr>
                    <%}%>
                    <script src="JS/Function.js"></script>
                </table>
            </div>
            <!--<!-- RESUMEN DE COMPRA -->
            <div class="card text-center">
                <div class="card-header fs-5 text-white" style="background-color: #4cae4c;">
                    RESUMEN DE COMPRA
                </div>
                <div class="card-body d-inline-flex">
                    <table class="table table-bordered">

                        <thead>
                            <tr>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <%
                                    ResultSet rss = null;
                                    int cod = 0;
                                    cod = Integer.parseInt(ses.getAttribute("id").toString());
                                    ps = oCN.prepareStatement("SELECT Sum(precio_total) AS TOTAL FROM tb_PRODUCTO WHERE idCliente = '" + cod + "'");
                                    rss = ps.executeQuery();
                                %>
                                <th scope="row">SUB TOTAL:</th>                                
                                    <%   while (rss.next()) {
                                    %>
                                <td><input class="text-center border-0" value="<%= rss.getString("TOTAL")%>" readonly=""></td>

                            </tr>
                            <tr>
                                <th scope="row">TOTAL</th>

                                <td><input class="text-center border-0" value="<%= rss.getString("TOTAL")%>" readonly=""></td>

                            </tr>
                            <%}%>
                        </tbody>

                    </table>

                </div>

                <div class="card-footer  text-white" style="background-color: white;">
                    <img src="img/proteger.png">
                    <img src="img/tarjeta-de-credito (1).png">
                    <img src="img/candado.png">
                    <a data-bs-toggle="modal"
                       data-bs-target="#exampleModal"> 
                        <button class=" btn btn-primary ms-5" style="border-radius: 10px;height: 50px;">FINALIZAR COMPRA</button> </a>
                    
                </div>
            </div>
            <!<!-- RESUMEN DE COMPRA FINAL -->
            <!<!-- CARD ADICIONAL PRODUCTOS -->
            <p class="text-center h4 fs-1 mt-5" style="font-family: 'Lobster', cursive;">Completa tu Compra</p>
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner mt-1 ">
                    <div class="carousel-item active" data-bs-interval="10000">
                        <div class="bodycard">
                            <div class="containerd">
                                <div class="card2">
                                    <img src="img/ricocan8.jpg" alt="" />
                                    <div class="card-body">
                                        <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Razas Pequeñas X 08 Kg" type="hidden">Ricocan Cordero Adultos Razas Pequeñas X 08 Kg</p>
                                        <p class="text-center"></p><label>S/150.52</label><input name="txt_precio" value="150.52" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/160.00</span>
                                        <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                                        <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                                        <button class="btn btn-danger btn-lg text-center mt-3" style="margin: 10px;padding: 10px;" name="btn_comprar"> Comprar</button>
                                    </div>
                                </div>

                                <div class="card2">
                                    <img src="img/ricocan7.jpg" alt="" />
                                    <div class="card-body">
                                        <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Razas Pequeñas X 08 Kg" type="hidden">Ricocan Cordero Adultos Razas Pequeñas X 08 Kg</p>
                                        <p class="text-center"></p><label>S/150.52</label><input name="txt_precio" value="150.52" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/160.00</span>
                                        <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                                        <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                                        <button class="btn btn-danger btn-lg text-center mt-3" style="margin: 10px;padding: 10px;" name="btn_comprar"> Comprar</button>
                                    </div>
                                </div>

                                <div class="card2">
                                    <img src="img/ricocan6.jpg" alt="" />

                                    <div class="card-body">
                                        <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Razas Pequeñas X 08 Kg" type="hidden">Ricocan Cordero Adultos Razas Pequeñas X 08 Kg</p>
                                        <p class="text-center"></p><label>S/150.52</label><input name="txt_precio" value="150.52" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/160.00</span>
                                        <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                                        <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                                        <button class="btn btn-danger btn-lg text-center mt-3" style="margin: 10px;padding: 10px;" name="btn_comprar"> Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <div class="bodycard">
                            <div class="containerd">
                                <div class="card2">
                                    <img src="img/ricocan4.jpg" alt="" />
                                    <div class="card-body">
                                        <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Razas Pequeñas X 08 Kg" type="hidden">Ricocan Cordero Adultos Razas Pequeñas X 08 Kg</p>
                                        <p class="text-center"></p><label>S/150.52</label><input name="txt_precio" value="150.52" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/160.00</span>
                                        <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                                        <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                                        <button class="btn btn-danger btn-lg text-center mt-3" style="margin: 10px;padding: 10px;" name="btn_comprar"> Comprar</button>
                                    </div>
                                </div>

                                <div class="card2">
                                    <img src="img/ricocan3.jpg" alt="" />

                                    <div class="card-body">
                                        <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Razas Pequeñas X 08 Kg" type="hidden">Ricocan Cordero Adultos Razas Pequeñas X 08 Kg</p>
                                        <p class="text-center"></p><label>S/150.52</label><input name="txt_precio" value="150.52" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/160.00</span>
                                        <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                                        <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                                        <button class="btn btn-danger btn-lg text-center mt-3" style="margin: 10px;padding: 10px;" name="btn_comprar"> Comprar</button>
                                    </div>
                                </div>

                                <div class="card2">
                                    <img src="img/medicado1.jpg" alt="" />
                                    <div class="card-body">
                                        <p class="card-text"><input name="txt_info" value="Ricocan Cordero Adultos Razas Pequeñas X 08 Kg" type="hidden">Ricocan Cordero Adultos Razas Pequeñas X 08 Kg</p>
                                        <p class="text-center"></p><label>S/150.52</label><input name="txt_precio" value="150.52" type="hidden">           <span class="ms-4" style="text-decoration: line-through;">S/160.00</span>
                                        <p><input name="txt_idcliente" value="${id}" type="hidden"></p>
                                        <a href="#" class="fs-6 link-primary"><span class="text-capitalize">Ver Disponibilidad en Tiendas</span> </a>
                                        <button class="btn btn-danger btn-lg text-center mt-3" style="margin: 10px;padding: 10px;" name="btn_comprar"> Comprar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
                        data-bs-slide="prev">
                    <span class="" aria-hidden="true">
                        <img src="img/flechaizquierda.png" class="img-flechas" alt="" style="border-radius: 4px;box-shadow: 0 5px 10px;">
                    </span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
                        data-bs-slide="next">
                    <span class="" aria-hidden="">
                        <img src="img/flechaderecha.png" class="img-flechas" alt="" >
                    </span>
                    <span class="visually-hidden">Next</span>
                </button>

            </div>
            <!<!-- REDES -->
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

            <!<!-- END ADICIONAL PRODUCTOS -->
            <!<!-- METODO DE PAGO -->

            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true"
                 >
                <div class="modal-dialog ">
                    <!<!-- 100*448 -->
                    <div class="modal-content" style="width: 500px !important;height: 640px">
                        <div class="modal-header ">
                            <h5 class="modal-title h5"style="margin-left: 30%;font-family: sans-serif" id="exampleModalLabel"><b>METODOS DE PAGOS </b> </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body ">
                            <div class="container border-2  p-4 me-5 d-inline-flex" >

                                <button class="btn btn-lg btn-outline-warning border-warning border-bottom"style="box-shadow: 0 12px 10px">
                                    <a> PAGO EFECTIVO 
                                        <img src="img/logo-pago-efectivo.png" class="img-fluid ms-5" alt="alt" width="30px" height="30px"/>

                                    </a>
                                </button>

                                <div class="ms-2 mt-2"> 
                                    <img src="img/logo-pago-efectivo.png" class="img-fluid ms-2" alt="alt" width="40px" height="40px"/>

                                    <img src="img/yape.png" class="img-fluid" alt="alt" width="40px"height="40px"/>
                                    <img src="img/westerunicion.png" class="img-fluid" alt="alt" width="40px"height="40px"/>

                                </div>

                            </div>
                            <div class="container  border-2   mt-3 p-4 me-5 d-inline-flex">

                                <button class="btn btn-lg btn-outline-danger border-warning border-bottom" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="box-shadow: 0 20px 10px">
                                    <a> TARJETA DE DEBITO 
                                        <img src="img/debito.jpg" class="img-fluid ms-1" alt="alt" width="40px" height="40px"/>
                                    </a>

                                </button>
                                <div class="ms-2 mt-2"> 
                                    <img src="img/visaminitarjetas.png" class=" ms-2" alt="alt" width="40px" height="40px"/>
                                    <img src="img/mastercard2.png" class="" alt="alt" width="40px"height="40px"/>


                                </div>

                            </div>
                            <div class="container border-2  mt-3 p-4 me-5 d-inline-flex">

                                <button class="btn btn-lg btn-outline-primary d-inline-flex"data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="box-shadow: 0 12px 10px">
                                    <a> TARJETA DE CREDITO 
                                        <img src="img/creditomastercard.png" class="img-fluid" alt="alt" width="40px" height="40px"/>
                                    </a>

                                </button>
                                <div class="ms-2 mt-2"> 
                                    <img src="img/visaminitarjetas.png" class="ms-1" alt="alt" width="40px" height="40px"/>
                                    <img src="img/mastercard2.png" class="" alt="alt" width="40px"height="40px"/>



                                </div>

                            </div>
                        </div>
                        <div class="">
                            <div class="text-center text-modal h5 border-1  border-top" style="font-family: 'Roboto', sans-serif;">
                                <b>PAGO SEGURO </b>
                            </div>
                            <div class="container">
                                <p class="text-center" style="font-family: 'Lora', serif;"> Cuando envies tu información de pago , los datos estan protegidos
                                    por la tecnologia<b> SECURE SOCKET LAYER (SSL)</b> ,dotada de un certificado internacional.</p>

                            </div>

                        </div>

                        <div class="modal-footer ">
                            <div class="container  d-flex"> 
                                <div class="spinner-grow text-primary" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>

                                <div class="spinner-grow text-success" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>
                                <div class="spinner-grow text-danger" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>
                                <div class="spinner-grow text-warning" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>
                                <div class="spinner-grow text-dark" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>

                                <button type="button" class="btn btn-danger  ms-5 text-center"style="width: 200px" data-bs-dismiss="modal">Cancelar</button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!<!-- MODAL TARJETAS DE CREDITO Y DEBITO -->
            <div class="modal fade " id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content" style="width: auto;width: auto;">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">
                                <img src="img/candado.png" alt="">
                                <span class="">Operacion 100% Segura </span></h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form> 
                                <div class=" p-2" id="containercolor"> 
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label for="inputEmail4" class="form-label">Numero de tarjeta</label>
                                            <input type="email" class="form-control" placeholder="123412341234" id="inputEmail4">
                                        </div>
                                        <div class="col-md-3">
                                            <label for="inputPassword4" class="form-label ms-4">Fecha de</label>
                                            <select id="inputState" class="form-select">
                                                <option selected>Mes</option>
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3">
                                            <label for="inputPassword4" class="form-label">Expiracion</label>
                                            <select id="inputState" class="form-select">
                                                <option selected>Año</option>
                                                <option>01</option>
                                                <option>21</option>
                                                <option>22</option>
                                                <option>23</option>
                                                <option>24</option>
                                                <option>25</option>
                                                <option>26</option>
                                                <option>27</option>
                                                <option>28</option>
                                                <option>29</option>
                                                <option>30</option>
                                                <option>31</option>
                                            </select>
                                        </div>
                                        <div class="col-md-8">
                                            <label for="inputAddress" class="form-label">Titular de la Tarjeta</label>
                                            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                                        </div>
                                        <div class="col-md-4">
                                            <label for="inputEmail4" class="form-label">Codigo Seguridad</label>
                                            <input type="email" class="form-control" id="inputEmail4" placeholder="000">
                                        </div>
                                    </div>
                                </div>
                                <!---------------------------------------------->
                                <div class="  p-1 mt-2"> 
                                    <div class="row g-3">

                                        <div class="col-6">
                                            <label for="inputAddress" class="form-label">DNI</label>
                                            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="inputEmail4" class="form-label">Telefono</label>
                                            <input type="email" class="form-control" id="inputEmail4" placeholder="000">
                                        </div>
                                        <div class="col-12">
                                            <label for="inputAddress" class="form-label">Email</label>
                                            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 mt-3 d-flex">
                                    
                                    <a href="reporteclientes.jsp" type="submit" class="btn btn-danger m-auto ms-" style="margin-left: 100px;width: 250px" >
                                          
                                       
                                        Pagar</a>
                                    <button type="submit" class="btn btn-warning m-auto ms-2" style="width: 250px" >Cancelar</button>

                                </div>
                                <!--------------------------------->
                            </form>
                        </div>







                        <div class="modal-footer">

                            <p> <img src="img/advertencia.png" class="" alt="">
                                Algunas tarjetas de débito con código CVV podrían ser rechazadas por la plataforma de pago que utilizamos debido a políticas de seguridad del banco.

                                El cobro de la transacción se realizara en Soles. Si la cuenta asociada a tu tarjeta es en Dólares, el tipo de cambio utilizado será el de tu banco.</p>
                        </div>
                    </div>
                </div>
            </div>




















            <!<!-- FINAL MODAL TARJETAS DE CREDITO Y DEBITO -->

            <div class="row row-cols-1 row-cols-md-2 g-4 mt-3">

                <div class="col ">
                    <div class="">

                        <div class="card-body ">                            
                            <div class="container text-center fs-4 ">
                                Metodos de Entrega
                            </div>
                        </div>
                        <!--PAGO-->
                        <!-- Button trigger modal -->


                        <!-- Modal -->
                        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                             aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="mb-3">
                                                <label for="exampleInputEmail1" class="form-label">Email address</label>
                                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                            </div>
                                            <div class="mb-3">
                                                <label for="exampleInputPassword1" class="form-label">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1">
                                            </div>
                                            <div class="mb-3 form-check">
                                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Understood</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <div class="col">
                                <div class="card h-100  bg-secondary">
                                    <img src="img/reloj32.png" class=" img-fluid" alt="..." width="50px" height="50px">
                                    <div class="card-body">
                                        <h5 class="card-title">Despacho Express</h5>
                                        <p class="card-text text-decoration-line-through text-center">No disponible</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card h-100 btn btn-outline-info text-reset">
                                    <img src="img/entrega.png" class=" img-fluid" alt="..." width="50px" height="50px">
                                    <div class="card-body">
                                        <h5 class="card-title d-inline-flex text-center">Despacho Programado</h5>
                                        <p class="card-text text-capitalize">Desde el 11 de Octubre a partir de S/95.00</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card h-100 btn btn-outline-info text-reset">
                                    <img src="img/supermercado.png" class=" img-fluid" alt="..." width="50px" height="50px">
                                    <div class="card-body">
                                        <h5 class="card-title">Retiro en Tienda</h5>
                                        <p class="card-text">Despues de 1 dia en efectuar la compra</p>
                                        <a href="" class="ms-3">Ver Tiendas</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <img src="img/metodos de pago.png" class="img-fluid mt-5  m-auto" alt="" width="400px">
                        <!--METODOS DE PAGO-->


                    </div>
                </div>

            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
             style="display: none;">
            <div class="vertical-alignment-helper">
                <div class="modal-dialog vertical-align-center">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal"><span aria-hidden="true">×</span><span
                                    class="sr-only">Close</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel">Mantenimiento</h4>
                        </div>
                        <form method="post" action="/Veterinaria_Huellitas/ProductoController">
                            <div class="modal-body">

                                <table class="table table-bordered border-Default">
                                    <tr>
                                        <th class="text-center"><input class="text-center tableid border-0" type="text" id="cod" name="txt_cod" readonly=""></th>
                                        <th class="text-center"><input class="text-center tabledes border-0" type="text" id="des" readonly=""></th>
                                        <th class="text-center"><input class="text-center tableprec border-0" type="text" id="pre" readonly=""><br></th>
                                        <th class="text-center"><input class="text-center tablecant" type="number" id="cant" name="txt_cant" oninput="calcular()"><br></th>
                                        <th class="text-center"><input class="text-center tableprec border-0" type="text" id="tot" name="txt_tot" readonly=""></th>
                                    </tr>
                                </table>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                <button name="btn_actualizar" type="submit" class="btn btn-primary">GUARDAR CAMBIOS</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!--METODO DE PAGO-->
        <div class="container-fluid  py-5 bg-dark border border-1 border-white horarios_p"style="background-color: #8E44AD">
            <div class="row">
                <div class="col-md-4 ">
                    <h4 class="fs-2 text-capitalize text-white ms-5">LOCALES Y CONTACTO</h4>

                    <ul class="list-unstyled mb-0 ms-5">
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
                        <li>
                            <p class="mb-0">Av. República de Panamá 6584, Barranco</p>
                            <p class="mb-0">998 195 193</p>
                            <p>01 446 6179 | 01 637 5132</p>
                        </li>

                    </ul>

                </div>



                <div class="col-md-4">
                    <h4 class="text-uppercase oswald fs-2 text-capitalize text-white">HORARIOS</h4>
                    <ul class="list-unstyled mb-0">
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

                <div class="col-md-2">
                    <img src="img/Logo_principal.png">
                </div>

            </div>

        </div>

        <footer class="bg-dark text-white p-3 ">
            <div class="container">
                <div class="row">
                    <ul class="nav justify-content-center">
                        <li class="nav-item -">
                            <a class="nav-link active" aria-current="page" href="#">
                                <i class="fab fa-facebook"> </i>
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

                <img src="../Img/libro-de-reclamaciones.png" style="width: 90px; padding-bottom: 10px ;" alt="">
                <p class="text-center text-capitalize">libro de reclamaciones</p>
            </div>
        </nav>
        <!---->


    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
    </script>

</body>
</html>
