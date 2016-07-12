
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--課題１-->
<%@page import="jums.JumsHelper" %>
<!--課題１-->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
    </head>
    <body>
        エラーが発生しました。以下の項目を確認してください。<br>
        <%=request.getAttribute("error")%>
        <br>
        
        <!--課題１-->
        <%=JumsHelper.getInstance().home()%>
        <!--課題１-->

    </body>
</html>
