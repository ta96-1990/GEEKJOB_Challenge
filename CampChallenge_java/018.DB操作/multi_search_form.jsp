<%-- 
    Document   : multi_search_form
    Created on : 2018/06/21, 15:08:55
    Author     : honnd
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String p_name = request.getParameter("name");
            Integer p_age = Integer.parseInt(request.getParameter("age"));
            String p_birthday = request.getParameter("birthday");
            Connection con = null;
            PreparedStatement ps = null;
            String url = "jdbc:mysql://localhost:3306/Challenge_db";
            String user = "ta96";  
            String pass = "296019900918";
            String sql = "select * from profiles where name like ? or age=? or birthday=?";
            ResultSet rs = null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(url,user,pass);
                ps = con.prepareStatement(sql);
                ps.setString(1,"%"+p_name+"%");
                ps.setInt(2,p_age);
                ps.setString(3,p_birthday);
                rs = ps.executeQuery();
                while(rs.next()){
                    int id = rs.getInt("profileID");
                    String name = rs.getString("name");
                    String tel = rs.getString("tel");
                    int age = rs.getInt("age");
                    String birth = rs.getString("birthday");
                    out.println("<p>");
                    out.println("ID:"+id+" 名前:"+name+" 連絡先:"+tel+" 年齢:"+age+" 誕生日:"+birth+"</p>");
                }
                rs.close();
                ps.close();
                con.close();
                
                
            } catch (ClassNotFoundException ex){
                out.print("接続時にエラーが発生しました"+ex.toString());
            } catch (Exception ex){
                out.print("接続時にエラーが発生しました"+ex.toString());
            } finally {
                if(con != null){
                    try{
                        con.close();
                    } catch(SQLException ex){
                        out.print("接続時にエラーが発生しました"+ex.toString());
                    }
                }
            }
                

        %>
    </body>
</html>
