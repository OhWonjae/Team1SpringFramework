package com.mycompany.webapp.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.CartItem;
import com.mycompany.webapp.dto.OrderProduct;

@Mapper
public interface OrderProductsDao {
	List<OrderProduct> orderList();
    int insert(OrderProduct orderproduct);
    int updateStatus(OrderProduct orderproduct);
    public List<CartItem> orderList(String uid);
    
}


