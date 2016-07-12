
<!--課題１-->
<%@page import="jums.JumsHelper" %>
<!--課題１-->

<!--課題３-->
<%@ page import="jums.UserDataBeans" %> 
<!--課題３-->

<%@page import="javax.servlet.http.HttpSession" %>


<%
    HttpSession hs = request.getSession(); 
    UserDataBeans beans = new UserDataBeans();
    if(hs.getAttribute("beans") != null){
      beans = (UserDataBeans)hs.getAttribute("beans");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <% if(beans.getName().equals("")){%>
            <input type="text" name="name" value="">
            <br><br>
        
        <% }else{%>
            <input type="text" name="name" value="<%=beans.getName()%>">
            <br><br>
        <% }%>
        
        生年月日:
        <% if(beans.getYear().equals("")){%>
            <select name="year">
            <option value="">----</option>
        <% for(int i=1940; i<=2010; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
        <% } %>
            </select>年

        <% }else{%>
            <select name="year">
        <%
          int yeari = Integer.parseInt(beans.getYear());
          for(int i=1950; i<=2010; i++){
          if(i == yeari){
        %>
            <option value="<%=beans.getYear()%>" selected> <%=beans.getYear()%> </option>
        <% }else{%>
            <option value="<%=i%>"> <%=i%> </option>
        <% }%>
        <% }%>
            </select>年
        <% }%>


        <% if(beans.getMonth().equals("")){%>
            <select name="month">
            <option value="">--</option>
        <%for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
        <% }%>
            </select>月

        <% }else{%>
            <select name="month">
        <%
          int monthi = Integer.parseInt(beans.getMonth());
          for(int i=1; i<=12; i++){
          if(i == monthi){
        %>
            <option value="<%=beans.getMonth()%>" selected> <%=beans.getMonth()%> </option>
        <% }else{%>
            <option value="<%=i%>"> <%=i%> </option>
        <% }%>
        <% } %>
            </select>月
        <%}%>


        <%if(beans.getDay().equals("")){%>
            <select name="day">
            <option value="">--</option>
        <%for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
        <% } %>
            </select>日

        <%}else{%>
            <select name="day">
        <%
          int dayi = Integer.parseInt(beans.getDay());
          for(int i=1; i<=30; i++){
          if(i == dayi){
        %>
            <option value="<%=beans.getDay()%>" selected> <%=beans.getDay()%> </option>
        <% }else{%>
            <option value="<%=i%>"> <%=i%> </option>
        <% }%>
        <% }%>
            </select>年
        <% }%>
            <br><br>

        種別:
        <br>
        <% if(beans.getType().equals("")){%>
            <input type="radio" name="type" value="1" checked>エンジニア<br>
            <input type="radio" name="type" value="2">営業<br>
            <input type="radio" name="type" value="3">その他<br>
        <% }else{ if(beans.getType().equals("1")){%>
            <input type="radio" name="type" value="1" checked>エンジニア<br>
            <input type="radio" name="type" value="2">営業<br>
            <input type="radio" name="type" value="3">その他<br>
        <% }else if(beans.getType().equals("2")){%>
            <input type="radio" name="type" value="1">エンジニア<br>
            <input type="radio" name="type" value="2" checked>営業<br>
            <input type="radio" name="type" value="3">その他<br>
        <% }else{%>
            <input type="radio" name="type" value="1">エンジニア<br>
            <input type="radio" name="type" value="2">営業<br>
            <input type="radio" name="type" value="3" checked>その他<br>
        <% }%>
        <% }%>

        <br>

        電話番号:
        <% if(beans.getTell().equals("")){%>
            <input type="text" name="tell" value="">
        <% }else{%>
            <input type="text" name="tell" value="<%=beans.getTell()%>">
        <% }%>

        <br><br>

        自己紹介文
        <br>
        <% if(beans.getComment().equals("")){%>
            <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"></textarea>
        <% }else{ %>
            <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%=beans.getComment()%></textarea>
        <% }%>
        <br><br>
        
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        
        <!--課題１-->
        <%=JumsHelper.getInstance().home()%>
        <!--課題１-->
        
    </body>
</html>