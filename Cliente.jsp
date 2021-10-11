<%-- 
    Document   : Cliente
    Created on : 29 sept 2021, 12:21:09
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    </head>
    <body>
        <h1 class="text-center">Configuracion</h1>
           
        <div class="container mt-5">
            <form method="post" action="/Veterinaria_Huellitas/ClienteController">
            <div class="row">
                <div>
                    <input type="hidden" name="txt_codCli" value="${id}">
                </div>
                <div class="col">
                    <label class="form-label"><b>Nombres</b></label>
                    <input type="text" class="form-control" placeholder="Nombre" name="txt_nomCli" value="${nombre}"  >
                    
                </div>
                <div class="col">
                    <label class="form-label"><b>Apellidos</b></label>
                    <input type="text" class="form-control" placeholder="Apellidos" name="txt_apeCli" value="${apellido}">
                </div>
            </div>
            <div class="row mt-1">
                <div class="col">
                    <label class="form-label"><b>DNI</b></label>
                    <input type="text" class="form-control" placeholder="DNI" name="txt_dniCli" value="${dni}">
                </div>
                <div class="col">
                    <label class="form-label"><b>Correo</b></label>
                    <div class="input-group flex-nowrap">
                        
                        <span class="input-group-text" id="addon-wrapping">@</span>
                         
                        <input type="text" class="form-control" placeholder="Correo" aria-label="Username" aria-describedby="addon-wrapping" name="txt_correoCli" value="${email}">
                    </div>
                </div>
            </div>
            <div class="row mt-1">
                <div class="col"> 
                    <label class="form-label"><b>Telefono</b></label>
                    <input type="text" class="form-control" placeholder="Telefono" name="txt_telCli" value="${tele}">
                </div>
                <div class="col">
                    <label class="form-label"><b>Contraseña</b></label>
                    <input type="text" class="form-control" placeholder="Contraseña" name="txt_contraCli" value="${contra}">
                </div>
            </div>
            <div class="mt-3">
                <input class="btn btn-primary" type="submit" name="btn_guardarCli" value="GUARDAR" style="width: 150px"height="150px">
                <input class="btn btn-danger" type="submit" name="btn_eliminarCli" value="ELIMINAR CUENTA">
                <a class="btn btn-warning text-white" href="PetShop.jsp">SEGUIR COMPRANDO</a>
            </div>
            </form>
        </div>
    </body>
</html>
