<%-- 
    Document   : index
    Created on : 2016/07/07, 16:54:06
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
      HttpSession s = request.getSession(true);
        String n = ( String ) s.getAttribute("Name5");
        String g = ( String ) s.getAttribute("Gender5");
        String h = ( String ) s.getAttribute("Hobby5");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  
        <%
        out.print( "課題５<br>" );
        out.print( "名前：" + n +"<br>" );
        out.print( "性別：" + g +"<br>" );
        out.print( "趣味：" + h +"<br><br>" );
        %>
                
                <form action="Dataoperation" method="get">
            <input type="submit" value="戻る" ><br><br>
        </form>
    </body>
</html>
