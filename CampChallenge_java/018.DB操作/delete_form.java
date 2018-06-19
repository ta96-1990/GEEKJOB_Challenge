/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author honnd
 */
public class delete_form extends HttpServlet {

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
        Integer id = Integer.parseInt(request.getParameter("profile"));
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String url = "jdbc:mysql://localhost:3306/Challenge_db";
        String user = "ta96";
        String pass = "296019900918";
        String sql = "delete from profiles where profileID=?";
        String sql1 = "select * from profiles";
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(url,user,pass);
            ps = con.prepareStatement(sql);
            ps.setInt(1,id);
            ps.executeUpdate();
            rs = ps.executeQuery(sql1);
            while(rs.next()){
                int id1 = rs.getInt("profileID");
                String name = rs.getString("name");
                String tel = rs.getString("tel");
                int age = rs.getInt("age");
                String birth = rs.getString("birthday");
                out.println("<p>");
                out.println("ID:"+id1+" 名前:"+name+" 連絡先:"+tel+" 年齢:"+age+" 誕生日:"+birth+"</p>");
                
            }
            rs.close();
            ps.close();
            
            
        
        } catch (ClassNotFoundException ex) {
                        out.println("接続時にエラーが発生しました:" + ex.toString());
        } catch (SQLException ex) {
                        out.println("接続時にエラーが発生しました:" + ex.toString());
        } catch (Exception ex) {
                        out.println("接続時にエラーが発生しました:" + ex.toString());
        } finally {
            if(con != null){
                try{
                    con.close();
                } catch (Exception e_con){
                        out.println(e_con.getMessage());
                }
            }
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
