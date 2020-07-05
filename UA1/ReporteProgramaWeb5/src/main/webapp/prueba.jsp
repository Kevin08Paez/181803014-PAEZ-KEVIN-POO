<%-- 
    Document   : prueba
    Created on : 25 may. 2020, 9:00:48
    Author     : Kevin_Paez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa 5</title>
    </head>
    <body>
        <h3>Escriba los números: </h3>
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
                <input type="number" name="num<%out.print(i);%>" required /><br><br> 
            <%
                if(request.getParameter("num"+i)!= null){
                    int b=Integer.parseInt(request.getParameter("num"+i));
                    arr[i]=b;
                }
            }%>
            <input type="submit" value="Enviar" />
            <% 
            out.println("<br><br>");
            out.println("Los números tecleados fueron: ");
            int h=0, j=100;
            for(int i=0; i<a; i++){
                if(h<arr[i]){
                    h=arr[i];
                }	
                if(arr[i]<j){
			j=arr[i];
		}
            out.println(arr[i]);
            }
            out.println("<br><br>");
            out.println("El número mayor es: "+h);
            out.println("<br><br>");
            out.println("El número menor es: "+j);
            %>
            
        </form>
            <form action="index.jsp">
                <br><br><input type="submit" value="regresar"/>
            </form>    
    </body>
</html>
