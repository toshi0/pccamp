/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
/**
 *
 * @author yoshikawatoshio
 */
public class Json {
    
    // YahooショッピングAPIのID・ベースURL・リクエストURL
    private static String APP_ID = "dj0zaiZpPUFXQzhLY1U0ajdXdSZzPWNvbnN1bWVyc2VjcmV0Jng9ZTY-";
    private static String BASE_URL = "http://shopping.yahooapis.jp/ShoppingWebService/V1/json/itemSearch";
    private static String CODE_URL = "http://shopping.yahooapis.jp/ShoppingWebService/V1/json/itemLookup";
        
    /**
     * Httpリクエストで検索ワードの結果を得るメソッド
     * @param query
     * @return 文字列での検索結果
     */
    public static String getResult(String query) {
        String result = "";
        try{
            URL url = new URL(BASE_URL +"?appid="+ APP_ID +"&query="+ query);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.connect();
            BufferedReader bf = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String tmp = "";
            while((tmp = bf.readLine()) != null) {
                result += tmp;
            }
        bf.close();
        con.disconnect();
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    /**
     * 文字列での検索結果をJsonオブジェクトに変換するメソッド
     * @param result
     * @return JsonNodeに変換した検索結果
     */
    public static JsonNode getJsonNode(String result) {
        JsonNode jn = null;
        try {
            JsonFactory jfactory = new JsonFactory();
            JsonParser parser = jfactory.createParser(result);
            
            ObjectMapper om = new ObjectMapper();
            jn = om.readTree(parser);
        }catch(Exception e) {
            e.printStackTrace();
        }
        return jn;
    }
    
    /**
     * ノードの値を取得し各商品情報をShoppingDataへ格納するメソッド
     * @param node
     * @param i
     * @return sd
     */
    public static ShoppingData ItemDetail(JsonNode node, int i) {
        ShoppingData sd = new ShoppingData();
        //取得したintをStringに変換
        String num = String.valueOf(i);
        
        JsonNode av = node.get("ResultSet").get("0").get("Result").get(num);
        sd.setCode(av.get("Code").textValue());
        sd.setItemName(av.get("Name").textValue());
        sd.setImage(av.get("Image").get("Medium").textValue());
        sd.setPrice(Integer.parseInt(av.get("Price").get("_value").textValue()));
        sd.setDescription(av.get("Description").textValue());
        sd.setReview(av.get("Review").get("Rate").textValue());
        
        return sd;
    }
    
    /**
     * 商品コードを用いてHttpリクエストで結果を得るメソッド
     * @param code
     * @return 検索結果
     */
    public static String SearchCode(String code) {
        String result = "";
        try{
            URL url = new URL(CODE_URL +"?appid="+ APP_ID +"&responsegroup=medium&itemcode=" + code);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.connect();
            BufferedReader bf = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String tmp = "";
            while((tmp = bf.readLine()) != null) {
                result += tmp;
            }
            bf.close();
            con.disconnect();
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
}
