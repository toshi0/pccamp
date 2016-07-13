<%-- 
    Document   : Product
    Created on : 2016/07/14, 0:48:44
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            //在庫管理システムを作成します。
            //まず、DBにユーザー情報管理テーブルと、商品情報登録テーブルを作成してください。
            //その上で、下記機能を実現してください。
            //①ユーザーのログイン・ログアウト機能
            //②商品情報登録機能
            //③商品一覧機能
            //※各テーブルの構成は各自の想像で作ってみてください。
            
            //登録、一覧、ログアウトの選択ページ
        %>
    </head>
    <body>
        <center>
            <br>
            <br>
        <a href="/JDBC/Registration.jsp">商品登録</a>
            <br>
            <br>
        <a href="/Database/List">商品一覧</a>
            <br>
            <br>
        <a href="/Database/Logout">ログアウト</a>
        </center>
    </body>
</html>
