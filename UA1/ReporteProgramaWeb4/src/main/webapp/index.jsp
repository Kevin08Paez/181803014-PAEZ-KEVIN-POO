<%-- 
    Document   : index
    Created on : 23 may. 2020, 19:17:21
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 4</title>
    </head>
    <body>
        <h1>Triángulo con números</h1>
        <form>
            <input type="number" name="num" required />
            <input type="submit" value="Enviar" />
        </form> 
        <% if (request.getParameter("num") != null) {
                int n = Integer.parseInt(request.getParameter("num"));
                int i, j;
                for(i=1; i<=n; i++){
                    for(j=i; j>0; j--){ 
                        out.println(j);
                    }   
        %>
        <br>
        <%
                }
            } else {%>
        <h3>No hay datos</h3>
        <%}%>
    </body>
</html>
