package com.mycompany.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.dto.Pager;

@Service
public class CartsService {

	@Autowired
	private CartDao cartDao;
	
	//전체 카트 List
	public List<CartItem> getCartList(String uid){ 
		List<CartItem> list = cartDao.cartList(uid);
		return list;
	}
	
	//전체 카트List를 페이저를 이용해서 가져오기
	public List<CartItem> getCartList(String uid, Pager pager){
		List<CartItem> list = cartDao.cartListByPage(uid, pager);
		return list;
	}
	
	//개별 상품 정보 얻기
	public CartItem getCartOne(String uid, int pid, String psize) {
		CartItem cartitem =cartDao.cartListOne(uid, pid, psize);
		return cartitem;
	}
	// 전체 Row개수
	public int getTotalRows(String uid) {
	     int rows = cartDao.count(uid);
	     return rows;
	}
	
	//개별 상품 수량 증가
	public void plusAmount(String uid, int pid, String psize) {
		cartDao.increaseAmount(uid, pid, psize);
	}
	
	//개별 상품 수량 감소
	public void minusAmount(String uid, int pid, String psize) {
		cartDao.decreaseAmount(uid, pid, psize);
	}
	
	//개별 상품 지우기
	public void removeCartList(String uid, int pid, String psize) {
		cartDao.deleteCart(uid, pid, psize);
	}
	
	//카트 전부 비우기
	public void removeCartAll(String uid) {
		cartDao.deleteCartAll(uid);
	}
	
	public void addCart(CartItem cart) {
		cartDao.insertCart(cart);
	}
	
}
