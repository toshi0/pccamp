
<%@page import="jums.JumsHelper" %>
<%@page import="jums.UserDataDTO" %>
<%@page import="java.util.ArrayList" %>
<%
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    //値を使い回すList
    ArrayList<UserDataDTO> uddList = (ArrayList<UserDataDTO>)request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
    </head>
    <body>
        <h1>検索結果</h1>
        <table border=1>
            <tr>
                <th>名前</th>
                <th>生年</th>
                <th>種別</th>
                <th>登録日時</th>
            </tr>
            <%--検索結果が複数あるパターンの処理--%>
            <% for(int i = 0; i < uddList.size(); i++) { %>
            <tr>
                <td><a href="ResultDetail?id=<%= uddList.get(i).getUserID()%>&ac=<%= hs.getAttribute("ac")%>">
                        <%= uddList.get(i).getName()%></a></td>
                <td><%= uddList.get(i).getBirthday() %></td>
                <td><%= jh.exTypenum(uddList.get(i).getType()) %></td>
                <td><%= uddList.get(i).getNewDate() %></td>
            </tr>
            <% } %>
        </table>
        <br>
        <%--トップページに戻る--%>
        <%=jh.home()%>
    </body>
</html>
