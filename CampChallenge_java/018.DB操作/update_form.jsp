<%-- 
    Document   : test
    Created on : 2018/06/19, 10:20:00
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
            String url = "jdbc:mysql://localhost:3306/Challenge_db";
            String user = "ta96";  
            String pass = "296019900918";
            Connection con = null;
            PreparedStatement ps = null;
            Integer p_id  = Integer.parseInt(request.getParameter("profileID"));
            String tel = request.getParameter("update");
            ResultSet rs = null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(url,user,pass);
                ps = con.prepareStatement("update profiles set tel=? where profileID=?");
                ps.setString(1,tel);
                ps.setInt(2,p_id);
                ps.executeUpdate();
                ps = con.prepareStatement("select * from profiles");
                rs = ps.executeQuery();
                while(rs.next()){
                    int id1 = rs.getInt("profileID");
                    String name = rs.getString("name");
                    String tel1 = rs.getString("tel");
                    int age = rs.getInt("age");
                    String birth = rs.getString("birthday");
                    out.println("<p>");
                    out.println("ID:"+id1+" 名前:"+name+" 連絡先:"+tel1+" 年齢:"+age+" 誕生日:"+birth+"</p>");
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
                } catch(SQLException ex) {
                    out.print("接続時にエラーが発生しました"+ex.toString());
                }
            }
            }
            
        %>
    </body>
</html>
