<%-- 
    Document   : challenge 9-2
    Created on : 2016/07/01, 17:16:06
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
        <h1></h1>
        <br>２．現在の日時を「年-月-日 時:分:秒」で表示してください。<br>
        <%//Date型の値(現在時刻情報)の取得
            
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyy年MM月dd日HH時:mm分:ss秒");
            String sdate = sdf.format(date);
            out.println(sdate); 
        %>
        <br>３．2016年11月4日 10時0分0秒のタイムスタンプを作成し、「年-月-日 時:分:秒」で表示してください。<br>
        <%
            Calendar cal = Calendar.getInstance();
            cal.set(2016, 11, 4, 10, 0, 0);
            Date calpast = cal.getTime();
             out.println(cal.getTime()+"<br>");
             
             int yy = cal.get(Calendar.YEAR);
             int MM = cal.get(Calendar.MONTH);
             int dd = cal.get(Calendar.DAY_OF_MONTH);
             int HH = cal.get(Calendar.HOUR);
             int mm = cal.get(Calendar.MINUTE);
             int ss = cal.get(Calendar.SECOND);
             out.print(yy+"年-"+MM+"月-"+dd+"日 "+HH+"時:"+mm+"分:"+ss+"秒");
            
        %>

       
        
    </body>
</html>
