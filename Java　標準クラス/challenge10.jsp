<%-- 
    Document   : challenge10
    Created on : 2016/07/06, 11:46:08
    Author     : yoshikawatoshio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.*"%>
<%@page import = "java.util.*"%>
<%@page import = "java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge10</title>
    </head>
    <body>
        <%
            File log = new File("/Applications/NetBeans/log.txt");
            //開始時間書き込み
            FileWriter fwstart = new FileWriter(log);
            Date starttime = new Date();
            SimpleDateFormat sdfs = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss:SSS");
            String sdate = sdfs.format(starttime);
            fwstart.write("プログラム開始時刻:" + sdate);
            fwstart.close();
            

            double n = 8.234;
            /*
            ceil  切り上げ
            floor 切り捨て
            round 四捨五入
            */
            System.out.println(Math.ceil(n));
            System.out.println(Math.floor(n));
            System.out.println(Math.round(n));
            
            System.out.println(Math.random());
            System.out.println(Math.PI);
            
             //終了時間書き込み
            FileWriter fwend = new FileWriter(log,true);
            Date endtime = new Date();
            SimpleDateFormat sdfe = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss:SSS");
            String edate = sdfe.format(endtime);
            fwend.write("プログラム終了時刻:"+edate);
            fwend.close();
            
            //ログファイル読み込み
            FileReader fr = new FileReader(log);
            BufferedReader br = new BufferedReader(fr);
            out.print(br.readLine()+"<br>");
            out.print(br.readLine()+"<br>");
            br.close();
             






        %>
    </body>
</html>
