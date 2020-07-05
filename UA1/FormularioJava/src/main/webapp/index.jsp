<%-- 
    Document   : index
    Created on : 20 may. 2020, 9:15:06
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Primer Formulario</title>
    </head>
    <body>
        <h1> Mi primer Formulario </h1>
        <p> 
            Este es mi primer formulario en donde conocere la diferencia entre POST <b>Y GET</b> 
        </p>
        
        <form method="POST">
            <p>
                Introduzca su nombre:  <input type="text" name="minombre" /> <br><br>
                Introduzca una contraseña: <input type="password" name="contra" /><br><br>
                Seleccione su fecha de nacimiento: <input type="date" name="fechanacimiento" /><br><br>
                <input type="submit" value="enviar"  /> 
            </p>
         
        </form>
        <h3>Los datos ingresados son: </h3>
        <% out.println(request.getParameter("minombre"));%><br><br>
        <% out.println(request.getParameter("contra"));%><br><br>
        <% out.println(request.getParameter("fechanacimiento"));%><br><br>
 
    </body>
</html>
