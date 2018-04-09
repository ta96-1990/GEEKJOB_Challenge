<%-- 
    Document   : java-challenge8-4
    Created on : 2018/04/09, 14:08:09
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
            int total = 0;
            for(int i=0;i<=100;i++){
                total =total+i;
                
                
            }
        out.print(total);
        
        
        %>
    </body>
</html>
