<%-- 
    Document   : partial
    Created on : 2018/06/19, 11:40:51
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
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String url = "jdbc:mysql://localhost:3306/Challenge_db";
        String user = "ta96";  
        String pass = "296019900918";
        String sql = "select * from profiles where name like ?";
        try{
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          con = DriverManager.getConnection(url,user,pass);
          ps = con.prepareStatement(sql);
          ps.setString(1,"%"+name+"%");
          rs = ps.executeQuery();
          while(rs.next()){
              out.println("ID:"+rs.getInt("profileID") + " 名前:"+rs.getString("name") +  " 連絡先:" + rs.getString("tel") + " 年齢:" + rs.getInt("age") + " 誕生日:" + rs.getString("birthday")+"<br>");
              //out.println(+id++name+tel+age+birth+"</p>");
          }
          rs.close();
          ps.close();
          con.close();
        } catch (SQLException e_sql){
            out.println("接続時にエラーが発生しました:" + e_sql.toString());
        } catch (Exception e){
            out.println("接続時にエラーが発生しました:" + e.toString());
        } finally {
            if(con != null){
                try{
                    con.close();
                } catch (Exception e_con){
                        out.println(e_con.getMessage());
                }
            }
        }
        %>
    </body>
</html>
