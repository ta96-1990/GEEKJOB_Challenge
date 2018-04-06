<%-- 
    Document   : java-challenge3
    Created on : 2018/04/06, 13:00:11
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
           int num1 = 10;
           final int num2 = 7;
           int minus = num1 - num2;
           out.print(minus);
        %>
    </body>
</html>
