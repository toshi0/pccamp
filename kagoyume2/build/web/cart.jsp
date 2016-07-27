<%-- 
    Document   : cart
    Created on : 2016/07/28, 0:33:44
    Author     : yoshikawatoshio
--%>

<%@page import="java.util.List"%>
<%@page import="jums.ShoppingData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jums.UserData"%>
<%@page import="jums.JumsHelper"%>
<%
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    List<ShoppingData> sdList= (ArrayList)hs.getAttribute("cart");
    
    //ログインのチェック
    boolean loginChk = false;
    UserData ud = (UserData)hs.getAttribute("userdata");
    if(ud != null) {
        loginChk =true;
    }
    
    //合計金額の初期値
    int total = 0;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>カートページ</title>
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
        <h1>カート</h1>
        <form action="BuyConfirm" method="POST">
        <table border="1">
            <tr>
                <th>サムネイル</th>
                <th>商品名</th>
                <th>価格</th>
            </tr>
            <% for (int i = 0; i < sdList.size(); i++) { %>
            <tr>
                <th><img src=<%= sdList.get(i).getImage() %>/></th>
                <th><a href="Item?code=<%= sdList.get(i).getCode() %>"><%=sdList.get(i).getItemName() %></a></th>
                <th><%= sdList.get(i).getPrice() %> 円</th>
                <th><a href="Cart?delete=<%=i%>">削除</a></th>
            </tr>
                <% total += sdList.get(i).getPrice(); %>
            <% } %>
        </table>
            <h3>合計金額： <%= total %>円</h3>
            <input type="submit" name="submit" value="購入する">
        </form>
    </body>
</html>
