<%-- 
    Document   : item_login
    Created on : 2018/06/26, 11:25:57
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
            String form_id = request.getParameter("userid");
            String form_pass = request.getParameter("password");
            Connection con = null;
            String url = "jdbc:mysql://localhost:3306/Challenge_db";
            String user = "ta96";  
            String pass = "296019900918";
            ResultSet rs = null;
            PreparedStatement ps = null;
            String sql = "select * from user_data";
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(url,user,pass);
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                int num = 0;
                while(rs.next()){
                    if(form_id.equals(rs.getString("userID"))){
                        if(form_pass.equals(rs.getString("password"))){
                            num = 1;
                            out.print("ログインに成功しました。");%>
                            <br><a href="item_userpage.html">ユーザーページに移動。</a>
                        <% break;}else{
                            num=2;
                            }
                    }
                }
                    if(num==0){
                            out.print("ログインに失敗しました。useIDが間違っています。");%>
                            <br><a href="item_form.html">ログインフォームに戻る</a>
                        <%
                        } else if(num==2){
                            out.print("ログインに失敗しました。passwordが間違っています。");%>
                            <br><a href="item_form.html">ログインフォームに戻る</a>
                        <%
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
