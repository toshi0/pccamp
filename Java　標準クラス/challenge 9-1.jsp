<%-- 
    Document   : challenge ９
    Created on : 2016/07/01, 16:23:55
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.text.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>課題：基礎編</h1>
        １．2016年1月1日 0時0分0秒のタイムスタンプを作成し、表示してください。<br>
        <%
          //いったんカレンダーに渡して生成
        Calendar cal = Calendar.getInstance();
          cal.set(2016, 1, 1, 0, 0, 0);
          Date calpast = cal.getTime();
          out.println(calpast.getTime());  
        %>
        

    </body>
</html>
