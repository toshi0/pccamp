<%-- 
    Document   : challenge 9-9
    Created on : 2016/07/04, 14:14:28
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.text.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <br>９．ファイルから自己紹介を読み出し、表示してください。<br>
        <%
            File file = new File(application.getRealPath("test.txt"));
            FileReader test = new FileReader(file);
            BufferedReader text = new BufferedReader(test);
            String str;
            while((str = text.readLine()) != null){
            
            out.println(str+"<br>");
            }
            

        %>
        
    </body>
</html>
