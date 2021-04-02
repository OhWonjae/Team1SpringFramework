package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.dto.Orders;
import com.mycompany.webapp.dto.Product;

@Mapper
public interface OrdersDao {
	public int ordersInsert(Orders orders);
	public int ordersDelete(int ono);
	public Orders orderSelectByOne(String order_id);
	
}
