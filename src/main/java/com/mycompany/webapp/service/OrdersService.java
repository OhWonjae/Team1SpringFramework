package com.mycompany.webapp.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.OrderProductsDao;
import com.mycompany.webapp.dao.OrdersDao;
import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.dto.OrderProduct;
import com.mycompany.webapp.dto.Orders;

@Service
public class OrdersService {

	@Autowired
	OrdersDao ordersDao;

	@Autowired
	OrderProductsDao orderProductDao;



	//주문서 생성
	public void createOrders(Orders orders){

		ordersDao.ordersInsert(orders);

	}

	//주문서 삭제
	public void RemoveOrders(int oid) {
		ordersDao.ordersDelete(oid);
	}

	//주문서 읽어오기
	public Orders ReadOrders(int ono) {

		Orders orders=ordersDao.orderSelectByOne(ono);
		return orders;
	}

	public void creatOrderProduct(OrderProduct orderproduct) {
		orderProductDao.insert(orderproduct);
	}

	public List<OrderProduct> getorderList(){
		List<OrderProduct> orderproducts = orderProductDao.orderList();
		return orderproducts;
	}
	
	public List<CartItem> getOrderList(String uid){ 
		List<CartItem> list = orderProductDao.orderList(uid);
		return list;
	}

	public void updateStatus(OrderProduct orderproduct) {
		orderProductDao.updateStatus(orderproduct);
	}

}
