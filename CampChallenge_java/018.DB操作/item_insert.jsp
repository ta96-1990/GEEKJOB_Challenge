<%-- 
    Document   : item_insert
    Created on : 2018/06/26, 15:15:56
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
            String itemname = request.getParameter("name");
            String itemprice = request.getParameter("price");
            Connection con = null;
            String url = "jdbc:mysql://localhost:3306/Challenge_db";
            String user = "ta96";  
            String pass = "296019900918";
            PreparedStatement ps = null;
            String sql = "insert into item_data (name,price) values (?,?)";
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(url,user,pass);
                ps = con.prepareStatement(sql);
                ps.setString(1,itemname);
                ps.setString(2,itemprice);
                ps.executeUpdate();
                ps.close();
                con.close();
                out.print("在庫情報の追加が完了しました。");
                %>
                <a href="item_userpage.html">ユーザーページに戻る</a>
        <%
            }catch(ClassNotFoundException ex){
                out.print(ex.toString());
            }catch(Exception ex){
                out.print(ex.toString());
            }finally{
                if(con !=null){
                    try{
                        con.close();
                    }catch(SQLException ex){
                        out.print(ex.getMessage());
                    }
                }
            }
        %>
    </body>
</html>
