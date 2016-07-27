/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;
import java.io.Serializable;
/**
 *ページで出力される商品情報を持ちまわるJavaBeans
 * @author yoshikawatoshio
 */
public class ShoppingData implements Serializable {
    
    private String query; //検索キーワード
    private String totalResult; //検索結果総数
    private String itemName; //商品名
    private String Code; //商品コード
    private int price; //価格
    private String image; //画像（サムネイル）
    private String description; //商品説明
    private String review; //評価
        
    public ShoppingData() {
        this.query = "";
        this.totalResult = "";
        this.itemName = "";
        this.Code = "";
        this.price = 0;
        this.image = "";
        this.description = "";
        this.review = "";       
    }
    
    public String getQuery() {
        return query;
    }
    public void setQuery(String query) {
        if(query == null) {
            this.query = "";
        }else {
            this.query = query;
        }
    }
    
    public String getTotalResult() {
        return totalResult;
    }
    public void setTotalResult(String totalResult) {
        if(totalResult == null) {
            this.totalResult = "";
        }else {
            this.totalResult = totalResult;
        }
    }
    
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        if(itemName == null) {
            this.itemName = "";
        }else {
            this.itemName = itemName;
        }
    }
    
    public String getCode() {
        return Code;
    }
    public void setCode(String Code) {
        if(Code == null) {
            this.Code = "";
        }else {
            this.Code = Code;
        }
    }
    
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        if(price == 0) {
            this.price = 0;
        }else {
            this.price = price;
        }
    }
    
    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        if(image == null) {
            this.image = "";
        }else {
            this.image = image;
        }
    }
    
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        if(description == null) {
            this.description = "";
        }else {
            this.description = description;
        }
    }
    
    public String getReview() {
        return review;
    }
    public void setReview(String review) {
        if(review == null) {
            this.review = "";
        }else {
            this.review = review;
        }
    }

}
