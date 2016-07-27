<%-- 
    Document   : top
    Created on : 2016/07/27, 23:58:46
    Author     : yoshikawatoshio
--%>
<%@page import="jums.JumsHelper"%>
<%@page import="jums.UserData"%>

<%
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    UserData ud = (UserData)hs.getAttribute("userdata");
    
    //検索キーワードの入力チェック
    boolean keyword = false;
    if(request.getAttribute("empty") != null) {
        keyword = true;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>トップページ</title>
</head>
<body>
    <h1>カゴユメ!</h1>
  
    <%if(hs.getAttribute("userdata") == null) {%>
        <%--ログインページ・新規登録--%>
        <%=jh.login()%><br>
        <%=jh.register()%>
    <% }else { %>
    <%--ユーザー情報・ログアウト・カート--%>
        <p>ようこそ <a href="MyData"><%=ud.getName()%></a> さん</p>
        <%=jh.logout()%><br>
        <%=jh.cart()%>
    <% } %>
    <HR>
    <br>
    <form action="Search" method="GET">
        キーワード検索：<input type="text" name="query">
        <input type="submit" name="btnSubmit" value="検索">
    </form>
</body>
</html>
