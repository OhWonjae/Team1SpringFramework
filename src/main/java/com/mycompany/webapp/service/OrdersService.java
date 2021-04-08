package com.mycompany.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.dao.OrderProductsDao;
import com.mycompany.webapp.dao.OrdersDao;
import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.dto.OrderProduct;
import com.mycompany.webapp.dto.Orders;
import com.mycompany.webapp.dto.Pager;

@Service
public class OrdersService {

	@Autowired
	OrdersDao ordersDao;

	@Autowired
	OrderProductsDao orderProductDao;
	
	@Autowired
	CartDao cartDao;


	//orders관련 테이블
	//주문서 생성 orders insert
	public void createOrders(Orders orders){
		ordersDao.ordersInsert(orders);

	}

	//주문 취소(배송준비중->취소중)
	public void deleteOrder(Orders orders) {
		ordersDao.updateStatus(orders);
	}

	//상세주문 읽어오기(order)
	public Orders ReadOrders(String order_id) {

		Orders orders=ordersDao.orderSelectByOne(order_id);
		return orders;
	}
	
	
	//주문내역 읽어오기(history)
	public List<Orders> getOrdersList(String uid,Pager pager){ 
		List<Orders> list = ordersDao.orderListByPage(uid, pager);
		return list;
	}

	//페이저 사용하기 위한 카운터 
	public int getTotalRows(String uid) {
		int rows = ordersDao.count(uid);
		return rows;
	}


	//orderProduct 테이블 관련 orderProduct insert
	public void creatOrderProduct(OrderProduct orderproduct) {
		orderProductDao.orderProductList(orderproduct);
	}
	
	//orderProduct읽어오기
	public List<OrderProduct> getProductList(String oid){
		List<OrderProduct> plist = orderProductDao.productList(oid);
		return plist;
	}
	
	//카트 내역 읽어오기
	public List<CartItem> getOrderList(String uid){ 
		List<CartItem> list = cartDao.cartList(uid);
		return list;
	}


}
