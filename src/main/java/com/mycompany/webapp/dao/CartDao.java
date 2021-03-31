package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Cart;


@Mapper
public interface CartDao {
	public int insertCart(int pid);
	public int deleteCart(@Param("uid") int uid, @Param("pid") int pid);
	public int deleteCartAll(int uid);
	public List<Cart> cartList(int uid);
	public int increaseAmount(@Param("uid") int uid, @Param("pid") int pid);
	public int decreaseAmount(@Param("uid") int uid, @Param("pid") int pid);
		
}
