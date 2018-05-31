<%-- 
    Document   : select
    Created on : 2018/05/31, 11:04:02
    Author     : honnd
--%>
<%@ page import="java.sql.*;"%>
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
            String url = "jdbc:mysql://localhost:3306/Challenge_db";
            String user = "ta96";
            String pass = "296019900918";
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(url,user,pass);
                Statement st = con.createStatement();
                String sql = "select * from profiles";
                ResultSet rs = st.executeQuery(sql);
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
                st.close();
            }catch(ClassNotFoundException e){
                
            } catch (SQLException e){

            } catch (Exception e){

            }finally{
            try{
                if(con !=null);{
               con.close();
            }
            }catch(SQLException e){

            }
            }
        %>
    </body>
</html>
