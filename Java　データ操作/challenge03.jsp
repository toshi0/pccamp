<%-- 
    Document   : challenge03
    Created on : 2016/07/05, 10:29:54
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "javax.servlet.http.Cookie" %>
<%@page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge04</title>
    </head>
    <body><br>3.クッキーに現在時刻を記録し、次にアクセスした際に、前回記録した日時を表示してください。<br>
        <%
            Date time = new Date();
            Cookie cookie = new Cookie("LastLogin",time.toString());
            response.addCookie(cookie);
             
            //次の訪問で。。。
            Cookie cs[] = request.getCookies();
            if (cs != null){
            for (int i=0; i<cs.length; i++){
            if (cs[i].getName().equals("LastLogin")){
            out.print("最後のログインは、" +cs[i].getValue());
            break;
            }
           }
          }
        %>
    </body>
</html>
