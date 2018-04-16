/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
/**
 *
 * @author honnd
 */
@WebServlet(name = "java_challenge11_8", urlPatterns = {"/java_challenge11_8"})
public class java_challenge11_8 extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");            
            out.println("</head>");
            out.println("<body>");
            int limit =2;
            ArrayList<String> al = method();
           
            
            for (int i=0;i<al.size();i++) {
                if (limit*4<i){
                    break;
                }
                if("null".equals(al.get(i))){
                    continue;
                }
                
            out.println(al.get(i));
                
            
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }
    
        ArrayList method(){
        ArrayList<String> data = new ArrayList<String>();
        data.add("藤本 流宇");
        data.add("r-fujimoto");
        data.add("1999/5/3");
        data.add("null");
        data.add("須藤　颯");
        data.add("1999/12/13");
        data.add("●県×市■町▲番");
        data.add("h-suto");
        data.add("広瀬 大悟");
        data.add("1999/6/7");
        data.add("●県×市■町▲番");
        data.add("d-hirose");
        return data;
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
