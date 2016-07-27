<%-- 
    Document   : myupdateresult
    Created on : 2016/07/28, 0:07:54
    Author     : yoshikawatoshio
--%>

<%@page import="jums.JumsHelper"%>
<%@page import="jums.UserData"%>
<%
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    UserData ud = (UserData)hs.getAttribute("userdata");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kagoyumeユーザー更新完了ページ</title>
    </head>
    <body>
        <h1>更新結果</h1>
        名前:<%= ud.getName()%><br>
        パスワード: <%= ud.getPassword()%><br>
        メールアドレス: <%= ud.getMail()%><br>
        住所: <%= ud.getAddress()%><br><br>
        以上の内容で変更しました。<br>
        <HR>
        <%--トップページ--%>
        <%= jh.home()%>
    </body>
</html>
