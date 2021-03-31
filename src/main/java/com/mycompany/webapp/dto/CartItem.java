package com.mycompany.webapp.dto;


public class CartItem {   
   private int amount;
   private String p_size;
   private int user_id;
   private int p_id;
   private Product product;
   private User user;
   private Photo photo;
   
public int getAmount() {
   return amount;
}
public void setAmount(int amount) {
   this.amount = amount;
}
public String getP_size() {
   return p_size;
}
public void setP_size(String p_size) {
   this.p_size = p_size;
}
public int getUser_id() {
   return user_id;
}
public void setUser_id(int user_id) {
   this.user_id = user_id;
}
public int getP_id() {
   return p_id;
}
public void setP_id(int p_id) {
   this.p_id = p_id;
}
public Product getProduct() {
   return product;
}
public void setProduct(Product product) {
   this.product = product;
}
public User getUser() {
   return user;
}
public void setUser(User user) {
   this.user = user;
}
public Photo getPhoto() {
   return photo;
}
public void setPhoto(Photo photo) {
   this.photo = photo;
}
   
   
   

}