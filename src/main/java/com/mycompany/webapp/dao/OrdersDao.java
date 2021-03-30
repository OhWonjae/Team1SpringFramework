package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Orders;

@Mapper
public interface OrdersDao {
	public int ordersInsert(Orders orders);
	public int ordersDelete(int ono);
	public Orders orderSelectByOne(int ono);
}
