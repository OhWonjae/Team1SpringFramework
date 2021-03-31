package com.mycompany.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.dto.CartItem;

@Service
public class CartsService {

	@Autowired
	private CartDao cartDao;
	
	public List<CartItem> getCartList(int uid){ 
		List<CartItem> list = cartDao.cartList(uid);
		return list;
	}
	
	public void plusAmount(int uid, int pid) {
		cartDao.increaseAmount(uid, pid);
	}
	
	public void minusAmount(int uid, int pid) {
		cartDao.decreaseAmount(uid, pid);
	}
	
	public void removeCartList(int uid, int pid) {
		cartDao.deleteCart(uid, pid);
	}
	
	public void removeCartAll(int uid) {
		cartDao.deleteCartAll(uid);
	}
	
	public void addCart(int pid) {
		cartDao.insertCart(pid);
	}

}
