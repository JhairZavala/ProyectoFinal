/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.DAO;
import models.POJO;

/**
 *
 * @author Jhair
 */
public class Contacto extends HttpServlet {

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
        String txtUser = request.getParameter("txt-user");
        String txtTelefono = request.getParameter("txt-telefono");
        String txtCorreo = request.getParameter("txt-correo");
        String txtSugerencia = request.getParameter("txt-sugerencia"); 
        
        DAO cdao = new DAO();
        
        POJO pojo = new POJO();
        pojo.setNombre(txtUser);
        pojo.setTelefono(txtTelefono);
        pojo.setCorreo(txtCorreo);
        pojo.setSugerencia(txtSugerencia);
        
        if(txtUser.isEmpty() || txtTelefono.isEmpty()|| txtCorreo.isEmpty()|| txtSugerencia.isEmpty()){
            response.sendRedirect("Contacto.jsp");
        }else{
            cdao.insertarContacto(pojo);
            response.sendRedirect("porfile.jsp");
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
        processRequest(request, response);
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