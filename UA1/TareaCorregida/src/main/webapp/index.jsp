<%-- 
    Document   : index
    Created on : 22 may. 2020, 8:58:51
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarea Corregida</title>
    </head>
    <body>
        <h1>El programa correcto</h1>
        <%
            if (request.getParameter("numero") != null) {%>
        <h1>El ciclo del valor ingresado es</h1>
        <%
            int numero = Integer.parseInt(request.getParameter("numero"));
            for (int i = 0; i <= numero; i++) {
                out.println(i + " ");
            }%>
        <form>
            <input type="hidden"/>
            <input type="submit" value="Regresar"/>    
        </form>  

        <%} else {%>
        <form>
            <input type="number" name="numero" required/>
            <input type="submit" value="Enviar"/>
            <h3>No has ingresado ningún valor</h3>
        </form>
        <%}
        %>
    </body>
</html>
