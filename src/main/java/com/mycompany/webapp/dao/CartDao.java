package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.CartItem;


@Mapper
public interface CartDao {
	public int insertCart(CartItem cart);
	public int deleteCart(@Param("uid") String uid, @Param("pid") int pid);
	public int deleteCartAll(String uid);
	public List<CartItem> cartList(String uid);
	public int increaseAmount(@Param("uid") String uid, @Param("pid") int pid);
	public int decreaseAmount(@Param("uid") String uid, @Param("pid") int pid);
	public CartItem cartListOne(@Param("uid") String uid, @Param("pid") int pid);
		
}
