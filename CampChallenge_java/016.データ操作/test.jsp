<%-- 
    Document   : test
    Created on : 2018/04/26, 17:14:51
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
        out.println(request.getParameter("userName"));
            %><br>
        <%out.println(request.getParameter("gender"));
        %><br>
        <%out.println(request.getParameter("hobby"));
            %>
            
    </body>
</html>
