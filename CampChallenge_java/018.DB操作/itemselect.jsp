<%-- 
    Document   : itemselect
    Created on : 2018/06/21, 17:18:21
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
            Connection con = null;
            String url = "jdbc:mysql://localhost:3306/Challenge_db";
            String user = "ta96";
            String pass = "296019900918";
            PreparedStatement ps = null;
            String sql = "select * from item_data";
            ResultSet rs = null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(url,user,pass);
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while(rs.next()){
                    out.print("<p>"+"商品番号:"+rs.getInt("itemnumber")+" 商品名:"+rs.getString("name")+" 値段:"+rs.getInt("price")+"</p>");
                }
                rs.close();
                ps.close();
                con.close();
            } catch (ClassNotFoundException ex){
                out.print("接続時にエラーが発生しました"+ex.toString());
            } catch (Exception ex){
                out.print("接続時にエラーが発生しました"+ex.toString());
            } finally {
                if(con !=null){
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
