<%-- 
    Document   : java-challenge7
    Created on : 2018/04/09, 9:56:53
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
        <%@ page import ="java.util.HashMap"%>
        
        <%
            HashMap<String,String> profile = new HashMap<String,String>();
            
            profile.put("1","AAA");
            profile.put("hello", "world");
            profile.put("soeda", "33");
            profile.put("20", "20");
            out.print("1");
           
        
        %>
    </body>
</html>
