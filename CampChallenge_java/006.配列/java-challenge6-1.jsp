<%-- 
    Document   : java-challenge6
    Created on : 2018/04/06, 16:18:44
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
        <%@ page import="java.util.ArrayList"%>
        <%
            ArrayList<String> date = new ArrayList<String>();
            date.add("10");
            date.add("100");
            date.add("soeda");
            date.add("hayasi");
            date.add("-20");
            date.add("118");
            date.add("END");
            out.print(date.get(0));
            out.print(date.get(1));
            out.print(date.get(2));
            out.print(date.get(3));
            out.print(date.get(4));
            out.print(date.get(5));
            out.print(date.get(6));
            
        
        %>
    </body>
</html>
