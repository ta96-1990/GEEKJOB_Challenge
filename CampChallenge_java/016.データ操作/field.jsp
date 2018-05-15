<%-- 
    Document   : session_field
    Created on : 2018/05/10, 17:19:48
    Author     : honnd
--%>

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
        HttpSession name = request.getSession();
        HttpSession gender =request.getSession();
        HttpSession hobby = request.getSession();
        String getname = (String)name.getAttribute("userName");
        String getgender = (String)gender.getAttribute("gender");
        String gethobby = (String)hobby.getAttribute("hobby");
       if(getname==null){
            getname="";
        }
        if(getgender==null){
            getgender="";
        }
        if(gethobby==null){
            gethobby="";
        }
        /*out.println(getname);
        out.println(getgender);
        out.println(gethobby);*/
        %>
        <form action="field.jsp">
            名前:<input type="text" name="userName" value='<%= getname%>' placeholder="名前を入力してください"><br>
            性別:<input type="text" name="gender" value='<%= getgender%>' placeholder="性別を入力してください"><br>
            趣味:<input type="text" name="hobby" value='<%= gethobby%>' placeholder="趣味を入力してください"><br>
            <input type="submit" name="btnSubmit" value="決定">
            <%
            name.setAttribute("userName",request.getParameter("userName"));
            gender.setAttribute("gender",request.getParameter("gender"));
            hobby.setAttribute("hobby",request.getParameter("hobby"));
            %>
        </form>
    </body>
</html>
