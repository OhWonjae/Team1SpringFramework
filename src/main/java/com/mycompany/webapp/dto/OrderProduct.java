package com.mycompany.webapp.dto;

import java.util.Date;

public class OrderProduct {
   private int order_id;
   private int p_id;
   private int p_price;
   private String p_name;
   private String p_size;
   
   public int getOrder_id() {
      return order_id;
   }
   public void setOrder_id(int order_id) {
      this.order_id = order_id;
   }
   public int getP_id() {
      return p_id;
   }
   public void setP_id(int p_id) {
      this.p_id = p_id;
   }
   public int getP_price() {
      return p_price;
   }
   public void setP_price(int p_price) {
      this.p_price = p_price;
   }
   public String getP_name() {
      return p_name;
   }
   public void setP_name(String p_name) {
      this.p_name = p_name;
   }
   public String getP_size() {
      return p_size;
   }
   public void setP_size(String p_size) {
      this.p_size = p_size;
   }
   public String getDelivery_Status() {
      return delivery_Status;
   }
   public void setDelivery_Status(String delivery_Status) {
      this.delivery_Status = delivery_Status;
   }
   private String delivery_Status;
   
   
   
   
   
   
}