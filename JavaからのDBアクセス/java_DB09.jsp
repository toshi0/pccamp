<%-- 
    Document   : java_DB09
    Created on : 2016/07/09, 23:42:01
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <form action="kadai09" method="post" >
            ＩＤ：<input type="number" name="id"><br><br>
            名前：<input type="text" name="name"><br><br>
            電話番号：<input type="text" name="tell"><br><br>
            年齢：<input type="number" name="age"><br><br>
            生年月日：<input type="date" name="birthday"><br><br>
            <input type="submit" value="送信"><br><br><br>
        </form>
    </body>
</html>
