
<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
    UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS変更画面</title>
    </head>
    <body>
    <form action="UpdateResult" method="POST">
        名前:
        <input type="text" name="name" value="<%= udb.getName() %>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="">----</option>
            <% for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"<% if(udb.getYear() == i){
                out.print("selected = \"selected\"");
            } %>><%=i%></option>
            <% } %>
        </select>年
        <select name="month">
            <option value="">--</option>
            <% for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"<% if(udb.getMonth() == i){
                out.print("selected = \"selected\"");
            } %>><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="">--</option>
            <% for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"<% if(udb.getDay()== i){
                out.print("selected = \"selected\"");
            } %>><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
            <% for(int i = 1; i<=3; i++){ %>
            <input type="radio" name="type" value="<%=i%>"<%if(udb.getType() == i){
                out.print("checked = \"checked\"");
            }%>><%=jh.exTypenum(i)%>
        <br>
            <% } %>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%= udb.getTell() %>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%= udb.getComment() %></textarea><br><br>
        <%--アクセスルートチェック--%>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="送信">
    </form>
        <form action="ResultDetail" method="POST">
        <%--アクセスルートチェック--%>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="resultdetail" value="詳細画面へ戻る">
        </form>
        <br>
        <%--トップページに戻る--%>
        <%=jh.home()%>
    </body>
</html>