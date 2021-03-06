package com.mycompany.webapp.dto;

import java.util.Date;
import java.util.List;

public class Product {
 


private int p_id;
private String p_name;
private int p_rate;
   private int p_price;
   private int p_stock;
   private int p_salescount;
   private String p_category_name;
   private Date p_upload_date;
   private String p_description;


   private List<Photo> photolist;
   private List<Review> reviewlist;
   private List<SizeProduct> sizelist;
  
   @Override
   public String toString() {
   	return "Product [p_id=" + p_id + ", p_name=" + p_name + ", p_price=" + p_price + ", p_stock=" + p_stock
   			+ ", p_salescount=" + p_salescount + ", p_category_name=" + p_category_name + ", p_upload_date="
   			+ p_upload_date + ", p_description=" + p_description + ", photolist=" + photolist + ", reviewlist="
   			+ reviewlist + ", sizelist=" + sizelist + "]";
   }
public int getP_id() {
	return p_id;
}
public void setP_id(int p_id) {
	this.p_id = p_id;
}
public String getP_name() {
	return p_name;
}
public void setP_name(String p_name) {
	this.p_name = p_name;
}
public int getP_price() {
	return p_price;
}
public void setP_price(int p_price) {
	this.p_price = p_price;
}
public int getP_stock() {
	return p_stock;
}
public void setP_stock(int p_stock) {
	this.p_stock = p_stock;
}
public int getP_salescount() {
	return p_salescount;
}
public void setP_salescount(int p_salescount) {
	this.p_salescount = p_salescount;
}
public String getP_category_name() {
	return p_category_name;
}
public void setP_category_name(String p_category_name) {
	this.p_category_name = p_category_name;
}
public Date getP_upload_date() {
	return p_upload_date;
}
public void setP_upload_date(Date p_upload_date) {
	this.p_upload_date = p_upload_date;
}
public String getP_description() {
	return p_description;
}
public void setP_description(String p_description) {
	this.p_description = p_description;
}
public int getP_rate() {
	return p_rate;
}
public void setP_rate(int p_rate) {
	this.p_rate = p_rate;
}
public List<Photo> getPhotolist() {
	return photolist;
}
public void setPhotolist(List<Photo> photolist) {
	this.photolist = photolist;
}
public List<Review> getReviewlist() {
	return reviewlist;
}
public void setReviewlist(List<Review> reviewlist) {
	this.reviewlist = reviewlist;
}
public List<SizeProduct> getSizelist() {
	return sizelist;
}
public void setSizelist(List<SizeProduct> sizelist) {
	this.sizelist = sizelist;
}
//   public Product(int p_id, String p_name, int p_price, int p_stock, int p_salescount, String p_category_name, Date p_upload_date, String p_description, int p_rate) 
//   {
//	   this.p_id=p_id;
//	this.p_name = p_name;
//	this.p_price = p_price;
//	this.p_stock = p_stock;
//	this.p_salescount = p_salescount;
//	this.p_category_name = p_category_name;
//	this.p_upload_date = p_upload_date;
//	this.p_description = p_description;
//	this.p_rate=p_rate;
//}

   
   
   
}