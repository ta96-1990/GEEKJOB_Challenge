/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author honnd
 */
@WebServlet(urlPatterns = {"/Errorhundling_update"})
public class Errorhundling_update extends HttpServlet {

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
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/Challenge_db";
        String user = "ta96";
        String pass = "296019900918";
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(url,user,pass);
            Statement st = con.createStatement();
            String sql ="update profiles set age=27 where profileID=6";
            String sql1 ="update profiles set birthday='1990-09-18' where profileID=6";
            int num = st.executeUpdate(sql);
            int num1 = st.executeUpdate(sql1);
            String sql3 = "select * from profiles";
            ResultSet rs1 = st.executeQuery(sql3);
            while(rs1.next()){
                int id = rs1.getInt("profileID");
                String name = rs1.getString("name");
                String tel = rs1.getString("tel");
                int age = rs1.getInt("age");
                String birth = rs1.getString("birthday");
                out.println("<p>");
                out.println("ID:"+id+" 名前:"+name+" 連絡先:"+tel+" 年齢:"+age+" 誕生日:"+birth+"</p>");
                
            }
            rs1.close();
            st.close();

            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Errorhundling_update.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(Errorhundling_update.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(Errorhundling_update.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Errorhundling_update.class.getName()).log(Level.SEVERE, null, ex);
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
