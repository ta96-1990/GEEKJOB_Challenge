<%-- 
    Document   : java-challenge5-3
    Created on : 2018/04/06, 15:20:59
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
            char name = 'あ';
            switch(name){
                case 'A':
                    out.print("英語");
                    break;
                case 'あ':
                    out.print("日本語");
                    break;
            }
        
        %>
    </body>
</html>
