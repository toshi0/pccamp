<%-- 
    Document   : Registration
    Created on : 2016/07/14, 0:50:15
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
            
            //商品情報登録画面
        %>
    </head>
    <body>
    <form action="/Database/Registration" method="post">
        <center>
            <br>
            <br>
        <h1>— 商品情報登録 —</h1>
            <br>
            <br>
        商品名：<input type="text" name="Name"/>
            <br>
            <br>
        価格：<input type="text" name="Price"/>円
            <br>
            <br>
        <input type="submit" value="登録">
            <br>
            <br>
        <a href="/Database/Logout">ログアウト</a>
        </center>
    </form>
    </body>
</html>
