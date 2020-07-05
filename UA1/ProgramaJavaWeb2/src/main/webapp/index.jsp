<%-- 
    Document   : index
    Created on : 27 may. 2020, 16:53:52
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa Web</title>
    </head>
    <body>
        <h1>Calcular la Media, Mediana y Moda de edades de n alumnos</h1>
        <h3>Teclee la cantidad de alumnos a ingresar</h3>
        <form action="calcular.jsp">
            <input type="number" name="cant" min="2" required><br><br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
