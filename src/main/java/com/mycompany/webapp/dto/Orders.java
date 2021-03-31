package com.mycompany.webapp.dto;

import java.util.Date;

public class Orders {
   private int order_id;
   private Date order_date;
   private String order_request;
   private int total_price;
   private String payment;
   private String delivery_address;
   private String delivery_address_detail;
   private int zip;
   private int user_id;
   private String order_name;
   private int order_phone;
   public int getOrder_id() {
      return order_id;
   }
   public void setOrder_id(int order_id) {
      this.order_id = order_id;
   }
   public Date getOrder_date() {
      return order_date;
   }
   public void setOrder_date(Date order_date) {
      this.order_date = order_date;
   }
   public String getOrder_request() {
      return order_request;
   }
   public void setOrder_request(String order_request) {
      this.order_request = order_request;
   }
   public int getTotal_price() {
      return total_price;
   }
   public void setTotal_price(int total_price) {
      this.total_price = total_price;
   }
   public String getPayment() {
      return payment;
   }
   public void setPayment(String payment) {
      this.payment = payment;
   }
   public String getDelivery_address() {
      return delivery_address;
   }
   public void setDelivery_address(String delivery_address) {
      this.delivery_address = delivery_address;
   }
   public String getDelivery_address_detail() {
      return delivery_address_detail;
   }
   public void setDelivery_address_detail(String delivery_address_detail) {
      this.delivery_address_detail = delivery_address_detail;
   }
   public int getZip() {
      return zip;
   }
   public void setZip(int zip) {
      this.zip = zip;
   }
   public int getUser_id() {
      return user_id;
   }
   public void setUser_id(int user_id) {
      this.user_id = user_id;
   }
   public String getOrder_name() {
      return order_name;
   }
   public void setOrder_name(String order_name) {
      this.order_name = order_name;
   }
   public int getOrder_phone() {
      return order_phone;
   }
   public void setOrder_phone(int order_phone) {
      this.order_phone = order_phone;
   }



   
}