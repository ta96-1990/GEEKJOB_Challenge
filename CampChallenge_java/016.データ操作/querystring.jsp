<%-- 
    Document   : querystring
    Created on : 2018/05/10, 13:13:19
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
        request.setCharacterEncoding("utf-8");
        int type =Integer.parseInt(request.getParameter("type"));
        out.print("お選びになった商品は");
        if(type==1){
            out.print("雑貨");
        }else if(type==2){
            out.print("生鮮食品");
        }else{
            out.print("その他");
        }
        out.println("カテゴリの商品です。");%><br><%
        int count = Integer.parseInt(request.getParameter("count"));
        int total = Integer.parseInt(request.getParameter("total"));
        out.print("今回の購入総額によって付与されたポイントは");
        if(total<3000){
            out.print("ありません。");
        }else if(total<5000){
            double i=total*0.04;
            int num =(int)i;
            out.print(num+"です。");
        }else{
            double i=total*0.05;
            int num =(int)i;
            out.print(num+"です。");
        }
        %>
    </body>
</html>
