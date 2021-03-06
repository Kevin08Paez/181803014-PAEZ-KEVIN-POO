<%-- 
    Document   : agregarUsuaurio
    Created on : 12 jun. 2020, 9:22:07
    Author     : Kevin_Paez
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ", "root", "");
        stmt = conexion.prepareStatement("INSERT INTO users SET nombre=?, password=md5(?), edad=?");
        stmt.setString(1, request.getParameter("usuario"));
        stmt.setString(2, request.getParameter("password"));
        stmt.setInt(3, Integer.parseInt(request.getParameter("edad")));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Agregar Usuario</title>
    </head>
    <body>
        <%
            if (stmt.executeUpdate() == 1) {
        %>
        <div class="alert alert-success" colspan="2">
            <h2>Se agrego exitosamente el usuario</h2>
        </div>
        <%
                } 
            } catch (Exception e) {
                //out.println(e.getMessage());
        %>
            <div class="alert alert-danger" colspan="2">
               <h2>Ocurrio un error</h2>
            </div>
        <%
            }
        %>  
        <div>
           <a class="btn btn-success btn-black" href="index.jsp">Regresar</a>
        </div>                
    </body>
</html>