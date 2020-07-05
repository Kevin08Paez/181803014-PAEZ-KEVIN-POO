<%-- 
    Document   : solicita
    Created on : 27 may. 2020, 8:26:52
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    int numero = Integer.parseInt(request.getParameter("numero"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicita</title>
    </head>
    <body>
        <h1>Ingresar un total de <%out.println(numero); %></h1>
        <form>
            <input type="hidden" name="numero" value="<%out.print(numero);%>" />
            <%
            for(int i=0; i<numero; i++ ){%>
                <input type="number" name="valor<%out.print(i);%>" required /><br><br>
            <%}%>
            <input type="submit" value="Envianding datos"/>
        </form>
            <%
            
            %>
    </body>
</html>
