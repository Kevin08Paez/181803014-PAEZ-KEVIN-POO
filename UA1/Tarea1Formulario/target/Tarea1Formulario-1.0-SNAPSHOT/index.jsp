<%-- 
    Document   : index
    Created on : 21 may. 2020, 16:50:49
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarea 1</title>
    </head>
    <body>
        <h1>Imprimir desde cero hasta el un número escrito por el usuario</h1>
        <form>
            <p>
                Introduzca un número: <input type="text" required name="num" 
                                             onkeypress='return event.charCode >= 48 && event.charCode <= 57' /> <br><br>
                <input type="submit" value="enviar"  />
            </p>
            
        </form>
        <h3>Su númeración es: </h3>
        <%
            try {
                int n = Integer.parseInt(request.getParameter("num"));
                for(int i=0; i<n; i++){
                    out.println(i);
                }
                out.println(request.getParameter("num"));
                } catch (Exception e) {   
                }
        %>
        
    </body>
</html>
