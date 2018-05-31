<%-- 
    Document   : insetform
    Created on : 2018/05/31, 13:21:02
    Author     : honnd
--%>

<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = null;
            PreparedStatement ps = null;
            String url = "jdbc:mysql://localhost:3306/Challenge_db";
            String user = "ta96";  
            String pass = "296019900918";
            String sql = "insert into profiles (profileID,name,tel,age,birthday) values (?,?,?,?,?)";
            String idstring = request.getParameter("id");
            int id = Integer.parseInt(idstring);
            String name = request.getParameter("name");
            String tel = request.getParameter("tel");
            String agestring = request.getParameter("age");
            int age = Integer.parseInt(agestring);
            String birth = request.getParameter("birth");
           try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
            ps = con.prepareStatement(sql);
            ps.setInt(1,id);
            ps.setString(2,name);
            ps.setString(3,tel);
            ps.setInt(4,age);
            ps.setString(5,birth);
            out.println("挿入が完了しました。");
        }catch(Exception e){
        }
           %><br>
        <a href="select.jsp">インサート先のテーブルを表示する</a>
    </body>
</html>
