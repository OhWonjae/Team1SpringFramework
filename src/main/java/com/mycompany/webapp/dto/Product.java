package com.mycompany.webapp.dto;

import java.util.Date;
import java.util.List;

public class Product {
   private int p_id;
   private String p_name;
   private int p_price;
   private int p_stock;
   private int p_salescount;
   private String p_categoryname;
   private Date p_upload_date;
   private String p_description;
   private List<Photo> photolist;
   
   
   
   
   public List<Photo> getPhotolist() {
	return photolist;
   }
	public void setPhotolist(List<Photo> photolist) {
		this.photolist = photolist;
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
   public String getP_categoryname() {
      return p_categoryname;
   }
   public void setP_categoryname(String p_categoryname) {
      this.p_categoryname = p_categoryname;
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

   // product 생성자 - 상품 생성을 위한 테스트 코드
//   public Product( String pname, int pprice, int pstock, int salescount, String categoryname, Date puploaddate, String pdescription ) {
//      this.pid = 1;
//      this.pname = pname;
//      this.pprice = pprice;
//      this.pstock = pstock;
//      this.salescount = salescount;
//      this.categoryname = categoryname;
//      this.puploaddate = puploaddate;
//      this.pdescription = pdescription;
//   }
   
   
   
   
}