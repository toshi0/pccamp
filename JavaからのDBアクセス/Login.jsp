<%-- 
    Document   : Login
    Created on : 2016/07/14, 0:46:12
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
            
            //ログイン画面
        %>
    </head>
    <body>
    <form action="/Database/LoginCheck" method="post">
        <center>
            <br>
            <br>
        <h1>— ログインしてください —</h1>
            <br>
            <br>
        ユーザー名：<input type="text" name="Name" />
        <font size="-1" style="color:#999">漢字入力</font>
            <br>
            <br>
        パスワード：<input type="password" name="Pass"/>
        <font size="-1" style="color:#999">英数字４桁</font>
            <br>
            <br>
        <input type="submit" value="ログイン">
        </center>
    </form>
    </body>
</html>
