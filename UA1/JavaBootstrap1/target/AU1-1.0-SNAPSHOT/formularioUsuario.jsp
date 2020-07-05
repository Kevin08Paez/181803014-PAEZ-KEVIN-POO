<%-- 
    Document   : formularioUsuario
    Created on : 12 jun. 2020, 8:53:08
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Usuario</title>
    </head>
    <body>
        <div class="container">
            <h1>Agregar un nuevo usuario</h1><br>
            <form action="agregarUsuaurio.jsp" method="POST" class="form">
                <div class="form-row">
                    <div class="col">
                        <input type="text" class="form-control" placeholder="Nombre" name="usuario" required/>
                    </div>
                    <div class="col">
                        <input type="password" class="form-control" placeholder="Contraseña"  name="password" required />
                    </div>
                    <div class="col">
                        <input type="submit" class="btn btn-success btn-black"  value="Enviar"/>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
