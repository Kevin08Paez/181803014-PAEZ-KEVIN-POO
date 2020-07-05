<%-- 
    Document   : index
    Created on : 23 may. 2020, 22:10:46
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 1</title>
    </head>
    <body>
        <h1>Calcular Cateto Opuesto, Cateto Adyacente e Hipotenusa</h1>
        
        <% 
        if (request.getParameter("eleccion") != null){
            int numero = Integer.parseInt(request.getParameter("eleccion"));
            if (numero == 1){ %>
            <form>
                <p>
                    Valor para a: <input type="number" name="a1" required/><br><br>
                    Valor para b: <input type="number" name="b1" required/><br><br>
                    <input type="submit" value="Resolver" />
                </p>
            </form>
            
            <%} else {
                if (numero == 2){%>
                    <form> 
                        <p>
                            NOTA: Recuerda que el valor para <b>b</b> debe ser menor que el valor para <b>c</b><br><br>
                            Valor para c: <input type="number" name="c1" required/><br><br>
                            Valor para b: <input type="number" name="b2" required/><br><br>
                            <input type="submit" value="Resolver" />
                        </p>
                    </form>
                <%} else {
                    if (numero == 3){%>
                        <form> 
                            <p>
                                NOTA: Recuerda que el valor para <b>a</b> debe ser menor que el valor para <b>c</b><br><br>
                                Valor para c: <input type="number" name="c2" required/><br><br>
                                Valor para a: <input type="number" name="a2" required/><br><br>
                                <input type="submit" value="Resolver" />
                            </p>
                        </form>
                    <%} 
                }
            }
        } else{ %>
            <img src="images/pitagoras.jpg" alt="Pitagoras" width="350" height="190"><br><br>
            <h5>Teclee 1 para calcular la Hipotenusa c</h5>
            <h5>Teclee 2 para calcular el Cateto Opuesto a</h5>
            <h5>Teclee 3 para calcular el Cateto Adyacente b</h5>
            
            <form>
                <p>
                    <input type="number" name="eleccion" min="1" max="3" required /><br>
                    <input type="submit" value="Enviar"  />
                </p>
            </form>
        <%
            if (request.getParameter("a1") != null && request.getParameter("b1") != null){
                    int lb = Integer.parseInt(request.getParameter("a1"));
                    int lc = Integer.parseInt(request.getParameter("b1"));
                    double a;
                    a=Math.sqrt((lb*lb)+(lc*lc));
                    out.println("El resultado es: "+a);
            } else {
                if (request.getParameter("c1") != null && request.getParameter("b2") != null){
                    int la = Integer.parseInt(request.getParameter("c1"));
                    int lc = Integer.parseInt(request.getParameter("b2"));
                    double a;
                    a=Math.sqrt((la*la)-(lc*lc));
                    out.println("El resultado es: "+a);
                } else {
                    if (request.getParameter("c2") != null && request.getParameter("a2") != null){
                       int la = Integer.parseInt(request.getParameter("c2"));
                        int lb = Integer.parseInt(request.getParameter("a2"));
                        double a;
                        a=Math.sqrt((la*la)-(lb*lb));
                        out.println("El resultado es: "+a); 
                    } 
                }
            }
            
        }%>

    </body>
</html>
