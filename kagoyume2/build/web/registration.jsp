<%-- 
    Document   : registration
    Created on : 2016/07/28, 0:06:35
    Author     : yoshikawatoshio
--%>

<%@page import="jums.UserData"%>
<%@page import="jums.JumsHelper"%>
<%
    HttpSession hs = request.getSession();
    UserData ud = null;
    boolean reinput = false;
    if(request.getParameter("mode") != null && request.getParameter("mode").equals("REINPUT")){
        reinput = true;
        ud = (UserData)hs.getAttribute("ud");
    } 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>新規登録ページ</title>
    </head>
    <body>
        <h1>ユーザー作成登録</h1>
        <form action="RegistrationConfirm" method="POST">
            ユーザー名: 
            <input type="text" name="name" value="<% if(reinput){out.print(ud.getName());}%>">
            <br><br>
            パスワード: 
            <input type="text" name="password" maxlength="10" placeholder="英数字10文字" value="<% if(reinput){out.print(ud.getPassword());}%>">
            <br><br>
            メールアドレス: 
            <input type="text" name="mail" value="<% if(reinput){out.print(ud.getMail());}%>">
            <br><br>
            住所: 
            <input type="text" name="address" value="<% if(reinput){out.print(ud.getAddress());}%>">
            <br><br>
            <%--アクセスルートチェック--%>
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="btnSubmit" value="確認画面へ">
        </form>
    </body>
</html>
