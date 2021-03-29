package com.mycompany.webapp.dto;


public class Cart {   
   private int cid;
   private String camount;
   private Product product;
   private User user;
   private Photo photo;
   public int getCid() {
      return cid;
   }	
   public void setCid(int cid) {
      this.cid = cid;
   }
   public String getCamount() {
      return camount;
   }
   public void setCamount(String camount) {
      this.camount = camount;
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
