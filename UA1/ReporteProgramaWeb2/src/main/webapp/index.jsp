<%-- 
    Document   : index
    Created on : 23 may. 2020, 15:33:21
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 2</title>
    </head>
    <body>
        <h1>Regla de tres</h1>
        <%
            if (request.getParameter("a") != null && request.getParameter("b") != null && request.getParameter("c") != null) {%>
        <h3>El resultado es:</h3>
        <%
            int a = Integer.parseInt(request.getParameter("a"));
            int b = Integer.parseInt(request.getParameter("b"));
            int c = Integer.parseInt(request.getParameter("c"));

            double x = (b * c) / a;
            out.println(x);
        %>
        <form>
            <input type="hidden"/>
            <input type="submit" value="Regresar"/>    
        </form>  
        <%} else {%>
        <form>
            <p>
                Valor para a: <input type="number" name="a" required />
                Valor para b: <input type="number" name="b" required /><br>
                Valor para c: <input type="number" name="c" required />
                <br>
                <br>
                <input type="submit" value="Resolver"  />
            </p>
        </form>

        <h3>No has ingresado ningún valor</h3>
        <%}%>
    </body>
</html>
