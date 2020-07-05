<%-- 
    Document   : index
    Created on : 23 may. 2020, 16:13:34
    Author     : Kevin_Paez
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 3</title>
    </head>
    <body>
        <h1>Cuál es tu horóscopo</h1>

        <form>
            <p>
                Teclee su día de nacimiento: <input type="number" name="dia" required /><br><br>
                Teclee su mes de nacimiento: <input type="number" name="mes" required /><br><br>
                <input type="submit" value="enviar"  />

            </p>
        </form>
        <%
            if (request.getParameter("mes") != null && request.getParameter("dia") != null) {
                int m = Integer.parseInt(request.getParameter("mes"));
                int d = Integer.parseInt(request.getParameter("dia"));
                if (m <= 12 && d <= 31) {
                    out.println("Día: " + d + ",  Mes: " + m);
        %>
        <br><p>Tu Horóscopo es: </p>
        <%
            if ((d >= 22 && m == 12) || (d <= 20 && m == 1)) {
                out.println("Capricornio");
            } else {
                if ((d >= 21 && m == 1) || (d <= 19 && m == 2)) {
                    out.println("Acuario");
                } else {
                    if ((d >= 20 && m == 2) || (d <= 20 && m == 3)) {
                        out.println("Piscis");
                    } else {
                        if ((d >= 21 && m == 3) || (d <= 20 && m == 4)) {
                            out.println("Aries");
                        } else {
                            if ((d >= 21 && m == 4) || (d <= 21 && m == 5)) {
                                out.println("Tauro");
                            } else {
                                if ((d >= 22 && m == 5) || (d <= 21 && m == 6)) {
                                    out.println("Géminis");
                                } else {
                                    if ((d >= 22 && m == 6) || (d <= 23 && m == 7)) {
                                        out.println("Cáncer");
                                    } else {
                                        if((d >= 24 && m == 7) || (d <= 23 && m == 8)){
                                            out.println("Leo");
                                        } else {
                                            if((d >= 24 && m == 8) || (d <= 23 && m == 9)){
                                                out.println("Virgo");
                                            } else {
                                                if((d >= 24 && m == 9) || (d <= 23 && m == 10)){
                                                    out.println("Libra");
                                                } else {
                                                    if((d >= 24 && m == 10) || (d <= 22 && m == 11)){
                                                        out.println("Escorpio");
                                                    } else {
                                                        if((d >= 23 && m == 11) || (d <= 21 && m == 12)){
                                                            out.println("Sagitario");
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

        } else {%>
        <h3>La fecha no es válida</h3>  
        <%}
        } else {
        %>
        <h3>No has ingresado nada</h3>
        <%  }%>
    </body>
</html>
