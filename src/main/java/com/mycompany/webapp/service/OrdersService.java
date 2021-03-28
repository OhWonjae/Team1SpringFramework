package com.mycompany.webapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.OrdersDao;
import com.mycompany.webapp.dto.Orders;

@Service
public class OrdersService {

		@Autowired
		OrdersDao ordersDao;
		
		
		
		//주문서 생성
		public void CreateOrders(Orders orders) {
			ordersDao.ordersInsert(orders);
		}
		
		//주문서 삭제
		public void RemoveOrders(int oid) {
			ordersDao.ordersDelete(oid);
		}
		
		//주문서 읽어오기
		public void ReadOrders(int oid,int uid) {
			ordersDao.orderSelectByAll(oid,uid);
		}
		
		
}
