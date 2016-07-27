/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

/**
 *
 * @author yoshikawatoshio
 */
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

/**
 *ログ処理を簡略化するためのクラス。
 * @author 1999itukinao
 */
class Log {
    
    public static Log getInstance() {
        return new Log();
    }
    
    public void logtext(String log) {
        File filepath = null;
        FileWriter fw = null;
        Date date = new Date();
        try{
            //ファイルをセット
            filepath = new File("C:\\develop\\Kagoyume2\\web\\WEB-INF\\log\\log.txt");
            //ログファイルに追加
            fw = new FileWriter(filepath, true);
            //日時を書き込む
            fw.write(log+ "(" +date+ ")--" );
            //書き込みの終了
            fw.flush();
        }catch (IOException e) {
            System.out.print(e.getMessage());
        }
    }
        
}
