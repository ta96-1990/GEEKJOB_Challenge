<%-- 
    Document   : test1
    Created on : 2018/04/27, 11:07:16
    Author     : honnd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>ご感想ありがとうございます。入力内容は以下の通りです<br>
        <strong>名前</strong>:<%request.setCharacterEncoding("utf-8");
            out.print(request.getParameter("userName"));
        %><br>
        <strong>性別</strong>:<%out.print(request.getParameter("gender"));
        %><br>
        メールアドレス:<%out.print(request.getParameter("mailAddress"));
        %><br>
        <strong>血液型</strong>:<%out.print(request.getParameter("blood"));
        %><br>
        <a href="https://camp.geekjob.jp/"><font size="+1" color="red"><strong>お問い合わせはこちら</strong></font></a>
        
    </body>
</html>
