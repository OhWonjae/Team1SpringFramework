package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Cart;

@Mapper
public interface CartDao {
	public int insert(Cart cart);

	public Cart selectByUid(String uid);
		
}
