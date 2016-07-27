<%-- 
    Document   : mydata
    Created on : 2016/07/28, 0:19:51
    Author     : yoshikawatoshio
--%>

<%@page import="jums.UserData"%>
<%
    HttpSession hs = request.getSession();
    UserData ud = (UserData)hs.getAttribute("userdata");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ユーザー情報ページ</title>
    </head>
    <body>
        <a href="Myhistory">購入履歴</a>
        <HR>
        <h1>ユーザー情報管理</h1>
        名前: <%= ud.getName()%><br>
        パスワード: <%= ud.getPassword()%><br>
        メールアドレス: <%= ud.getMail()%><br>
        住所: <%= ud.getAddress()%><br>
        登録日時：<%= ud.getNewDate() %><br>
        <br>
        <form action="MydataUpdate" method="POST">
            <%--アクセスルートチェック--%>
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="login" value="ユーザー情報の更新">
        </form>
        <form action="Mydelete" method="POST">
            <%--アクセスルートチェック--%>
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="login" value="ユーザー情報の削除">
        </form>        
    </body>
</html>
