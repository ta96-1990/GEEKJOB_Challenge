<%-- 
    Document   : java-challenge8-1
    Created on : 2018/04/09, 10:30:32
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
            long num = 8;
            
            for (long i=1;i<20;i++){
                num= num*8;
                
            }
            out.print(num);
            
        
        
        
        %>
    </body>
</html>
