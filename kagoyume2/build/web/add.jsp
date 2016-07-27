<%-- 
    Document   : add
    Created on : 2016/07/28, 0:42:14
    Author     : yoshikawatoshio
--%>

<%@page import="jums.UserData"%>
<%@page import="jums.JumsHelper"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    
     //ログインのチェック
    boolean loginChk = false;
    HttpSession hs = request.getSession();
    UserData ud = (UserData)hs.getAttribute("userdata");
    if(ud != null) {
        loginChk =true;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>カート追加ページ</title>
    </head>
    <body>
        <%if(loginChk) {%>
        <%--ユーザー情報・ログアウト・カート--%>
        <p>ようこそ <a href="MyData"><%=ud.getName()%></a> さん</p>
        <%=jh.logout()%><br>
        <%=jh.cart()%><br>
    <% }else { %>
        <%--ログインページ・新規登録--%>
        <%=jh.login()%><br>
        <%=jh.register()%><br>
    <% } %>
    <HR>
        <h1>カート追加</h1>
        <h3>カートに追加しました</h3> <br>
          <a href="top.jsp">トップページへ戻る</a>
    </body>
</html>
