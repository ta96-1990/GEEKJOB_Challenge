<%-- 
    Document   : java_challenge16_5
    Created on : 2018/05/01, 10:52:27
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
        <%request.setCharacterEncoding("utf-8");
        if(request.getParameter("numX")==""){
            out.print("数値を入力してください");
        }else{
            int numX = Integer.parseInt(request.getParameter("numX"));
            int X = numX;
            int count1=0;
            int count2=0;
            int count3=0;
            int count4=0;
        for(int i=0;i<10;i++){
            if(numX%2==0){
                numX/=2;
            }else{
                break;
            }
            count1+=1;
            }
        for(int i=0;i<10;i++){
            if(numX%3==0){
                numX/=3;
            }else{
                break;
            }
            count2+=1;
            }
        for(int i=0;i<10;i++){
            if(numX%5==0){
                numX/=5;
            }else{
                break;
            }
            count3+=1;
            }
        for(int i=0;i<10;i++){
            if(numX%7==0){
                numX/=7;
            }else{
                break;
            }
            count4+=1;
            }
            
            out.print(X+"="+2+"^"+count1+"*"+3+"^"+count2+"*"+5+"^"+count3+"*"+7+"^"+count4+"です。");
        }
            
        %>
    </body>
</html>
