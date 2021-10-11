<%-- 
    Document   : Nosotros
    Created on : 18/09/2021, 09:48:12 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="Css/Contact.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <title>JSP Page</title>
    </head>

    <body>
        
        <nav class=" navbar navbar-expand-xl navbar-light border-5  border-bottom border-dark bg-success sticky-top">
            <div class="container-fluid">
                <a class="" href="Index.jsp">
                    <img class="logo-empresa" src="img/Logo_principal.png" alt="">
                </a>
                <button class="navbar-toggler bg-success rounded-3" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon "></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text-white">
                         <li class="nav-item ">
                            <a class="nav-link" href="#contenedor-formulario"style="font-family: 'Roboto', sans-serif;">Contacto</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active text-white"style="font-family: 'Roboto', sans-serif;" aria-current="page" href="Index.jsp">Home</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link " href="Servicios.jsp"style="font-family: 'Roboto', sans-serif;">Servicios</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="PetShop.jsp"style="font-family: 'Roboto', sans-serif;">Pet Shop</a>
                        </li>

                       
                    </ul>
                </div>
            </div>
        </nav>
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


        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner ">
                <div class="carousel-item active" data-bs-interval="10000">
                    <img src="img/huellitas7.jpeg" class="d-block w-100 img-fluid" alt="..." >
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="img/huellitas7.jpeg" class="d-block w-100 img-fluid" alt="..." />
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
        <div class="container-fluid bg-success p-3">
            <h1 class="text-capitalize text-center text-white h2">NUESTRO EQUIPO</h1>
        </div>

        <div class="container">
            <div class="row row-cols-1 row-cols-md-2 g-4 mt-3">

                <div class="col">
                    <div class="">
                        <img src="img/doctora2.jpg" class="ms-5 m-auto" alt="..." height="450px">
                        <div class="card-body">

                        </div>
                    </div>
                </div>
                <div class="col ">
                    <div class="">

                        <div class="card-body ">
                            <h5 class="card-title text-center h2 bg-warning  "><b>DRA. MILY TICCLLA ESPINOZA</b></h5>
                            <h2 class="text-center h4">CMVP 4990</h2>
                            <p class="">  Médico Veterinario egresado de la Universidad Nacional Mayor de San Marcos,
                                br*2 líder de opinión en temas de Neurología, traumatología y Ortopedia Veterinaria, Diplomado de
                                Traumatología y Ortopedia en CEAMVET-México y realizó una pasantía en la Clínica San Juan de
                                Dios, 2007. Expositor de innumerables Congresos de Medicina Veterinaria y como Infuencer en
                                temas relacionados a los animales y el medio ambiente. Condecorado en el 2011 por la UNMSM, por
                                su contribución en el desarrollo de la Medicina Veterinaria en el Perú y Medalla Cívica de la
                                orden Santiago de Apóstol en “Reconocimiento al desarrollo de técnicas y procedimientos
                                innovadores en el ejercicio de la Medicina Veterinaria” por la Municipalidad de Santiago de
                                Surco 2005

                            </p>
                            <a href="#" class="   ms-2" style="font-family: 'Roboto', sans-serif;color:darkblue;text-decoration: none">milyticclla@huellitas.com.pe</a>

                            <div class="mt-2">
                                <button class="btn text-white " style="background: #000;width: 150px;border-radius: 20px">
                                    Leer Mas

                                </button>
                            </div>






                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="">

                        <div class="card-body mt-5">
                            <h5 class="card-title mt-5 text-center h2 bg-warning"><b>DRA. FIORELLA COCHELLA</b></h5>
                            <p class="card-text">
                                Médico Veterinario y Socia Co-Fundadora,
                                egresada de la Universidad Nacional Mayor de San Marcos 
                                y Master en Administración de Negocios (MBA). Se desempeñó
                                como Gerente de Línea en reconocidas empresas del medio veterinario
                                por 12 años, adquiriendo amplia experiencia en el sector de animales de compañía y avicultura. </p>
                            <a href="#" class="   ms-2" style="font-family: 'Roboto', sans-serif;color:darkblue;text-decoration: none">Fcochella@huellitas.com.pe</a>
                            <div class="mt-2">
                                <button class="btn text-white " style="background: #000;width: 150px;border-radius: 20px">
                                    Leer Mas

                                </button>
                            </div>


                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="">
                        <img src="img/huellitas9.jpg" class="" alt="..." height="450px" width="auto" style="border-radius: 10px">
                        <div class="card-body">

                        </div>
                    </div>
                </div>


                <div class="col img-diseño">
                    <div class=" ">
                        <img src="img/doctor.jpg" class="ms-5" alt="..." height="450px">

                    </div>
                </div>
                <div class="col ">
                    <div class="">

                        <div class="card-body ">
                            <h5 class="card-title text-center h2 bg-warning mt-3"><b>Dr. Juan Chang</b></h5>
                            <p class="">Médico Veterinario egresado de la Universidad Nacional Mayor de San Marcos,
                                líder de opinión en temas de Neurología, traumatología y Ortopedia Veterinaria, Diplomado de
                                Traumatología y Ortopedia en CEAMVET-México y realizó una pasantía en la Clínica San Juan de
                                Dios, 2007. Expositor de innumerables Congresos de Medicina Veterinaria y como Infuencer en
                                temas relacionados a los animales y el medio ambiente. Condecorado en el 2011 por la UNMSM, por
                                su contribución en el desarrollo de la Medicina Veterinaria en el Perú y Medalla Cívica de la
                                orden Santiago de Apóstol en “Reconocimiento al desarrollo de técnicas y procedimientos
                                innovadores en el ejercicio de la Medicina Veterinaria” por la Municipalidad de Santiago de
                                Surco 2005

                            </p>
                            <a href="#" class="   ms-2" style="font-family: 'Roboto', sans-serif;color:darkblue;text-decoration: none">Jchang@huellitas.com.pe</a>
                            <div class="mt-2">
                                <button class="btn text-white " style="background: #000;width: 150px;border-radius: 20px">
                                    Leer Mas

                                </button>
                            </div>




                        </div>
                    </div>
                </div>


            </div>

        </div>



        <div class="container-fluid mt-5">
            <div class="row">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3902.035201441111!2d-77.03131028509002!3d-12.041097591471013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c9e6cd89b9fd%3A0xf6db9d86fe699ef3!2sVeterinaria%20Huellitas%20del%20Rimac!5e0!3m2!1ses!2spe!4v1629847344520!5m2!1ses!2spe"
                    width="500" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
        <br><br><br><br><br>
        <section id="seccion-contacto" class="border-bottom border-secondary border-2 mt-5" >
            <div id="bg-contactos" >
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320" >
                <path fill="#1b2a4e" fill-opacity="1"
                      d="M0,32L120,42.7C240,53,480,75,720,74.7C960,75,1200,53,1320,42.7L1440,32L1440,320L1320,320C1200,320,960,320,720,320C480,320,240,320,120,320L0,320Z">
                </path>
                </svg>
            </div>
        </div>


        <div class="container border-top border-primary mt-5" style="max-width: 500px;" id="contenedor-formulario">
            <div id="tituloformulario" class="text-center mb-4">
                <div> <img src="img/support.png" class="img-fluid ps-5" alt=""></div>
                <h2>Contactos</h2>
                <p class="fs-5"> Estamos Aqui para Ayudarte</p>
            </div>

            <form  method="post" action="jsp_mail.jsp" class="">
                <div class="mb-3">

                    <input type="text" class="form-control" id="names" placeholder="Nombre"
                           name="txtnombre" required>
                </div>
                <div class="mb-3">

                    <input type="text" class="form-control" id="phone" placeholder="Telefono"
                           name="txttelefono" required>
                </div>
                <div class="mb-3">

                    <input type="email" class="form-control" id="email" placeholder="Email"
                           name="txtemail" required>
                </div>
                <div class="mb-3">

                    <textarea class="form-control" id="mensaje" rows="3" placeholder="Mensaje"
                              name="txtmensaje" required></textarea>
                </div>
                <div class="mb-3 ">
                    <button type="submit" class="btn btn-success w-100 fs-5" name="btn_enviar" id="btnSend">Enviar </button>
                </div>
            </form>
        </div>
    </section>

    <!--End Color and getwaver-->

    <!-- End Formulario-->
    <footer class="bg-dark text-white p-3">
        <div class="container">
            <div class="row">
                <ul class="nav justify-content-center">
                    <li class="nav-item -">
                        <a class="nav-link active" aria-current="page" href="#">
                            <i class="fab fa-facebook"> </i>
                        </a>
                    </li>
                  <li class="nav-item -">
                        <a class="nav-link " style="font-family: 'Roboto', sans-serif;" href="#">Terminos y condiciones</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link " style="font-family: 'Roboto', sans-serif;" href="#">Contacto</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link " style="font-family: 'Roboto', sans-serif;" href="#">Politicas de Privacidad</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link  "style="font-family: 'Roboto', sans-serif;" href="#">Blog</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link "style="font-family: 'Roboto', sans-serif;" href="#">Marcas</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link "style="font-family: 'Roboto', sans-serif;" href="#">Creadores</a>
                    </li>

                </ul>

            </div>
        </div>
        <div class="row d-flex justify-content-center align-items-center mt-2">

            <img src="img/libro-de-reclamaciones.png" style="width: 90px; padding-bottom: 10px ;" alt="">
            <a class="text-center text-capitalize" style="font-family: 'Roboto', sans-serif;">libro de reclamaciones</a>
        </div>
    </nav>
    <!---->


</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
</script>





</body>
</html>
