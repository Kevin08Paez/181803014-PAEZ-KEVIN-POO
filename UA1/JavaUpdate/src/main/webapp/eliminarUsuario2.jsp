<%-- 
    Document   : eliminarUsuario2
    Created on : 24 jun. 2020, 8:40:47
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ", "root", "");
        stmt = conexion.prepareStatement("DELETE FROM users WHERE id_user=?");
        stmt.setInt(1, Integer.parseInt(request.getParameter("id_user")));
        //rs = stmt.executeQuery(); 
        if (stmt.executeUpdate() == 1) {
            response.sendRedirect("index.jsp");
        }
    } catch (Exception e) {
        //out.println(e.getMessage());
        
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
        <!--<meta http-equiv="Refresh" content="0;URL=index.jsp">-->
    </head>
    <body>

    </body>
</html>