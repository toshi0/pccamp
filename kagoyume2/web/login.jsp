<%-- 
    Document   : login
    Created on : 2016/07/28, 0:25:45
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ログインページ</title>
    </head>
    <body>
        <h1>ログイン</h1>
        <form action="Login" method="POST">
            <table border=1>
                <tr>
                    <th>ユーザー名</th>
                    <td><input type="text" name="name" style="width: 180px;"></td>
                </tr>
                <tr>
                    <th>パスワード</th>
                    <td><input type="text" name="pass" style="width: 180px;" placeholder="英数字4桁"></td>
                </tr>
            </table>
            <input type="submit" name="login" value="ログイン">
        </form>
        <p>はじめての方は<a href="Registration">こちら</a>から新規登録！</p>
    </body>
</html>
