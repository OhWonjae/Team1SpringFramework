package com.mycompany.webapp.dto;


public class Cart {	
	private int cart_id;
	private String cart_amount;
	private Product product;
	private User user;
	private Photo photo;
	
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getCart_amount() {
		return cart_amount;
	}
	public void setCart_amount(String cart_amount) {
		this.cart_amount = cart_amount;
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

