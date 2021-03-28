package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Cart;


@Mapper
public interface CartDao {
	public int insert(Cart cart);
	public int selectProduct(int pid, int uid);
	public int deleteCart(int pid, int uid);
	public int updateCartAmount(int pid, int uid);

	
		
}
