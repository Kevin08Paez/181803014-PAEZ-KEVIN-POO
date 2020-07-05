<%-- 
    Document   : index
    Created on : 3 jun. 2020, 16:45:36
    Author     : Kevin_Paez
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt= null;
    ResultSet rs= null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios ","root","");
        stmt = conexion.prepareStatement("Select * from users");
        rs = stmt.executeQuery();
        
    } catch (Exception e) {
        
        out.println("Error " + e);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Instrumentos</title>
    </head>
    <body>
        <div>
            <h1>Los registros para la base de datos son: </h1>
            <div class="containe">
                <table align="center" class="table table-hover" >
                    <thead class="thead-dark">
                        <tr>
                            <td colspan="2"><h2>Usuarios</h2></td>
                            <td><a class="btn btn-success btn-black" href="formularioUsuario.jsp">Agregar Usuario </a></td>
                        </tr>
                        <tr>
                            <th>IdUser</th>
                            <th>Nombre</th>
                            <th>Password</th>
                            <th>Edad</th>
                        </tr>
                    </thead>
                    <%
                        while(rs.next()){
                    %>
                    <tr>
                        <td><%=rs.getInt("id_user")%></td>
                        <td><%=rs.getString("nombre")%></td>
                        <td><%=rs.getString("password")%></td>
                        <td><%=rs.getInt("edad")%></td>
                        <td><a class="btn btn-warning btn-block"  href="formularioUsuario.jsp?id_user=<%=rs.getInt("id_user")%>">Editar Usuario</a></td>
                        <td><a class="btn btn-danger btn-block" href="eliminarUsuario.jsp?id_user=<%=rs.getInt("id_user")%>"> Eliminar Usuario</a></td>
                        <td><a class="btn btn-danger btn-block" href="eliminarUsuario2.jsp?id_user=<%=rs.getInt("id_user")%>"> Eliminar Usuario 2</a></td>
                        <td><a class="btn btn-info btn-block" href="formularioContra.jsp?id_user=<%=rs.getInt("id_user")%>">Editar Contraseña</a></td>
                    </tr>
                    <%}%>
                </table>
            </div>
        </div>
    </body>
</html>
