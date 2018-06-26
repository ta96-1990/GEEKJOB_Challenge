<%-- 
    Document   : item_delete
    Created on : 2018/06/26, 16:25:20
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
            Integer itemnumber = Integer.parseInt(request.getParameter("itemnumber"));
            Connection con = null;
            String url = "jdbc:mysql://localhost:3306/Challenge_db";
            String user = "ta96";  
            String pass = "296019900918";
            PreparedStatement ps = null;
            String sql = "delete from item_data where itemnumber = ?";
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(url,user,pass);
                ps = con.prepareStatement(sql);
                ps.setInt(1,itemnumber);
                ps.executeUpdate();
                ps.close();
                con.close();
                %>
                <a href="item_userpage.jsp">ユーザーページに戻る</a>
        <%
            }catch(ClassNotFoundException ex){
                out.print(ex.toString());
            }catch(Exception ex){
                out.print(ex.toString());
            }finally{
                if(con !=null){
                    try{
                        con.close();
                    }catch(Exception ex){
                        out.print(ex.getMessage());
                    }
                }
            }
        %>
    </body>
</html>
