<%-- 
    Document   : newjsp
    Created on : 26/08/2021, 01:20:39 PM
    Author     : Usuario
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Capa_MODELO.Model_CLIENTES" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>    
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="Css/StyleIndex.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,500;1,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">

    </head>
    <script language="JavaScript">
        function mensaje() {
            if (confirm('¿Estas seguro de enviar este formulario?')) {
                document.formulario_registro.submit()
            }
        }
        ;



    </script>
    <%  String rspta = "";
        if (request.getParameter("rspta") != null) {
            int r = Integer.parseInt(request.getParameter("rspta"));
            if (r == 0) {
                rspta = "Error: datos incorrectos";
            }
        }
    %>
    <%
        Model_CLIENTES oEmpleado = (Model_CLIENTES) request.getAttribute("vsEmpleado");


    %>

    <!DOCTYPE html>
    <!--HEADER HUELLITAS-->
    <!--START NAV-->
    <style>
        .top-nav-collapse{
            background-color: #00ff00;
        }
    </style>
    <header class="header">
        <nav class="navbar navbar-expand-xl navbar-light border-5  border-bottom border-dark" id="navscroll">
            <div class="container-fluid">
                <a class="navbar-brand" href="Index.jsp">
                    <img class="logo-empresa" src="img/Logo_principal.png" alt="">
                </a>
                <button class="navbar-toggler bg-success rounded-3" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon "></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text-white">
                        <li class="nav-item">
                            <a class="nav-link active  text-white" aria-current="page" style="font-family: 'Roboto', sans-serif;" href="Nosotros.jsp">NOSOTROS</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link " href="Servicios.jsp"style="font-family: 'Roboto', sans-serif;">SERVICIOS</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link " href="PetShop.jsp"style="font-family: 'Roboto', sans-serif;">PET SHOP</a>
                        </li>

                        <li class="nav-item">
                            <a class="text-reset  align-items-center nav-link " data-bs-toggle="offcanvas"
                               href="#offcanvasBottom" role="button" aria-controls="offcanvasBottom">
                                <span class="text-white"style="font-family: 'Roboto', sans-serif;">LOGIN </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--END NAV-->
        <br>
        <!--START EMERGENCIA-->
        <div class="container-flud   ms-sm-5 m-md-5 ">

            <div class="col-12 col-sm-4 text-white border-secondary ms-2  ">
                <h1 class="text-warning emergencia_h1 animate__animated animate__slideInLeft" >"EMERGENCIA" <br> "LAS 24 HORAS"</h1>
                <a class="text-reset btn btn-danger btn-lg align-items-center mt-3 ms-3 animate__animated animate__slideInLeft" data-bs-toggle="modal" data-bs-target="#exampleModal"
                   >
                    <img class="" src="img/emergencia.png" alt="">

                    LLAMANOS!!!
                </a>
            </div>
        </div>
        <!--NUMEROS DE EMERGENCIA MODAL-->
        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header bg-info ">
                        <h5 class="fs-3 text-capitalize" id="exampleModalLabel" style="margin-left: 40px;font-family: 'Lato', sans-serif;"><b> HUELLITAS EMERGENCIA</b></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body d-block">
                        <img class="" src="img/phone.png" alt=""><span class="h5" style="margin-left: 10px">935 982 848 </span><br> <br>
                        <img class="" src="img/phone.png" alt=""> <span class="h5" style="margin-left: 10px">975 223 848 </span> <br> <br>
                        <img class="" src="img/fijocell.png" alt=""> <span class="h5" style="margin-left: 10px"> 657 86 09 </span>

                    </div>

                    <div class="modal-footer text-center ">


                        <button type="button" class="btn-lg btn-danger" style="margin-right: 35%;width: 150px" data-bs-dismiss="modal">Salir</button>
                    </div>
                </div>
            </div>
        </div>
        <!--END NUMEROS DE EMERGENCIA-->
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <!--END EMERGENCIA-->
        <!--START CANVAS LOGIN-->
        <form method="post" name="formulario_registro" action="/Veterinaria_Huellitas/LoginController" class="">
            <div class="offcanvas offcanvas-bottom  canvas_tamaño " tabindex="-1" id="offcanvasBottom"
                 aria-labelledby="offcanvasBottomLabel">
                <div class="offcanvas-header "style="height:50px!important;width: 50px!important">

                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <div class="container align-content-lg-center ">
                        <div class="col-12 bg-white p-5 rounded-end">
                            <div class="text-center">
                                <img class="img-fluid" src="img/logo_formularios.png" alt="" height="30px" width="200px">
                            </div>
                            <br>

                            <div class="mb-4">
                                <label for="email" class="form-label"><b>Correo</b></label>
                                <input type="email" class="form-control" name="txt_Email" required="" placeholder="Huellitas@gmail.com">
                            </div>
                            <div class="mb-4">
                                <label for="Password" class="form-label"><b>Password</b></label>
                                <input type="password" class="form-control" name="txt_password" required=""placeholder="************"/>
                            </div>
                            <div class="mb-4 form-check">
                                <input type="checkbox" class="form-check-input" name="Connected" id="">
                                <label for="Connected" class="form-check-label">Mantenerme Conectado</label>
                            </div>
                            <div class="d-grid">
                                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                    INICIAR SESION
                                </button>


                            </div>



                            <div class="mt-4 text-center"> 
                                <div class=" text-center h5"style="font-family: 'Roboto', sans-serif;"><b>¿No Tienes una Cuenta? </b>
                                </div>
                            </div>
                            <div class="container d-inline-flex mt-3" style="justify-content: space-around;">  
                                <div class="btn  ms-2">
                                    <a style="text-decoration: none;color:darkblue" href="#"data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop"><b> REGISTRATE</b> </a>

                                </div>



                                <div  class="btn  ms-2">
                                    <a style="text-decoration: none;color: darkblue" href="#" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><b> RECUPERAR CONTRASEÑA</b> </a>

                                </div>
                            </div>

                            <p style="color: red;"><%=rspta%></p>
                            <%
                                HttpSession sesion = request.getSession();
                                List<Model_CLIENTES> datos = new ArrayList<Model_CLIENTES>();
                                if (request.getAttribute("datos") != null) {
                                    datos = (List<Model_CLIENTES>) request.getAttribute("datos");
                                    int codigo = 0;
                                    String nombre = "", apellido = "", dni = "", email = "", tele = "", contra = "";
                                    for (Model_CLIENTES m : datos) {
                                        codigo = m.getIdCliente();
                                        nombre = m.getNombres();
                                        apellido = m.getApellidos();
                                        dni = m.getDni();
                                        email = m.getEmail();
                                        tele = m.getTelefono();
                                        contra = m.getContrasena();
                                    }
                                    sesion.setAttribute("id", codigo);
                                    sesion.setAttribute("nombre", nombre);
                                    sesion.setAttribute("apellido", apellido);
                                    sesion.setAttribute("dni", dni);
                                    sesion.setAttribute("email", email);
                                    sesion.setAttribute("tele", tele);
                                    sesion.setAttribute("contra", contra);
                                    response.sendRedirect("/Veterinaria_Huellitas/PetShop.jsp");
                                }
                            %>

                        </div>
                    </div>
                </div>

                <div class="modal-footer pb-4 d-flex">

                    <div class="justify-content-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-facebook " viewBox="0 0 16 16">
                        <path
                            d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter"
                             viewBox="0 0 16 16">
                        <path
                            d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-instagram" viewBox="0 0 16 16">
                        <path
                            d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                        </svg>
                    </div>

                </div>

            </div>

            <!<!-- CONFIRMACION ACCESO LOGIN -->
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                        <div class="modal-body text-center">
                            <img src="img/check_animado.gif" class="img-fluid" alt="" width="120px">   
                            <h2 class="mt-2 fs-2"> !Bienvenido! </h2>

                        </div>
                        <div class="modal-body text-center">

                            <button style="font-family: 'Roboto', sans-serif; width: 190px!important;height: 50px!important;border-radius: 10px"  type="submit" class="btn btn-success btn_iniciar text-dark" name="btn_login" value="Enviar"><b>Aceptar</b> </button> 
                        </div>
                    </div>
                </div>
            </div>    



        </form>








        <!--START OFF CANVAR RECUPERAR CONTRASEÑA-->
        <div class=" mb-sm-5">
            <div class="offcanvas offcanvas-end rounded-3  canvas_tamaño2 " tabindex="-1" id="offcanvasRight"
                 aria-labelledby="offcanvasRightLabel">
                <div class="offcanvas-header ">

                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <div class="container align-content-lg-center ">
                        <div class=" col-12 bg-white p-5 rounded-end ">
                            <div class="m-auto" style="margin-left:40%!important;"> 
                                <img class="" src="img/llave.png" alt="" width="50px" height="50px">
                            </div>
                            <div class=" text-center">
                                <!-- comment<img class="" src="img/llave.png" alt="" width="50px" height="50px"> -->
                                <p class="h2 fs-5 "><b> CAMBIO DE CONTRASEÑA</b></p>

                            </div>
                            <span class="mt-3">Se recomienda usar una contraseña segura que no uses para ningun otro sitio </span>
                            <br>
                            <br>

                            <form method="post" action="/Veterinaria_Huellitas/LoginController" class="">
                                <div class="mb-4">
                                    <label for="password" class="form-label">Actual Contraseña</label>
                                    <input type="password" class="form-control"required="Ingrese su Actual Contraseña" name="txtpasswordactual"placeholder="*****">
                                </div>
                                <div class="mb-4">
                                    <label for="Password" class="form-label">Nueva Contraseña</label>
                                    <input type="password" class="form-control" required="Su nueva Contraseña" name="txtnuevacontraseña"placeholder="*****">
                                </div>
                                <div class="mb-4">
                                    <label for="Password" class="form-label">Vuelva a escribir la contraseña</label>
                                    <input type="password" class="form-control"required="Repita su Contraseña"name="txtcontraseña2"placeholder="******">
                                </div>

                                <div class="d-grid mt-3">
                                    <button type="submit" class="btn btn-primary  text-white" name="btn_login"><b>Guardar Cambios</b> </button>

                                    </span>
                                </div>

                                <p style="color: red;"><%=rspta%></p>
                            </form>

                        </div>
                    </div>
                </div>

                <div class="modal-footer pb-5">

                    <div class="justify-content-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-facebook " viewBox="0 0 16 16">
                        <path
                            d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter"
                             viewBox="0 0 16 16">
                        <path
                            d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-instagram" viewBox="0 0 16 16">
                        <path
                            d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                        </svg>
                    </div>

                </div>

            </div>
        </div>
        <!----END OFF CANVAS RECUPERAR CONTRASEÑA>
        <!--END LOGIN CANVAS-->




        <!--START OFF-CANVAS- REGISTRO-->

        <form method="post" action="/Veterinaria_Huellitas/ClienteController" class="was-validated">
            <div class="container-fluid pt-5 ">
                <div class="offcanvas offcanvas-top rounded-3  canvas_tamaño" tabindex="-1" id="offcanvasTop"
                     aria-labelledby="offcanvasTopLabel">
                    <div class="offcanvas-header text-center">

                        <div class="text-center "style="justify-content: center;margin-left: 30%!important">
                            <img class="img-fluid" src="img/logo_formularios.png" alt="" height="30px" width="200px">
                        </div>
                        <button type="button" class="btn-close text-reset " data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                    </div>

                    <div class="offcanvas-body">
                        <div class="mb-3 row justify-content-center">
                            <label for="validationTextarea" class=" form-label  modal_h5"><b>Nombres: </b> </label>
                            <div class="col-12 col-sm-10 w-100">
                                <input type="text" class="form-control" name="txt_nombre" id="validationTextarea"  placeholder="Nombre" required>
                                <div class="invalid-feedback">Ingrese su Nombre.</div>
                                <div class="valid-feedback"></div>
                            </div>
                        </div>
                        <div class="mb-3 row justify-content-center">
                            <label for="text" class=" form-label  modal_h5"><b>Apellidos:</b> </label>
                            <div class="col-12 col-sm-10 w-100">
                                <input type="text" class="form-control" name="txt_apellido" placeholder="Apellidos" required>
                                <div class="invalid-feedback">Ingrese su Apellido.</div>
                                <div class="valid-feedback"></div>
                            </div>
                        </div>
                        <div class="mb-3 row justify-content-center">
                            <label for="text" class=" form-label  modal_h5"><b>Celular: </b> </label>
                            <div class="col-12 col-sm-10 w-100">
                                <input type="number" class="form-control" name="txt_telefono" placeholder="Phone" required>
                                <div class="invalid-feedback">Ingrese su Celular.</div>
                                <div class="valid-feedback"></div>
                            </div>
                        </div>
                        <div class="mb-3 row justify-content-center">
                            <label for="text" class=" form-label modal_h5"><b>Documento de Identidad: </b></label>
                            <div class="col-12 col-sm-10 w-100">
                                <input type="number" class="form-control" placeholder="Ingresa tu Dni" name="txt_dni" required>
                                <div class="invalid-feedback">Ingrese su Dni.</div>
                                <div class="valid-feedback"></div>
                            </div>
                        </div>
                        <div class="mb-3 row justify-content-center">
                            <label for="email" class=" form-label  modal_h5" ><b>Email </b>:</label>
                            <div class="col-12 col-sm-10 w-100">
                                <input type="email" class="form-control" placeholder="@" name="txt_email" required>
                                <div class="invalid-feedback">Ingrese su Correo.</div>
                                <div class="valid-feedback"></div>
                            </div>
                        </div>
                        <div class="mb-3 row justify-content-center">
                            <label for="text" class=" form-label modal_h5"><b>Contraseña </b></label>
                            <div class="col-12 col-sm-10 w-100">
                                <input type="password" class="form-control" placeholder="******************" name="txt_contrasena" required>
                                <div class="invalid-feedback">Ingrese su Contraseña.</div>
                                <div class="valid-feedback"></div>
                            </div>
                        </div>
                        <div class="form-check mt-2 ms-4">
                            <input class="form-check-input " type="checkbox" value="" id="flexCheckIndeterminate" required>
                            <div class="invalid-feedback"></div>
                            <div class="valid-feedback"></div
                            <label class="form-check-label" for="flexCheckIndeterminate">
                                Acepta los <span class="check_span"> <b> Terminos y Condiciones</b></span>
                            </label>
                        </div>
                        <div class="form-check mt-2 ms-4">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate" required>
                            <div class="invalid-feedback"></div>
                            <div class="valid-feedback"></div
                            <label class="form-check-label" for="flexCheckIndeterminate">
                                Acepta la <span class="check_span"> <b>Compra Seguro</b></span> y <span class="check_span"> <b>de
                                        Seguridad</b> </span>
                            </label>
                        </div>

                    </div>
                    <!--<!--   
                    <h1> <%= oEmpleado.getA_ESTADOINSERT()%>
                        out.println(request.getAttribute("vsMensaje"));
                    </h1>-->

                    <div class="modal-footer pb-5">
                        <div class="container"> 

                            <button type="button" class="btn btn-primary  h-100 w-100" data-bs-toggle="modal" data-bs-target="#myModal">
                                Registrate
                            </button>

                        </div>
                        <div class="justify-content-center"style="justify-content: space-around!important;">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-facebook " viewBox="0 0 16 16">
                            <path
                                d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter"
                                 viewBox="0 0 16 16">
                            <path
                                d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-instagram" viewBox="0 0 16 16">
                            <path
                                d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                            </svg>
                        </div>

                    </div>

                </div>
            </div>

            <!<!-- comment -->
            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                        <!-- Modal body -->
                        <div class="modal-body text-center">
                            <img src="img/check_animado.gif" alt="alt" width="120px" />
                            <h2 class="mt-2 fs-2"> Cliente Registrado </h2>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <div class="container"> 
                                <button type="submit" class="btn btn-primary  h-100 w-100 " name="btn_registrar"style="">
                                    <span class="">Aceptar</span>
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!<!-- comment -->












        </form>

        <!--END OFF-CANVAS REGISTRO-->

        <button type="button" class="btn btn-primary  h-100 w-100" data-bs-toggle="modal" data-bs-target="#myModal">
            Registrate
        </button>
    </header>

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
    <body class="sticky-top">
        <div class="container py-3 " style="font-family: 'Roboto', sans-serif;">

            <h2 class="title mb-md-5 md-3 fs-1"> <b>Nosotros </b> </h2>

            <p >Somos una clínica veterinaria privada confiable con más de 20 años de experiencia médica. Nuestros médicos están altamente calificados y siempre a la vanguardia con los últimos protocolos diagnósticos y terapéuticos.</p>
            <p>Somos desde hace 20 años los iniciadores del uso de la video endoscopia veterinaria como herramienta diagnóstica y terapéutica en el Perú. Y desde hace 4 años introducimos en el Perú la cirugía de Mínima Invasión en la clínica privada, haciendo posible que el día de hoy, el 90 % de nuestros procedimientos quirúrgicos son de mínima invasión (endoscopia y cirugía laparoscopica). Lo cual cumple con uno de nuestro principales objetivos, el bienestar de las mascotas.</p>
            <p>Además de nuestros médicos especialistas trabajamos con médicos colaboradores externos en diferentes especialidades, con lo cual nos ayuda a ofrecerles un servio integral para sus mascotas.</p>
            <p>Nuestra vocación es el servicio y la enseñanza, por eso que nuestra clínica es una clínica escuela. Donde se realizan entrenamientos para bachilleres o médicos veterinarios que quieran ampliar sus prácticas y conocimientos.</p>

        </div>
        <section id="sec2" class="" style="background-color: #31b0d5;box-shadow: 5px 5px 15px;">
            <div class="container py-5">

                <div class="row py-md-4 py-2">
                    <div class="col-md-4 text-center py-md-0 py-3 px-5 datito">
                        <img alt="" style="width: 150px;height: 150px" data-src="http://www.vetsandiego.com.pe/wp-content/uploads/2020/07/casos_clinicos.svg" class="icon-1 lazyloaded" src="http://www.vetsandiego.com.pe/wp-content/uploads/2020/07/casos_clinicos.svg"><noscript><img class="icon-1" src="http://www.vetsandiego.com.pe/wp-content/uploads/2020/07/casos_clinicos.svg" alt="" /></noscript>

                        <p class="h2 mb-0">+<span class="count1">300</span></p>

                        <p class="text-center dat">
                            Casos clínicos<br>mensuales								</p>

                    </div>

                    <div class="col-md-4 text-center py-md-0 py-3 px-5 datito">
                        <img alt=""style="width: 150px;height: 150px" data-src="http://www.vetsandiego.com.pe/wp-content/uploads/2020/07/procedimientos_quirurjicos.svg" class="icon-1 lazyloaded" src="http://www.vetsandiego.com.pe/wp-content/uploads/2020/07/procedimientos_quirurjicos.svg"><noscript><img class="icon-1" src="http://www.vetsandiego.com.pe/wp-content/uploads/2020/07/procedimientos_quirurjicos.svg" alt="" /></noscript>

                        <p class="h2 mb-0"><span class="count1">90</span>%</p>

                        <p class="text-center dat">
                            Procedimientos quirúrgicos son de mínima invasión								</p>

                    </div>

                    <div class="col-md-4 text-center py-md-0 py-3 px-5 datito">
                        <img alt="" style="width: 150px;height: 150px"   data-src="http://www.vetsandiego.com.pe/wp-content/uploads/2020/07/anios_experiencia.svg" class="icon-1 lazyloaded" src="http://www.vetsandiego.com.pe/wp-content/uploads/2020/07/anios_experiencia.svg"><noscript><img class="icon-1" src="http://www.vetsandiego.com.pe/wp-content/uploads/2020/07/anios_experiencia.svg" alt="" /></noscript>

                        <p class="h2 mb-0">+<span class="count1">20</span></p>

                        <p class="text-center dat">
                            Años<br>de experiencia								</p>

                    </div>

                </div>
            </div>
        </section>

        <!--END HEADER-->
        <!<!-- START CARD CLIENTES -->
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner mt-4 ">
                <div class="carousel-item active" data-bs-interval="10000">
                    <div class="bodycard">
                        <div class="containerd">
                            <div class="card2">
                                <img src="img/card1.jpg" alt="" />
                                <h4 class="mt-2 fs-4">Julio Ponce Castillo</h4>
                                <p>
                                    !Hola!, soy julio, estoy muy contento por la atención
                                    brindada, llevo a mi perro Firulais desde el 2019 y recomiendo
                                    mucho la veterinaria huellitas.
                                    <small class="text-muted"></small>
                                </p>
                                <div class="container">
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrellasincolor.png" class="img-fluid imgwhat" alt="" />
                                </div>
                            </div>

                            <div class="card2">
                                <img src="img/card3.jpg" alt="" />
                                <h4 class="mt-2 fs-4">Lorena Alvares Castillo</h4>
                                <p>
                                    !Hola!, soy Lorena, estoy muy contento por la atención
                                    brindada, llevo a mi perro Firulais desde el 2020 y recomiendo
                                    mucho la veterinaria huellitas.
                                    <small class="text-muted"></small>
                                </p>
                                <div class="container">
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                </div>
                            </div>

                            <div class="card2">
                                <img src="img/card6.jpg" alt="" />
                                <h4 class="mt-2 fs-4">Marco Lizana Yaranga</h4>
                                <p>
                                    !Hola!, soy julio, estoy muy contento por la atención
                                    brindada, llevo a mi perro Firulais desde el 2020 y recomiendo
                                    mucho la veterinaria huellitas.
                                    <small class="text-muted"></small>
                                </p>
                                <div class="container">
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrellasincolor.png" class="img-fluid imgwhat" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <div class="bodycard">
                        <div class="containerd">
                            <div class="card2">
                                <img src="img/card5.jpg" alt="" />
                                <h4 class="mt-2 fs-4">Leslie Ojeda Inga</h4>
                                <p>
                                    !Hola!, soy julio, estoy muy contento por la atención
                                    brindada, llevo a mi perro Firulais desde el 2019 y recomiendo
                                    mucho la veterinaria huellitas.
                                    <small class="text-muted"></small>
                                </p>
                                <div class="container">
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrellasincolor.png" class="img-fluid imgwhat" alt="" />
                                </div>
                            </div>

                            <div class="card2">
                                <img src="img/card4.jpg" alt="" />
                                <h4 class="mt-2 fs-4">Gabriela Leiva</h4>
                                <p>
                                    !Hola!, soy julio, estoy muy contento por la atención
                                    brindada, llevo a mi perro Firulais desde el 2019 y recomiendo
                                    mucho la veterinaria huellitas.
                                    <small class="text-muted"></small>
                                </p>
                                <div class="container">
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrellasincolor.png" class="img-fluid imgwhat" alt="" />
                                </div>
                            </div>

                            <div class="card2">
                                <img src="img/baño.jpg" alt="" />
                                <h4 class="mt-2 fs-4"> Firulais Beltran</h4>
                                <p>
                                    !Hola!, soy julio, estoy muy contento por la atención
                                    brindada, llevo a mi perro Firulais desde el 2019 y recomiendo
                                    mucho la veterinaria huellitas.
                                    <small class="text-muted"></small>
                                </p>
                                <div class="container">
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrella.png" class="img-fluid imgwhat" alt="" />
                                    <img src="img/estrellasincolor.png" class="img-fluid imgwhat" alt="" />
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
            <p class="text-center h4 fs-1" style="font-family: 'Lobster', cursive;">Nuestros clientes confian en nosotros!.......</p>
        </div>

        <!-- END CARD CLIENTES -->

        <!--START LIST SEDES-->
        <div class="containers-fluid p-2">
            <div id="sedes" class="row">
                <div class="col p-0">
                    <a href="https://www.panchocavero.com/" class="text-white text-decoration-none">
                        <div class="card border-0 rounded-2 h-100 " style="background-image:url('https://www.panchocavero.com/assets/img/sede/2.jpg')">
                            <div class="card-body py-4">
                                <div class="text-center py-5">
                                    <h4 class="text-uppercase oswald font-weight-bold">Sede Barranco</h4>
                                    <p class="mb-0">Av. República de Panamá 6584, Barranco</p>
                                    <p class="mb-0">Whatsapp: 998 195 193</p>
                                    <p class="mb-0">01 446 6179 | 01 637 5132</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col p-0 d-block">
                    <a href="https://www.panchocavero.com/" class="text-white text-decoration-none">
                        <div class="card border-0 rounded-0 h-100" style="background-image:url('https://www.panchocavero.com/assets/img/sede/2.jpg')">
                            <div class="card-body py-4">
                                <div class="text-center py-5">
                                    <h4 class="text-uppercase oswald font-weight-bold">Sede Lince</h4>
                                    <p class="mb-0">Av. Militar 2026, Lince</p>
                                    <p class="mb-0">Whatsapp: 936 283 095</p>
                                    <p class="mb-0">01 517 6681</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col p-0">
                    <a href="https://www.panchocavero.com/" class="text-white text-decoration-none">
                        <div class="card border-0 rounded-0 h-100" style="background-image:url('https://www.panchocavero.com/assets/img/sede/3.jpg')">
                            <div class="card-body py-4">
                                <div class="text-center py-5">
                                    <h4 class="text-uppercase oswald font-weight-bold">Sede Los Olivos</h4>
                                    <p class="mb-0">Av. Las Palmeras 5351, Los Olivos</p>
                                    <p class="mb-0">Whatsapp: 920 385 123</p>
                                    <p class="mb-0">01 769 0605</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col p-0">
                    <a href="https://www.panchocavero.com/" class="text-white text-decoration-none">
                        <div class="card border-0 rounded-0 h-100" style="background-image:url('https://www.panchocavero.com/assets/img/sede/4.jpg')">
                            <div class="card-body py-4">
                                <div class="text-center py-5">
                                    <h4 class="text-uppercase oswald font-weight-bold">Sede San Juan de Miraflores</h4>
                                    <p class="mb-0">Av. Pedro Miotta 620</p>
                                    <p class="mb-0">Whatsapp: 932 008 081</p>
                                    <p class="mb-0">01 656 6104</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col p-0">
                    <a href="https://www.panchocavero.com/" class="text-white text-decoration-none">
                        <div class="card border-0 rounded-0 h-100" style="background-image:url('https://www.panchocavero.com/assets/img/sede/1.jpg')">
                            <div class="card-body py-4">
                                <div class="text-center py-5">
                                    <h4 class="text-uppercase oswald font-weight-bold">Sede San Borja</h4>
                                    <p class="mb-0">Av. San Luis 2845, San Borja</p>
                                    <p class="mb-0">Whatsapp: 992 125 188</p>
                                    <p class="mb-0">01 635 2172</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>



        <!--END LIST SEDES-->
        <!--START MAP -->
        <div class="container-fluid mt-5 ">
            <div class="row">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3902.035201441111!2d-77.03131028509002!3d-12.041097591471013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c9e6cd89b9fd%3A0xf6db9d86fe699ef3!2sVeterinaria%20Huellitas%20del%20Rimac!5e0!3m2!1ses!2spe!4v1629847344520!5m2!1ses!2spe" width="500" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
        <br><br><br><br><br>
        <!--END MAP-->
        <!--Color and getwaver-->
        <!--Start Formulario Contacto-->
        <section id="seccion-contacto" class="border-bottom border-secondary border-2 mt-5">
            <div id="bg-contactos">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#1b2a4e" fill-opacity="1" d="M0,32L120,42.7C240,53,480,75,720,74.7C960,75,1200,53,1320,42.7L1440,32L1440,320L1320,320C1200,320,960,320,720,320C480,320,240,320,120,320L0,320Z"></path></svg>
            </div>
        </div>

        <div class="container border-top border-primary mt-5" style="max-width: 500px;" id="contenedor-formulario">
            <div id="tituloformulario" class="text-center mb-4">
                <div> <img src="img/support.png"  class="img-fluid ps-5" alt=""></div>
                <h2>Contactos</h2>
                <p class="fs-5"> Estamos Aqui para Ayudarte</p>
            </div>
            <form method="post" action="jsp_mail.jsp" >
                <div class="mb-3">

                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" name="txtnombre">
                </div>
                <div class="mb-3">

                    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Telefono" name="txttelefono">
                </div>
                <div class="mb-3">

                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Email" name="txtemail">
                </div>
                <div class="mb-3">

                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Mensaje" name="txtmensaje"></textarea>
                </div>
                <div class="mb-3 ">
                    <button type="submit" class="btn btn-success w-100 fs-5 animate__animated animate__backInDown" style="box-shadow: 5px 20px 10px grey;border-radius: 10px" name="btn_enviar">Enviar </button>
                </div>
            </form>
        </div>
    </section>
    <!--End Color and getwaver-->
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

    <!-- End Formulario-->
    <footer class="bg-dark text-white p-3">
        <div class="container">
            <div class="row">
                <ul class="nav justify-content-center">
                    <li class="nav-item -">
                        <a class="nav-link active" aria-current="page" href="#">
                            <i class="fab fa-facebook" > </i> 
                        </a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link " href="#">Terminos y condiciones</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link  " href="#">Contacto</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link  " href="#">Politicas de Privacidad</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link " href="#">Blog</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link" href="#">Marcas</a>
                    </li>
                    <li class="nav-item -">
                        <a class="nav-link  " href="#">Creadores</a>
                    </li>

                </ul>

            </div>
        </div>
        <div class="row d-flex justify-content-center align-items-center">

            <img src="img/libro-de-reclamaciones.png" style="width: 90px; padding-bottom: 10px ;"  alt="">
            <a class="text-center text-capitalize" style="font-family: 'Roboto', sans-serif;">libro de reclamaciones</a>
        </div>
    </nav> 
    <!---->


</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
</script>
<script src="JS/Navbar.js">

</script>
</body>

</html>

