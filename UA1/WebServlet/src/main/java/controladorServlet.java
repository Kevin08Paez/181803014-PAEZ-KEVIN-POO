/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kevin_Paez
 */
@WebServlet(urlPatterns = {"/controladorServlet"})
public class controladorServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
            
            String nombre = request.getParameter("nombre");
            String matric = request.getParameter("matricula");
            String grup = request.getParameter("grupo");
            String cuatri = request.getParameter("cuatri");
            
            Cookie cookname = new Cookie("nom",nombre);
            Cookie cookmatri = new Cookie("matri",matric);
            Cookie cookgrup = new Cookie("grupo",grup);
            Cookie cookcua = new Cookie("cuatri",cuatri);
            response.addCookie(cookname);
            response.addCookie(cookmatri);
            response.addCookie(cookgrup);
            response.addCookie(cookcua);
            
            String mensaje="Bienvenido nuevo usuario",message="";
            
            Cookie[] galleta = request.getCookies();
            if(galleta != null){
                for(Cookie cookieTemporal: galleta){
                    if("nom".equals(cookieTemporal.getName())){
                        message=cookieTemporal.getValue();
                        mensaje=" ya nos había visitado";
                    }
                }
                //nuevoUsuario=false;
            }
      
            
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servelet Cookies</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>"+message+mensaje+"</h1>");
            out.println("</body>");
            out.println("</html>");
            out.close();
            
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
