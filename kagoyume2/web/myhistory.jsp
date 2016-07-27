<%-- 
    Document   : myhistory
    Created on : 2016/07/28, 0:13:58
    Author     : yoshikawatoshio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="jums.ShoppingData"%>
<%@page import="jums.UserData"%>
<%@page import="jums.JumsHelper"%>
<%
    HttpSession hs = request.getSession();
    ArrayList<ShoppingData> sdList = (ArrayList)hs.getAttribute("history");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>購入履歴ページ</title>
    </head>
    <body>
        <h1>購入商品履歴</h1>
        <table border="1">
            <tr>
                <th>商品名</th>
                <th>価格</th>
            </tr>
            <% for(int i = 0; i < sdList.size(); i++) { %>
            <tr>
                <th><%= sdList.get(i).getItemName() %></th>
                <th><%= sdList.get(i).getPrice() %> 円</th>
            </tr>
            <% } %>
                    </table>
    </body>
</html>
