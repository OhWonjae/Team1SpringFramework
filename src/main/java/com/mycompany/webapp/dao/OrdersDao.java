package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Orders;
import com.mycompany.webapp.dto.Pager;


@Mapper
public interface OrdersDao {
	public int ordersInsert(Orders orders);	//insert
	public int updateStatus(Orders orders);	//주문 취소 update
	public List<Orders> orderListByPage(@Param("user_id")String uid,@Param("pager")Pager pager );	//주문내역 select
	public Orders orderSelectByOne(String order_id);	//상세주문 select
	public int count(String uid);	//페이저 카운트
}
