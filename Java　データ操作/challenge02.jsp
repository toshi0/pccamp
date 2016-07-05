<%-- 
    Document   : challenge02
    Created on : 2016/07/04, 17:48:28
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge02</title>
    </head>
    <body>
       <%
           request.setCharacterEncoding("UTF-8");
           
           String n = request.getParameter("name");
           String r = request.getParameter("sex");
           String m = request.getParameter("textarea");
            
           out.print("名前："+ n +"<br>性別："+ r +"<br>"+ m +"<br>");
       
       %>
    </body>
</html>
