package com.mycompany.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.OrderProductsDao;
import com.mycompany.webapp.dto.OrderProduct;



@Service
public class OrderProductsService {
	@Autowired
	OrderProductsDao orderProductDao;
	
	public void creatOrderProduct(OrderProduct orderproduct) {
		orderProductDao.insert(orderproduct);
	}
	
	public List<OrderProduct> getorderList(){
		List<OrderProduct> orderproducts = orderProductDao.orderList();
		return orderproducts;
	}
	
	public void updateStatus(OrderProduct orderproduct) {
		orderProductDao.updateStatus(orderproduct);
	}
} 
