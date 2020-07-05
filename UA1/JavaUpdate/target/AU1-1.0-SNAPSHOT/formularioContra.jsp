<%-- 
    Document   : formularioContra
    Created on : 19 jun. 2020, 17:55:55
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%

    int id = 0;
    if (request.getParameter("id_user") != null) {
        id = Integer.parseInt(request.getParameter("id_user"));
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ", "root", "");
            stmt = conexion.prepareStatement("SELECT * FROM users WHERE id_user=? ");
            stmt.setInt(1, id);
            rs=stmt.executeQuery();
            rs.next();
            
        } catch (Exception e) {
            out.println(e.getMessage());
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Contraseña</title>
    </head>
    <body>
        <div class="container">
            <h1>Cambiar contraseña</h1><br>
            <form action="editarContra.jsp" method="GET" class="form">
                
                    <div class="col" >
                        <input type="hidden" value="<%=id%>" class="form-control" placeholder="id" name="id" />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Contraseña Actual"  name="password" required />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Nueva Contraseña"  name="pass1" required />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Confirmar Contraseña"  name="pass2" required />
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-success btn-black"  value="Enviar"/>
                        <a class="btn btn-info btn-black" href="index.jsp">Regresar</a>
                    </div>
                    
            </form>
        </div>
    </body>
</html>
