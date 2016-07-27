<%-- 
    Document   : buyconfirm
    Created on : 2016/07/28, 0:38:41
    Author     : yoshikawatoshio
--%>

<%@page import="jums.UserData"%>
<%@page import="java.util.List"%>
<%@page import="jums.ShoppingData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jums.JumsHelper"%>
<%
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    UserData ud = (UserData)hs.getAttribute("userdata");
    List<ShoppingData> sdList= (ArrayList)hs.getAttribute("cart");
    
    //合計金額の初期値
    int total = 0;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>購入確認ページ</title>
    </head>
    <body>
        <h1>購入確認</h1>
        <table border="1">
            <tr>
                <th>商品名</th>
                <th>価格</th>
            </tr>
            <% for (int i = 0; i < sdList.size(); i++) { %>
            <tr>
                <th><%= sdList.get(i).getItemName() %></th>
                <th><%= sdList.get(i).getPrice() %> 円</th>
            </tr>
                <% total += sdList.get(i).getPrice(); %>
            <% } %>
        </table>
            <h3>合計金額： <%= total %>円</h3>
            <form action="BuyComplete?total=<%= total %>" method="POST">
            発送方法:
            <br>
            <% for(int i = 1; i<=3; i++){ %>
            <input type="radio" name="type" value="<%=i%>"><%= jh.exTypenum(i) %><br>
            <% } %>
            <br>
            <input type="hidden" name="id" value="<%= ud.getUserID() %>">
            <input type="submit" name="submit" value="上記の内容で購入する">
        </form>
        <form action="Cart" method="POST">
            <input type="submit" name="back" value="カートに戻る">
        </form>
    </body>
</html>
