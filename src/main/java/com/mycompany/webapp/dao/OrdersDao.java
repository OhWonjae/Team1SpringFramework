package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.mycompany.webapp.dto.Orders;


@Mapper
public interface OrdersDao {
	public int ordersInsert(Orders orders);
	public int updateStatus(Orders orders);
	public List<Orders> ordersList(String uid);
	public Orders orderSelectByOne(String order_id);
	
}
