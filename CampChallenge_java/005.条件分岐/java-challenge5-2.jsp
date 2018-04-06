<%-- 
    Document   : java-challenge5-2
    Created on : 2018/04/06, 13:56:05
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
            int num = 3;
            switch(num){
                case 1:
                    out.print("one");
                case 2:
                    out.print("two");
                default:
                    out.print("想定外");
            }
            
            
        
        %>
    </body>
</html>
