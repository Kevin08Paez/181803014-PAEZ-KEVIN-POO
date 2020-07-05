<%-- 
    Document   : calcular
    Created on : 27 may. 2020, 16:54:18
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcular</title>
    </head>
    <body>
        <h3>Escriba las edades: </h3>
        <form> 
        <% 
            int c = Integer.parseInt(request.getParameter("cant"));
        %>
            <input type="hidden" name="cant" value="<%out.print(c);%>" />
        <%
            int a=c;
            int arr[] = new int[a];
            for (int i=0; i<a; i++){
        %>       
                <p>Alumno <%out.print(i);%>:
                <input type="number" name="num<%out.print(i);%>" min="3" max="80" required /><br><br></p> 
            <%
                if(request.getParameter("num"+i)!= null){
                    int b=Integer.parseInt(request.getParameter("num"+i));
                    arr[i]=b;
                }
            }%>
            <input type="submit" value="Enviar" />
        </form>
            <% 
            out.println("<br><br>");
            out.println("Los números tecleados fueron: ");
            int h=0, j=0, i=0, aux=0, t, d;
            double suma=0, prom=0;
            for(i=0; i<a; i++){
                suma=suma+arr[i];
            out.println(arr[i]);
            }
            prom=suma/a;
            out.println("<br><br>");
            out.println("La <b>suma</b> total es: "+suma);
            out.println("<br><br>");
            out.println("La <b>media</b> es: "+ prom);
            out.println("<br><br>");
            for(j=0; j<a-1; j++){
		for(i=j+1; i<a; i++){
                    if(arr[i]<arr[j]){
              		aux=arr[j];
        		arr[j]=arr[i];
			arr[i]=aux;		
                    }	
		}
            }
            out.println("Edades ordenadas: ");
            for(j=0; j<a; j++){
		out.println(arr[j]);	
            }
            out.println("<br><br>");
            t=a%2;
            if(t==0){
                    d=a/2;
                    h=d-1;
                    out.print("La <b>mediana</b> es: "+ arr[h] +" y "+ arr[d]);
            }
            else{
                    d=a/2;
                    out.print("La <b>mediana</b> es: "+ arr[d]);
            }
            out.println("<br><br>");
            int maxima=1, moda=0;
            for (i = 0; i < arr.length; i++) {
                int repite = 0;
                for (j = 0; j < arr.length; j++) {
                    if (arr[i] == arr[j]) {
                        repite++;
                    }
                }
                if (repite > maxima) {
                    moda = arr[i];
                }
                //out.println(moda);
            }
            //out.println("<br><br>");
            out.println("La <b>moda</b> es:"+moda);
            
            %>
            <form action="index.jsp">
                <br><br><input type="submit" value="regresar"/>
            </form>
    </body>
</html>
